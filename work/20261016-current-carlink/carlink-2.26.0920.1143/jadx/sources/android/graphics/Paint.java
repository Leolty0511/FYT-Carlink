package android.graphics;

import android.graphics.fonts.FontVariationAxis;
import android.os.LocaleList;
import android.text.GraphicsOperations;
import android.text.SpannableString;
import android.text.SpannedString;
import android.text.TextUtils;
import com.android.internal.annotations.GuardedBy;
import dalvik.annotation.optimization.CriticalNative;
import dalvik.annotation.optimization.FastNative;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Locale;
import libcore.util.NativeAllocationRegistry;

/* JADX INFO: loaded from: classes.dex */
public class Paint {
    public static final int ANTI_ALIAS_FLAG = 1;
    public static final int AUTO_HINTING_TEXT_FLAG = 2048;
    public static final int BIDI_DEFAULT_LTR = 2;
    public static final int BIDI_DEFAULT_RTL = 3;
    private static final int BIDI_FLAG_MASK = 7;
    public static final int BIDI_FORCE_LTR = 4;
    public static final int BIDI_FORCE_RTL = 5;
    public static final int BIDI_LTR = 0;
    private static final int BIDI_MAX_FLAG_VALUE = 5;
    public static final int BIDI_RTL = 1;
    public static final int CURSOR_AFTER = 0;
    public static final int CURSOR_AT = 4;
    public static final int CURSOR_AT_OR_AFTER = 1;
    public static final int CURSOR_AT_OR_BEFORE = 3;
    public static final int CURSOR_BEFORE = 2;
    private static final int CURSOR_OPT_MAX_VALUE = 4;
    public static final int DEV_KERN_TEXT_FLAG = 256;
    public static final int DIRECTION_LTR = 0;
    public static final int DIRECTION_RTL = 1;
    public static final int DITHER_FLAG = 4;
    public static final int EMBEDDED_BITMAP_TEXT_FLAG = 1024;
    public static final int FAKE_BOLD_TEXT_FLAG = 32;
    public static final int FILTER_BITMAP_FLAG = 2;
    static final int HIDDEN_DEFAULT_PAINT_FLAGS = 1280;
    public static final int HINTING_OFF = 0;
    public static final int HINTING_ON = 1;
    public static final int HYPHENEDIT_MASK_END_OF_LINE = 7;
    public static final int HYPHENEDIT_MASK_START_OF_LINE = 24;
    public static final int LCD_RENDER_TEXT_FLAG = 512;
    public static final int LINEAR_TEXT_FLAG = 64;
    private static final long NATIVE_PAINT_SIZE = 98;
    public static final int STRIKE_THRU_TEXT_FLAG = 16;
    public static final int SUBPIXEL_TEXT_FLAG = 128;
    public static final int UNDERLINE_TEXT_FLAG = 8;
    public static final int VERTICAL_TEXT_FLAG = 4096;
    public int mBidiFlags;
    private ColorFilter mColorFilter;
    private float mCompatScaling;
    private String mFontFeatureSettings;
    private String mFontVariationSettings;
    private boolean mHasCompatScaling;
    private float mInvCompatScaling;
    private LocaleList mLocales;
    private MaskFilter mMaskFilter;
    private long mNativeColorFilter;
    private long mNativePaint;
    private long mNativeShader;
    public long mNativeTypeface;
    private PathEffect mPathEffect;
    private Shader mShader;
    private int mShadowLayerColor;
    private float mShadowLayerDx;
    private float mShadowLayerDy;
    private float mShadowLayerRadius;
    private Typeface mTypeface;
    private Xfermode mXfermode;
    private static final Object sCacheLock = new Object();

    @GuardedBy("sCacheLock")
    private static final HashMap<String, Integer> sMinikinLangListIdCache = new HashMap<>();
    static final Style[] sStyleArray = {Style.FILL, Style.STROKE, Style.FILL_AND_STROKE};
    static final Cap[] sCapArray = {Cap.BUTT, Cap.ROUND, Cap.SQUARE};
    static final Join[] sJoinArray = {Join.MITER, Join.ROUND, Join.BEVEL};
    static final Align[] sAlignArray = {Align.LEFT, Align.CENTER, Align.RIGHT};

    public enum Align {
        LEFT(0),
        CENTER(1),
        RIGHT(2);

        final int nativeInt;

        Align(int i2) {
            this.nativeInt = i2;
        }
    }

    public enum Cap {
        BUTT(0),
        ROUND(1),
        SQUARE(2);

        final int nativeInt;

        Cap(int i2) {
            this.nativeInt = i2;
        }
    }

    public static class FontMetrics {
        public float ascent;
        public float bottom;
        public float descent;
        public float leading;
        public float top;
    }

    public static class FontMetricsInt {
        public int ascent;
        public int bottom;
        public int descent;
        public int leading;
        public int top;

        public String toString() {
            return "FontMetricsInt: top=" + this.top + " ascent=" + this.ascent + " descent=" + this.descent + " bottom=" + this.bottom + " leading=" + this.leading;
        }
    }

    public enum Join {
        MITER(0),
        ROUND(1),
        BEVEL(2);

        final int nativeInt;

        Join(int i2) {
            this.nativeInt = i2;
        }
    }

    public static class NoImagePreloadHolder {
        public static final NativeAllocationRegistry sRegistry = new NativeAllocationRegistry(Paint.class.getClassLoader(), Paint.nGetNativeFinalizer(), Paint.NATIVE_PAINT_SIZE);

        private NoImagePreloadHolder() {
        }
    }

    public enum Style {
        FILL(0),
        STROKE(1),
        FILL_AND_STROKE(2);

        final int nativeInt;

        Style(int i2) {
            this.nativeInt = i2;
        }
    }

    public Paint() {
        this(0);
    }

    @CriticalNative
    private static native float nAscent(long j2, long j3);

    private static native int nBreakText(long j2, long j3, String str, boolean z2, float f2, int i2, float[] fArr);

    private static native int nBreakText(long j2, long j3, char[] cArr, int i2, int i3, float f2, int i4, float[] fArr);

    @CriticalNative
    private static native float nDescent(long j2, long j3);

    @CriticalNative
    private static native int nGetAlpha(long j2);

    private static native void nGetCharArrayBounds(long j2, long j3, char[] cArr, int i2, int i3, int i4, Rect rect);

    @CriticalNative
    private static native int nGetColor(long j2);

    @CriticalNative
    private static native boolean nGetFillPath(long j2, long j3, long j4);

    @CriticalNative
    private static native int nGetFlags(long j2);

    @FastNative
    private static native float nGetFontMetrics(long j2, long j3, FontMetrics fontMetrics);

    @FastNative
    private static native int nGetFontMetricsInt(long j2, long j3, FontMetricsInt fontMetricsInt);

    @CriticalNative
    private static native int nGetHinting(long j2);

    @CriticalNative
    private static native int nGetHyphenEdit(long j2);

    @CriticalNative
    private static native float nGetLetterSpacing(long j2);

    /* JADX INFO: Access modifiers changed from: private */
    public static native long nGetNativeFinalizer();

    private static native int nGetOffsetForAdvance(long j2, long j3, char[] cArr, int i2, int i3, int i4, int i5, boolean z2, float f2);

    private static native float nGetRunAdvance(long j2, long j3, char[] cArr, int i2, int i3, int i4, int i5, boolean z2, int i6);

    @CriticalNative
    private static native float nGetStrikeThruPosition(long j2, long j3);

    @CriticalNative
    private static native float nGetStrikeThruThickness(long j2, long j3);

    private static native void nGetStringBounds(long j2, long j3, String str, int i2, int i3, int i4, Rect rect);

    @CriticalNative
    private static native int nGetStrokeCap(long j2);

    @CriticalNative
    private static native int nGetStrokeJoin(long j2);

    @CriticalNative
    private static native float nGetStrokeMiter(long j2);

    @CriticalNative
    private static native float nGetStrokeWidth(long j2);

    @CriticalNative
    private static native int nGetStyle(long j2);

    private static native float nGetTextAdvances(long j2, long j3, String str, int i2, int i3, int i4, int i5, int i6, float[] fArr, int i7);

    private static native float nGetTextAdvances(long j2, long j3, char[] cArr, int i2, int i3, int i4, int i5, int i6, float[] fArr, int i7);

    @CriticalNative
    private static native int nGetTextAlign(long j2);

    private static native void nGetTextPath(long j2, long j3, int i2, String str, int i3, int i4, float f2, float f3, long j4);

    private static native void nGetTextPath(long j2, long j3, int i2, char[] cArr, int i3, int i4, float f2, float f3, long j4);

    private native int nGetTextRunCursor(long j2, long j3, String str, int i2, int i3, int i4, int i5, int i6);

    private native int nGetTextRunCursor(long j2, long j3, char[] cArr, int i2, int i3, int i4, int i5, int i6);

    @CriticalNative
    private static native float nGetTextScaleX(long j2);

    @CriticalNative
    private static native float nGetTextSize(long j2);

    @CriticalNative
    private static native float nGetTextSkewX(long j2);

    @CriticalNative
    private static native float nGetUnderlinePosition(long j2, long j3);

    @CriticalNative
    private static native float nGetUnderlineThickness(long j2, long j3);

    @CriticalNative
    private static native float nGetWordSpacing(long j2);

    private static native boolean nHasGlyph(long j2, long j3, int i2, String str);

    @CriticalNative
    private static native boolean nHasShadowLayer(long j2);

    private static native long nInit();

    private static native long nInitWithPaint(long j2);

    @CriticalNative
    private static native boolean nIsElegantTextHeight(long j2);

    @CriticalNative
    private static native void nReset(long j2);

    @CriticalNative
    private static native void nSet(long j2, long j3);

    @CriticalNative
    private static native void nSetAlpha(long j2, int i2);

    @CriticalNative
    private static native void nSetAntiAlias(long j2, boolean z2);

    @CriticalNative
    private static native void nSetColor(long j2, int i2);

    @CriticalNative
    private static native long nSetColorFilter(long j2, long j3);

    @CriticalNative
    private static native void nSetDither(long j2, boolean z2);

    @CriticalNative
    private static native void nSetElegantTextHeight(long j2, boolean z2);

    @CriticalNative
    private static native void nSetFakeBoldText(long j2, boolean z2);

    @CriticalNative
    private static native void nSetFilterBitmap(long j2, boolean z2);

    @CriticalNative
    private static native void nSetFlags(long j2, int i2);

    @FastNative
    private static native void nSetFontFeatureSettings(long j2, String str);

    @CriticalNative
    private static native void nSetHinting(long j2, int i2);

    @CriticalNative
    private static native void nSetHyphenEdit(long j2, int i2);

    @CriticalNative
    private static native void nSetLetterSpacing(long j2, float f2);

    @CriticalNative
    private static native void nSetLinearText(long j2, boolean z2);

    @CriticalNative
    private static native long nSetMaskFilter(long j2, long j3);

    @CriticalNative
    private static native long nSetPathEffect(long j2, long j3);

    @CriticalNative
    private static native long nSetShader(long j2, long j3);

    @CriticalNative
    private static native void nSetShadowLayer(long j2, float f2, float f3, float f4, int i2);

    @CriticalNative
    private static native void nSetStrikeThruText(long j2, boolean z2);

    @CriticalNative
    private static native void nSetStrokeCap(long j2, int i2);

    @CriticalNative
    private static native void nSetStrokeJoin(long j2, int i2);

    @CriticalNative
    private static native void nSetStrokeMiter(long j2, float f2);

    @CriticalNative
    private static native void nSetStrokeWidth(long j2, float f2);

    @CriticalNative
    private static native void nSetStyle(long j2, int i2);

    @CriticalNative
    private static native void nSetSubpixelText(long j2, boolean z2);

    @CriticalNative
    private static native void nSetTextAlign(long j2, int i2);

    @FastNative
    private static native int nSetTextLocales(long j2, String str);

    @CriticalNative
    private static native void nSetTextLocalesByMinikinLangListId(long j2, int i2);

    @CriticalNative
    private static native void nSetTextScaleX(long j2, float f2);

    @CriticalNative
    private static native void nSetTextSize(long j2, float f2);

    @CriticalNative
    private static native void nSetTextSkewX(long j2, float f2);

    @CriticalNative
    private static native long nSetTypeface(long j2, long j3);

    @CriticalNative
    private static native void nSetUnderlineText(long j2, boolean z2);

    @CriticalNative
    private static native void nSetWordSpacing(long j2, float f2);

    @CriticalNative
    private static native void nSetXfermode(long j2, int i2);

    private void setClassVariablesFrom(Paint paint) {
        this.mColorFilter = paint.mColorFilter;
        this.mMaskFilter = paint.mMaskFilter;
        this.mPathEffect = paint.mPathEffect;
        this.mShader = paint.mShader;
        this.mNativeShader = paint.mNativeShader;
        this.mTypeface = paint.mTypeface;
        this.mNativeTypeface = paint.mNativeTypeface;
        this.mXfermode = paint.mXfermode;
        this.mHasCompatScaling = paint.mHasCompatScaling;
        this.mCompatScaling = paint.mCompatScaling;
        this.mInvCompatScaling = paint.mInvCompatScaling;
        this.mBidiFlags = paint.mBidiFlags;
        this.mLocales = paint.mLocales;
        this.mFontFeatureSettings = paint.mFontFeatureSettings;
        this.mFontVariationSettings = paint.mFontVariationSettings;
        this.mShadowLayerRadius = paint.mShadowLayerRadius;
        this.mShadowLayerDx = paint.mShadowLayerDx;
        this.mShadowLayerDy = paint.mShadowLayerDy;
        this.mShadowLayerColor = paint.mShadowLayerColor;
    }

    private void syncTextLocalesWithMinikin() {
        String languageTags = this.mLocales.toLanguageTags();
        synchronized (sCacheLock) {
            HashMap<String, Integer> map = sMinikinLangListIdCache;
            Integer num = map.get(languageTags);
            if (num == null) {
                map.put(languageTags, Integer.valueOf(nSetTextLocales(this.mNativePaint, languageTags)));
            } else {
                nSetTextLocalesByMinikinLangListId(this.mNativePaint, num.intValue());
            }
        }
    }

    public float ascent() {
        return nAscent(this.mNativePaint, this.mNativeTypeface);
    }

    public int breakText(char[] cArr, int i2, int i3, float f2, float[] fArr) {
        if (cArr == null) {
            throw new IllegalArgumentException("text cannot be null");
        }
        if (i2 < 0 || cArr.length - i2 < Math.abs(i3)) {
            throw new ArrayIndexOutOfBoundsException();
        }
        if (cArr.length == 0 || i3 == 0) {
            return 0;
        }
        if (!this.mHasCompatScaling) {
            return nBreakText(this.mNativePaint, this.mNativeTypeface, cArr, i2, i3, f2, this.mBidiFlags, fArr);
        }
        float textSize = getTextSize();
        setTextSize(this.mCompatScaling * textSize);
        int iNBreakText = nBreakText(this.mNativePaint, this.mNativeTypeface, cArr, i2, i3, f2 * this.mCompatScaling, this.mBidiFlags, fArr);
        setTextSize(textSize);
        if (fArr != null) {
            fArr[0] = fArr[0] * this.mInvCompatScaling;
        }
        return iNBreakText;
    }

    public void clearShadowLayer() {
        setShadowLayer(0.0f, 0.0f, 0.0f, 0);
    }

    public float descent() {
        return nDescent(this.mNativePaint, this.mNativeTypeface);
    }

    public int getAlpha() {
        return nGetAlpha(this.mNativePaint);
    }

    public int getBidiFlags() {
        return this.mBidiFlags;
    }

    public int getColor() {
        return nGetColor(this.mNativePaint);
    }

    public ColorFilter getColorFilter() {
        return this.mColorFilter;
    }

    public boolean getFillPath(Path path, Path path2) {
        return nGetFillPath(this.mNativePaint, path.readOnlyNI(), path2.mutateNI());
    }

    public int getFlags() {
        return nGetFlags(this.mNativePaint);
    }

    public String getFontFeatureSettings() {
        return this.mFontFeatureSettings;
    }

    public float getFontMetrics(FontMetrics fontMetrics) {
        return nGetFontMetrics(this.mNativePaint, this.mNativeTypeface, fontMetrics);
    }

    public int getFontMetricsInt(FontMetricsInt fontMetricsInt) {
        return nGetFontMetricsInt(this.mNativePaint, this.mNativeTypeface, fontMetricsInt);
    }

    public float getFontSpacing() {
        return getFontMetrics(null);
    }

    public String getFontVariationSettings() {
        return this.mFontVariationSettings;
    }

    public int getHinting() {
        return nGetHinting(this.mNativePaint);
    }

    public int getHyphenEdit() {
        return nGetHyphenEdit(this.mNativePaint);
    }

    public float getLetterSpacing() {
        return nGetLetterSpacing(this.mNativePaint);
    }

    public MaskFilter getMaskFilter() {
        return this.mMaskFilter;
    }

    public long getNativeInstance() {
        Shader shader = this.mShader;
        long nativeInstance = shader == null ? 0L : shader.getNativeInstance();
        if (nativeInstance != this.mNativeShader) {
            this.mNativeShader = nativeInstance;
            nSetShader(this.mNativePaint, nativeInstance);
        }
        ColorFilter colorFilter = this.mColorFilter;
        long nativeInstance2 = colorFilter != null ? colorFilter.getNativeInstance() : 0L;
        if (nativeInstance2 != this.mNativeColorFilter) {
            this.mNativeColorFilter = nativeInstance2;
            nSetColorFilter(this.mNativePaint, nativeInstance2);
        }
        return this.mNativePaint;
    }

    public int getOffsetForAdvance(char[] cArr, int i2, int i3, int i4, int i5, boolean z2, float f2) {
        if (cArr == null) {
            throw new IllegalArgumentException("text cannot be null");
        }
        if ((i4 | i2 | i3 | i5 | (i2 - i4) | (i3 - i2) | (i5 - i3) | (cArr.length - i5)) >= 0) {
            return nGetOffsetForAdvance(this.mNativePaint, this.mNativeTypeface, cArr, i2, i3, i4, i5, z2, f2);
        }
        throw new IndexOutOfBoundsException();
    }

    public PathEffect getPathEffect() {
        return this.mPathEffect;
    }

    @Deprecated
    public Rasterizer getRasterizer() {
        return null;
    }

    public float getRunAdvance(char[] cArr, int i2, int i3, int i4, int i5, boolean z2, int i6) {
        if (cArr == null) {
            throw new IllegalArgumentException("text cannot be null");
        }
        if ((i4 | i2 | i6 | i3 | i5 | (i2 - i4) | (i6 - i2) | (i3 - i6) | (i5 - i3) | (cArr.length - i5)) < 0) {
            throw new IndexOutOfBoundsException();
        }
        if (i3 == i2) {
            return 0.0f;
        }
        return nGetRunAdvance(this.mNativePaint, this.mNativeTypeface, cArr, i2, i3, i4, i5, z2, i6);
    }

    public Shader getShader() {
        return this.mShader;
    }

    public float getStrikeThruPosition() {
        return nGetStrikeThruPosition(this.mNativePaint, this.mNativeTypeface);
    }

    public float getStrikeThruThickness() {
        return nGetStrikeThruThickness(this.mNativePaint, this.mNativeTypeface);
    }

    public Cap getStrokeCap() {
        return sCapArray[nGetStrokeCap(this.mNativePaint)];
    }

    public Join getStrokeJoin() {
        return sJoinArray[nGetStrokeJoin(this.mNativePaint)];
    }

    public float getStrokeMiter() {
        return nGetStrokeMiter(this.mNativePaint);
    }

    public float getStrokeWidth() {
        return nGetStrokeWidth(this.mNativePaint);
    }

    public Style getStyle() {
        return sStyleArray[nGetStyle(this.mNativePaint)];
    }

    public Align getTextAlign() {
        return sAlignArray[nGetTextAlign(this.mNativePaint)];
    }

    public void getTextBounds(String str, int i2, int i3, Rect rect) {
        if ((i2 | i3 | (i3 - i2) | (str.length() - i3)) < 0) {
            throw new IndexOutOfBoundsException();
        }
        if (rect == null) {
            throw new NullPointerException("need bounds Rect");
        }
        nGetStringBounds(this.mNativePaint, this.mNativeTypeface, str, i2, i3, this.mBidiFlags, rect);
    }

    public Locale getTextLocale() {
        return this.mLocales.get(0);
    }

    public LocaleList getTextLocales() {
        return this.mLocales;
    }

    public void getTextPath(char[] cArr, int i2, int i3, float f2, float f3, Path path) {
        if ((i2 | i3) < 0 || i2 + i3 > cArr.length) {
            throw new ArrayIndexOutOfBoundsException();
        }
        nGetTextPath(this.mNativePaint, this.mNativeTypeface, this.mBidiFlags, cArr, i2, i3, f2, f3, path.mutateNI());
    }

    public float getTextRunAdvances(char[] cArr, int i2, int i3, int i4, int i5, boolean z2, float[] fArr, int i6) {
        if (cArr == null) {
            throw new IllegalArgumentException("text cannot be null");
        }
        int i7 = i4 + i5;
        if ((i2 | i3 | i4 | i5 | i6 | (i2 - i4) | (i5 - i3) | (i7 - (i2 + i3)) | (cArr.length - i7) | (fArr == null ? 0 : fArr.length - (i6 + i3))) < 0) {
            throw new IndexOutOfBoundsException();
        }
        if (cArr.length == 0 || i3 == 0) {
            return 0.0f;
        }
        if (!this.mHasCompatScaling) {
            return nGetTextAdvances(this.mNativePaint, this.mNativeTypeface, cArr, i2, i3, i4, i5, z2 ? 5 : 4, fArr, i6);
        }
        float textSize = getTextSize();
        setTextSize(this.mCompatScaling * textSize);
        float fNGetTextAdvances = nGetTextAdvances(this.mNativePaint, this.mNativeTypeface, cArr, i2, i3, i4, i5, z2 ? 5 : 4, fArr, i6);
        setTextSize(textSize);
        if (fArr != null) {
            int i8 = i6 + i3;
            for (int i9 = i6; i9 < i8; i9++) {
                fArr[i9] = fArr[i9] * this.mInvCompatScaling;
            }
        }
        return fNGetTextAdvances * this.mInvCompatScaling;
    }

    public int getTextRunCursor(char[] cArr, int i2, int i3, int i4, int i5, int i6) {
        int i7 = i2 + i3;
        if ((i2 | i7 | i5 | (i7 - i2) | (i5 - i2) | (i7 - i5) | (cArr.length - i7) | i6) < 0 || i6 > 4) {
            throw new IndexOutOfBoundsException();
        }
        return nGetTextRunCursor(this.mNativePaint, this.mNativeTypeface, cArr, i2, i3, i4, i5, i6);
    }

    public float getTextScaleX() {
        return nGetTextScaleX(this.mNativePaint);
    }

    public float getTextSize() {
        return nGetTextSize(this.mNativePaint);
    }

    public float getTextSkewX() {
        return nGetTextSkewX(this.mNativePaint);
    }

    public int getTextWidths(char[] cArr, int i2, int i3, float[] fArr) {
        if (cArr == null) {
            throw new IllegalArgumentException("text cannot be null");
        }
        if ((i2 | i3) < 0 || i2 + i3 > cArr.length || i3 > fArr.length) {
            throw new ArrayIndexOutOfBoundsException();
        }
        if (cArr.length == 0 || i3 == 0) {
            return 0;
        }
        if (!this.mHasCompatScaling) {
            nGetTextAdvances(this.mNativePaint, this.mNativeTypeface, cArr, i2, i3, i2, i3, this.mBidiFlags, fArr, 0);
            return i3;
        }
        float textSize = getTextSize();
        setTextSize(this.mCompatScaling * textSize);
        nGetTextAdvances(this.mNativePaint, this.mNativeTypeface, cArr, i2, i3, i2, i3, this.mBidiFlags, fArr, 0);
        setTextSize(textSize);
        for (int i4 = 0; i4 < i3; i4++) {
            fArr[i4] = fArr[i4] * this.mInvCompatScaling;
        }
        return i3;
    }

    public Typeface getTypeface() {
        return this.mTypeface;
    }

    public float getUnderlinePosition() {
        return nGetUnderlinePosition(this.mNativePaint, this.mNativeTypeface);
    }

    public float getUnderlineThickness() {
        return nGetUnderlineThickness(this.mNativePaint, this.mNativeTypeface);
    }

    public float getWordSpacing() {
        return nGetWordSpacing(this.mNativePaint);
    }

    public Xfermode getXfermode() {
        return this.mXfermode;
    }

    public boolean hasEqualAttributes(Paint paint) {
        return this.mColorFilter == paint.mColorFilter && this.mMaskFilter == paint.mMaskFilter && this.mPathEffect == paint.mPathEffect && this.mShader == paint.mShader && this.mTypeface == paint.mTypeface && this.mXfermode == paint.mXfermode && this.mHasCompatScaling == paint.mHasCompatScaling && this.mCompatScaling == paint.mCompatScaling && this.mInvCompatScaling == paint.mInvCompatScaling && this.mBidiFlags == paint.mBidiFlags && this.mLocales.equals(paint.mLocales) && TextUtils.equals(this.mFontFeatureSettings, paint.mFontFeatureSettings) && TextUtils.equals(this.mFontVariationSettings, paint.mFontVariationSettings) && this.mShadowLayerRadius == paint.mShadowLayerRadius && this.mShadowLayerDx == paint.mShadowLayerDx && this.mShadowLayerDy == paint.mShadowLayerDy && this.mShadowLayerColor == paint.mShadowLayerColor && getFlags() == paint.getFlags() && getHinting() == paint.getHinting() && getStyle() == paint.getStyle() && getColor() == paint.getColor() && getStrokeWidth() == paint.getStrokeWidth() && getStrokeMiter() == paint.getStrokeMiter() && getStrokeCap() == paint.getStrokeCap() && getStrokeJoin() == paint.getStrokeJoin() && getTextAlign() == paint.getTextAlign() && isElegantTextHeight() == paint.isElegantTextHeight() && getTextSize() == paint.getTextSize() && getTextScaleX() == paint.getTextScaleX() && getTextSkewX() == paint.getTextSkewX() && getLetterSpacing() == paint.getLetterSpacing() && getWordSpacing() == paint.getWordSpacing() && getHyphenEdit() == paint.getHyphenEdit();
    }

    public boolean hasGlyph(String str) {
        return nHasGlyph(this.mNativePaint, this.mNativeTypeface, this.mBidiFlags, str);
    }

    public boolean hasShadowLayer() {
        return nHasShadowLayer(this.mNativePaint);
    }

    public final boolean isAntiAlias() {
        return (getFlags() & 1) != 0;
    }

    public final boolean isDither() {
        return (getFlags() & 4) != 0;
    }

    public boolean isElegantTextHeight() {
        return nIsElegantTextHeight(this.mNativePaint);
    }

    public final boolean isFakeBoldText() {
        return (getFlags() & 32) != 0;
    }

    public final boolean isFilterBitmap() {
        return (getFlags() & 2) != 0;
    }

    public final boolean isLinearText() {
        return (getFlags() & 64) != 0;
    }

    public final boolean isStrikeThruText() {
        return (getFlags() & 16) != 0;
    }

    public final boolean isSubpixelText() {
        return (getFlags() & 128) != 0;
    }

    public final boolean isUnderlineText() {
        return (getFlags() & 8) != 0;
    }

    public float measureText(char[] cArr, int i2, int i3) {
        double dCeil;
        if (cArr == null) {
            throw new IllegalArgumentException("text cannot be null");
        }
        if ((i2 | i3) < 0 || i2 + i3 > cArr.length) {
            throw new ArrayIndexOutOfBoundsException();
        }
        if (cArr.length == 0 || i3 == 0) {
            return 0.0f;
        }
        if (this.mHasCompatScaling) {
            float textSize = getTextSize();
            setTextSize(this.mCompatScaling * textSize);
            float fNGetTextAdvances = nGetTextAdvances(this.mNativePaint, this.mNativeTypeface, cArr, i2, i3, i2, i3, this.mBidiFlags, (float[]) null, 0);
            setTextSize(textSize);
            dCeil = Math.ceil(fNGetTextAdvances * this.mInvCompatScaling);
        } else {
            dCeil = Math.ceil(nGetTextAdvances(this.mNativePaint, this.mNativeTypeface, cArr, i2, i3, i2, i3, this.mBidiFlags, (float[]) null, 0));
        }
        return (float) dCeil;
    }

    public void reset() {
        nReset(this.mNativePaint);
        setFlags(1280);
        this.mColorFilter = null;
        this.mMaskFilter = null;
        this.mPathEffect = null;
        this.mShader = null;
        this.mNativeShader = 0L;
        this.mTypeface = null;
        this.mNativeTypeface = 0L;
        this.mXfermode = null;
        this.mHasCompatScaling = false;
        this.mCompatScaling = 1.0f;
        this.mInvCompatScaling = 1.0f;
        this.mBidiFlags = 2;
        setTextLocales(LocaleList.getAdjustedDefault());
        setElegantTextHeight(false);
        this.mFontFeatureSettings = null;
        this.mFontVariationSettings = null;
        this.mShadowLayerRadius = 0.0f;
        this.mShadowLayerDx = 0.0f;
        this.mShadowLayerDy = 0.0f;
        this.mShadowLayerColor = 0;
    }

    public void set(Paint paint) {
        if (this != paint) {
            nSet(this.mNativePaint, paint.mNativePaint);
            setClassVariablesFrom(paint);
        }
    }

    public void setARGB(int i2, int i3, int i4, int i5) {
        setColor((i2 << 24) | (i3 << 16) | (i4 << 8) | i5);
    }

    public void setAlpha(int i2) {
        nSetAlpha(this.mNativePaint, i2);
    }

    public void setAntiAlias(boolean z2) {
        nSetAntiAlias(this.mNativePaint, z2);
    }

    public void setBidiFlags(int i2) {
        int i3 = i2 & 7;
        if (i3 > 5) {
            throw new IllegalArgumentException(android.accessibilityservice.c.d("unknown bidi flag: ", i3));
        }
        this.mBidiFlags = i3;
    }

    public void setColor(int i2) {
        nSetColor(this.mNativePaint, i2);
    }

    public ColorFilter setColorFilter(ColorFilter colorFilter) {
        if (this.mColorFilter != colorFilter) {
            this.mNativeColorFilter = -1L;
        }
        this.mColorFilter = colorFilter;
        return colorFilter;
    }

    public void setCompatibilityScaling(float f2) {
        if (f2 == 1.0d) {
            this.mHasCompatScaling = false;
            this.mInvCompatScaling = 1.0f;
            this.mCompatScaling = 1.0f;
        } else {
            this.mHasCompatScaling = true;
            this.mCompatScaling = f2;
            this.mInvCompatScaling = 1.0f / f2;
        }
    }

    public void setDither(boolean z2) {
        nSetDither(this.mNativePaint, z2);
    }

    public void setElegantTextHeight(boolean z2) {
        nSetElegantTextHeight(this.mNativePaint, z2);
    }

    public void setFakeBoldText(boolean z2) {
        nSetFakeBoldText(this.mNativePaint, z2);
    }

    public void setFilterBitmap(boolean z2) {
        nSetFilterBitmap(this.mNativePaint, z2);
    }

    public void setFlags(int i2) {
        nSetFlags(this.mNativePaint, i2);
    }

    public void setFontFeatureSettings(String str) {
        if (str != null && str.equals("")) {
            str = null;
        }
        if (str == null && this.mFontFeatureSettings == null) {
            return;
        }
        if (str == null || !str.equals(this.mFontFeatureSettings)) {
            this.mFontFeatureSettings = str;
            nSetFontFeatureSettings(this.mNativePaint, str);
        }
    }

    public boolean setFontVariationSettings(String str) {
        String strNullIfEmpty = TextUtils.nullIfEmpty(str);
        String str2 = this.mFontVariationSettings;
        if (strNullIfEmpty != str2 && (strNullIfEmpty == null || !strNullIfEmpty.equals(str2))) {
            if (strNullIfEmpty != null && strNullIfEmpty.length() != 0) {
                Typeface typeface = this.mTypeface;
                if (typeface == null) {
                    typeface = Typeface.DEFAULT;
                }
                FontVariationAxis[] fontVariationAxisArrFromFontVariationSettings = FontVariationAxis.fromFontVariationSettings(strNullIfEmpty);
                ArrayList arrayList = new ArrayList();
                for (FontVariationAxis fontVariationAxis : fontVariationAxisArrFromFontVariationSettings) {
                    if (typeface.isSupportedAxes(fontVariationAxis.getOpenTypeTagValue())) {
                        arrayList.add(fontVariationAxis);
                    }
                }
                if (arrayList.isEmpty()) {
                    return false;
                }
                this.mFontVariationSettings = strNullIfEmpty;
                setTypeface(Typeface.createFromTypefaceWithVariation(typeface, arrayList));
                return true;
            }
            this.mFontVariationSettings = null;
            setTypeface(Typeface.createFromTypefaceWithVariation(this.mTypeface, Collections.emptyList()));
        }
        return true;
    }

    public void setHinting(int i2) {
        nSetHinting(this.mNativePaint, i2);
    }

    public void setHyphenEdit(int i2) {
        nSetHyphenEdit(this.mNativePaint, i2);
    }

    public void setLetterSpacing(float f2) {
        nSetLetterSpacing(this.mNativePaint, f2);
    }

    public void setLinearText(boolean z2) {
        nSetLinearText(this.mNativePaint, z2);
    }

    public MaskFilter setMaskFilter(MaskFilter maskFilter) {
        nSetMaskFilter(this.mNativePaint, maskFilter != null ? maskFilter.native_instance : 0L);
        this.mMaskFilter = maskFilter;
        return maskFilter;
    }

    public PathEffect setPathEffect(PathEffect pathEffect) {
        nSetPathEffect(this.mNativePaint, pathEffect != null ? pathEffect.native_instance : 0L);
        this.mPathEffect = pathEffect;
        return pathEffect;
    }

    @Deprecated
    public Rasterizer setRasterizer(Rasterizer rasterizer) {
        return rasterizer;
    }

    public Shader setShader(Shader shader) {
        if (this.mShader != shader) {
            this.mNativeShader = -1L;
            nSetShader(this.mNativePaint, 0L);
        }
        this.mShader = shader;
        return shader;
    }

    public void setShadowLayer(float f2, float f3, float f4, int i2) {
        this.mShadowLayerRadius = f2;
        this.mShadowLayerDx = f3;
        this.mShadowLayerDy = f4;
        this.mShadowLayerColor = i2;
        nSetShadowLayer(this.mNativePaint, f2, f3, f4, i2);
    }

    public void setStrikeThruText(boolean z2) {
        nSetStrikeThruText(this.mNativePaint, z2);
    }

    public void setStrokeCap(Cap cap) {
        nSetStrokeCap(this.mNativePaint, cap.nativeInt);
    }

    public void setStrokeJoin(Join join) {
        nSetStrokeJoin(this.mNativePaint, join.nativeInt);
    }

    public void setStrokeMiter(float f2) {
        nSetStrokeMiter(this.mNativePaint, f2);
    }

    public void setStrokeWidth(float f2) {
        nSetStrokeWidth(this.mNativePaint, f2);
    }

    public void setStyle(Style style) {
        nSetStyle(this.mNativePaint, style.nativeInt);
    }

    public void setSubpixelText(boolean z2) {
        nSetSubpixelText(this.mNativePaint, z2);
    }

    public void setTextAlign(Align align) {
        nSetTextAlign(this.mNativePaint, align.nativeInt);
    }

    public void setTextLocale(Locale locale) {
        if (locale == null) {
            throw new IllegalArgumentException("locale cannot be null");
        }
        LocaleList localeList = this.mLocales;
        if (localeList != null && localeList.size() == 1 && locale.equals(this.mLocales.get(0))) {
            return;
        }
        this.mLocales = new LocaleList(locale);
        syncTextLocalesWithMinikin();
    }

    public void setTextLocales(LocaleList localeList) {
        if (localeList == null || localeList.isEmpty()) {
            throw new IllegalArgumentException("locales cannot be null or empty");
        }
        if (localeList.equals(this.mLocales)) {
            return;
        }
        this.mLocales = localeList;
        syncTextLocalesWithMinikin();
    }

    public void setTextScaleX(float f2) {
        nSetTextScaleX(this.mNativePaint, f2);
    }

    public void setTextSize(float f2) {
        nSetTextSize(this.mNativePaint, f2);
    }

    public void setTextSkewX(float f2) {
        nSetTextSkewX(this.mNativePaint, f2);
    }

    public Typeface setTypeface(Typeface typeface) {
        long j2 = typeface != null ? typeface.native_instance : 0L;
        nSetTypeface(this.mNativePaint, j2);
        this.mTypeface = typeface;
        this.mNativeTypeface = j2;
        return typeface;
    }

    public void setUnderlineText(boolean z2) {
        nSetUnderlineText(this.mNativePaint, z2);
    }

    public void setWordSpacing(float f2) {
        nSetWordSpacing(this.mNativePaint, f2);
    }

    public Xfermode setXfermode(Xfermode xfermode) {
        int i2 = xfermode != null ? xfermode.porterDuffMode : Xfermode.DEFAULT;
        Xfermode xfermode2 = this.mXfermode;
        if (i2 != (xfermode2 != null ? xfermode2.porterDuffMode : Xfermode.DEFAULT)) {
            nSetXfermode(this.mNativePaint, i2);
        }
        this.mXfermode = xfermode;
        return xfermode;
    }

    public Paint(int i2) {
        this.mBidiFlags = 2;
        long jNInit = nInit();
        this.mNativePaint = jNInit;
        NoImagePreloadHolder.sRegistry.registerNativeAllocation(this, jNInit);
        setFlags(i2 | 1280);
        this.mInvCompatScaling = 1.0f;
        this.mCompatScaling = 1.0f;
        setTextLocales(LocaleList.getAdjustedDefault());
    }

    public FontMetrics getFontMetrics() {
        FontMetrics fontMetrics = new FontMetrics();
        getFontMetrics(fontMetrics);
        return fontMetrics;
    }

    public FontMetricsInt getFontMetricsInt() {
        FontMetricsInt fontMetricsInt = new FontMetricsInt();
        getFontMetricsInt(fontMetricsInt);
        return fontMetricsInt;
    }

    public int getTextRunCursor(CharSequence charSequence, int i2, int i3, int i4, int i5, int i6) {
        if (!(charSequence instanceof String) && !(charSequence instanceof SpannedString) && !(charSequence instanceof SpannableString)) {
            if (charSequence instanceof GraphicsOperations) {
                return ((GraphicsOperations) charSequence).getTextRunCursor(i2, i3, i4, i5, i6, this);
            }
            int i7 = i3 - i2;
            char[] cArrObtain = TemporaryBuffer.obtain(i7);
            TextUtils.getChars(charSequence, i2, i3, cArrObtain, 0);
            int textRunCursor = getTextRunCursor(cArrObtain, 0, i7, i4, i5 - i2, i6);
            TemporaryBuffer.recycle(cArrObtain);
            if (textRunCursor == -1) {
                return -1;
            }
            return textRunCursor + i2;
        }
        return getTextRunCursor(charSequence.toString(), i2, i3, i4, i5, i6);
    }

    public int getOffsetForAdvance(CharSequence charSequence, int i2, int i3, int i4, int i5, boolean z2, float f2) {
        if (charSequence != null) {
            int i6 = i2 - i4;
            if ((i4 | i2 | i3 | i5 | i6 | (i3 - i2) | (i5 - i3) | (charSequence.length() - i5)) >= 0) {
                int i7 = i5 - i4;
                char[] cArrObtain = TemporaryBuffer.obtain(i7);
                TextUtils.getChars(charSequence, i4, i5, cArrObtain, 0);
                int offsetForAdvance = getOffsetForAdvance(cArrObtain, i6, i3 - i4, 0, i7, z2, f2) + i4;
                TemporaryBuffer.recycle(cArrObtain);
                return offsetForAdvance;
            }
            throw new IndexOutOfBoundsException();
        }
        throw new IllegalArgumentException("text cannot be null");
    }

    public float getRunAdvance(CharSequence charSequence, int i2, int i3, int i4, int i5, boolean z2, int i6) {
        if (charSequence != null) {
            int i7 = i2 - i4;
            if ((i4 | i2 | i6 | i3 | i5 | i7 | (i6 - i2) | (i3 - i6) | (i5 - i3) | (charSequence.length() - i5)) < 0) {
                throw new IndexOutOfBoundsException();
            }
            if (i3 == i2) {
                return 0.0f;
            }
            int i8 = i5 - i4;
            char[] cArrObtain = TemporaryBuffer.obtain(i8);
            TextUtils.getChars(charSequence, i4, i5, cArrObtain, 0);
            float runAdvance = getRunAdvance(cArrObtain, i7, i3 - i4, 0, i8, z2, i6 - i4);
            TemporaryBuffer.recycle(cArrObtain);
            return runAdvance;
        }
        throw new IllegalArgumentException("text cannot be null");
    }

    public void getTextBounds(CharSequence charSequence, int i2, int i3, Rect rect) {
        int i4 = i3 - i2;
        if ((i2 | i3 | i4 | (charSequence.length() - i3)) < 0) {
            throw new IndexOutOfBoundsException();
        }
        if (rect != null) {
            char[] cArrObtain = TemporaryBuffer.obtain(i4);
            TextUtils.getChars(charSequence, i2, i3, cArrObtain, 0);
            getTextBounds(cArrObtain, 0, i4, rect);
            TemporaryBuffer.recycle(cArrObtain);
            return;
        }
        throw new NullPointerException("need bounds Rect");
    }

    public void getTextPath(String str, int i2, int i3, float f2, float f3, Path path) {
        if ((i2 | i3 | (i3 - i2) | (str.length() - i3)) >= 0) {
            nGetTextPath(this.mNativePaint, this.mNativeTypeface, this.mBidiFlags, str, i2, i3, f2, f3, path.mutateNI());
            return;
        }
        throw new IndexOutOfBoundsException();
    }

    public Paint(Paint paint) {
        this.mBidiFlags = 2;
        long jNInitWithPaint = nInitWithPaint(paint.getNativeInstance());
        this.mNativePaint = jNInitWithPaint;
        NoImagePreloadHolder.sRegistry.registerNativeAllocation(this, jNInitWithPaint);
        setClassVariablesFrom(paint);
    }

    public int breakText(CharSequence charSequence, int i2, int i3, boolean z2, float f2, float[] fArr) {
        int iBreakText;
        if (charSequence != null) {
            int i4 = i3 - i2;
            if ((i2 | i3 | i4 | (charSequence.length() - i3)) >= 0) {
                if (charSequence.length() == 0 || i2 == i3) {
                    return 0;
                }
                if (i2 == 0 && (charSequence instanceof String) && i3 == charSequence.length()) {
                    return breakText((String) charSequence, z2, f2, fArr);
                }
                char[] cArrObtain = TemporaryBuffer.obtain(i4);
                TextUtils.getChars(charSequence, i2, i3, cArrObtain, 0);
                if (z2) {
                    iBreakText = breakText(cArrObtain, 0, i4, f2, fArr);
                } else {
                    iBreakText = breakText(cArrObtain, 0, -i4, f2, fArr);
                }
                TemporaryBuffer.recycle(cArrObtain);
                return iBreakText;
            }
            throw new IndexOutOfBoundsException();
        }
        throw new IllegalArgumentException("text cannot be null");
    }

    public void getTextBounds(char[] cArr, int i2, int i3, Rect rect) {
        if ((i2 | i3) < 0 || i2 + i3 > cArr.length) {
            throw new ArrayIndexOutOfBoundsException();
        }
        if (rect != null) {
            nGetCharArrayBounds(this.mNativePaint, this.mNativeTypeface, cArr, i2, i3, this.mBidiFlags, rect);
            return;
        }
        throw new NullPointerException("need bounds Rect");
    }

    public int getTextRunCursor(String str, int i2, int i3, int i4, int i5, int i6) {
        if ((i2 | i3 | i5 | (i3 - i2) | (i5 - i2) | (i3 - i5) | (str.length() - i3) | i6) >= 0 && i6 <= 4) {
            return nGetTextRunCursor(this.mNativePaint, this.mNativeTypeface, str, i2, i3, i4, i5, i6);
        }
        throw new IndexOutOfBoundsException();
    }

    public int getTextWidths(CharSequence charSequence, int i2, int i3, float[] fArr) {
        if (charSequence != null) {
            int i4 = i3 - i2;
            if ((i2 | i3 | i4 | (charSequence.length() - i3)) >= 0) {
                if (i4 <= fArr.length) {
                    if (charSequence.length() == 0 || i2 == i3) {
                        return 0;
                    }
                    if (charSequence instanceof String) {
                        return getTextWidths((String) charSequence, i2, i3, fArr);
                    }
                    if (!(charSequence instanceof SpannedString) && !(charSequence instanceof SpannableString)) {
                        if (charSequence instanceof GraphicsOperations) {
                            return ((GraphicsOperations) charSequence).getTextWidths(i2, i3, fArr, this);
                        }
                        char[] cArrObtain = TemporaryBuffer.obtain(i4);
                        TextUtils.getChars(charSequence, i2, i3, cArrObtain, 0);
                        int textWidths = getTextWidths(cArrObtain, 0, i4, fArr);
                        TemporaryBuffer.recycle(cArrObtain);
                        return textWidths;
                    }
                    return getTextWidths(charSequence.toString(), i2, i3, fArr);
                }
                throw new ArrayIndexOutOfBoundsException();
            }
            throw new IndexOutOfBoundsException();
        }
        throw new IllegalArgumentException("text cannot be null");
    }

    public float measureText(String str, int i2, int i3) {
        double dCeil;
        if (str != null) {
            if ((i2 | i3 | (i3 - i2) | (str.length() - i3)) >= 0) {
                if (str.length() == 0 || i2 == i3) {
                    return 0.0f;
                }
                if (!this.mHasCompatScaling) {
                    dCeil = Math.ceil(nGetTextAdvances(this.mNativePaint, this.mNativeTypeface, str, i2, i3, i2, i3, this.mBidiFlags, (float[]) null, 0));
                } else {
                    float textSize = getTextSize();
                    setTextSize(this.mCompatScaling * textSize);
                    float fNGetTextAdvances = nGetTextAdvances(this.mNativePaint, this.mNativeTypeface, str, i2, i3, i2, i3, this.mBidiFlags, (float[]) null, 0);
                    setTextSize(textSize);
                    dCeil = Math.ceil(fNGetTextAdvances * this.mInvCompatScaling);
                }
                return (float) dCeil;
            }
            throw new IndexOutOfBoundsException();
        }
        throw new IllegalArgumentException("text cannot be null");
    }

    public float getTextRunAdvances(CharSequence charSequence, int i2, int i3, int i4, int i5, boolean z2, float[] fArr, int i6) {
        if (charSequence == null) {
            throw new IllegalArgumentException("text cannot be null");
        }
        int i7 = i3 - i2;
        int i8 = i2 - i4;
        if ((i2 | i3 | i4 | i5 | i6 | i7 | i8 | (i5 - i3) | (charSequence.length() - i5) | (fArr == null ? 0 : (fArr.length - i6) - i7)) >= 0) {
            if (charSequence instanceof String) {
                return getTextRunAdvances((String) charSequence, i2, i3, i4, i5, z2, fArr, i6);
            }
            if (!(charSequence instanceof SpannedString) && !(charSequence instanceof SpannableString)) {
                if (charSequence instanceof GraphicsOperations) {
                    return ((GraphicsOperations) charSequence).getTextRunAdvances(i2, i3, i4, i5, z2, fArr, i6, this);
                }
                if (charSequence.length() == 0 || i3 == i2) {
                    return 0.0f;
                }
                int i9 = i5 - i4;
                char[] cArrObtain = TemporaryBuffer.obtain(i9);
                TextUtils.getChars(charSequence, i4, i5, cArrObtain, 0);
                float textRunAdvances = getTextRunAdvances(cArrObtain, i8, i7, 0, i9, z2, fArr, i6);
                TemporaryBuffer.recycle(cArrObtain);
                return textRunAdvances;
            }
            return getTextRunAdvances(charSequence.toString(), i2, i3, i4, i5, z2, fArr, i6);
        }
        throw new IndexOutOfBoundsException();
    }

    public int breakText(String str, boolean z2, float f2, float[] fArr) {
        if (str != null) {
            if (str.length() == 0) {
                return 0;
            }
            if (!this.mHasCompatScaling) {
                return nBreakText(this.mNativePaint, this.mNativeTypeface, str, z2, f2, this.mBidiFlags, fArr);
            }
            float textSize = getTextSize();
            setTextSize(this.mCompatScaling * textSize);
            int iNBreakText = nBreakText(this.mNativePaint, this.mNativeTypeface, str, z2, f2 * this.mCompatScaling, this.mBidiFlags, fArr);
            setTextSize(textSize);
            if (fArr != null) {
                fArr[0] = fArr[0] * this.mInvCompatScaling;
            }
            return iNBreakText;
        }
        throw new IllegalArgumentException("text cannot be null");
    }

    public float measureText(String str) {
        if (str != null) {
            return measureText(str, 0, str.length());
        }
        throw new IllegalArgumentException("text cannot be null");
    }

    public float measureText(CharSequence charSequence, int i2, int i3) {
        if (charSequence != null) {
            int i4 = i3 - i2;
            if ((i2 | i3 | i4 | (charSequence.length() - i3)) >= 0) {
                if (charSequence.length() == 0 || i2 == i3) {
                    return 0.0f;
                }
                if (charSequence instanceof String) {
                    return measureText((String) charSequence, i2, i3);
                }
                if (!(charSequence instanceof SpannedString) && !(charSequence instanceof SpannableString)) {
                    if (charSequence instanceof GraphicsOperations) {
                        return ((GraphicsOperations) charSequence).measureText(i2, i3, this);
                    }
                    char[] cArrObtain = TemporaryBuffer.obtain(i4);
                    TextUtils.getChars(charSequence, i2, i3, cArrObtain, 0);
                    float fMeasureText = measureText(cArrObtain, 0, i4);
                    TemporaryBuffer.recycle(cArrObtain);
                    return fMeasureText;
                }
                return measureText(charSequence.toString(), i2, i3);
            }
            throw new IndexOutOfBoundsException();
        }
        throw new IllegalArgumentException("text cannot be null");
    }

    public float getTextRunAdvances(String str, int i2, int i3, int i4, int i5, boolean z2, float[] fArr, int i6) {
        if (str == null) {
            throw new IllegalArgumentException("text cannot be null");
        }
        int i7 = i3 - i2;
        if ((i2 | i3 | i4 | i5 | i6 | i7 | (i2 - i4) | (i5 - i3) | (str.length() - i5) | (fArr == null ? 0 : (fArr.length - i6) - i7)) >= 0) {
            if (str.length() == 0 || i2 == i3) {
                return 0.0f;
            }
            if (!this.mHasCompatScaling) {
                return nGetTextAdvances(this.mNativePaint, this.mNativeTypeface, str, i2, i3, i4, i5, z2 ? 5 : 4, fArr, i6);
            }
            float textSize = getTextSize();
            setTextSize(this.mCompatScaling * textSize);
            float fNGetTextAdvances = nGetTextAdvances(this.mNativePaint, this.mNativeTypeface, str, i2, i3, i4, i5, z2 ? 5 : 4, fArr, i6);
            setTextSize(textSize);
            if (fArr != null) {
                int i8 = i6 + i7;
                for (int i9 = i6; i9 < i8; i9++) {
                    fArr[i9] = fArr[i9] * this.mInvCompatScaling;
                }
            }
            return fNGetTextAdvances * this.mInvCompatScaling;
        }
        throw new IndexOutOfBoundsException();
    }

    public int getTextWidths(String str, int i2, int i3, float[] fArr) {
        if (str != null) {
            int i4 = i3 - i2;
            if ((i2 | i3 | i4 | (str.length() - i3)) >= 0) {
                if (i4 <= fArr.length) {
                    if (str.length() == 0 || i2 == i3) {
                        return 0;
                    }
                    if (!this.mHasCompatScaling) {
                        nGetTextAdvances(this.mNativePaint, this.mNativeTypeface, str, i2, i3, i2, i3, this.mBidiFlags, fArr, 0);
                        return i4;
                    }
                    float textSize = getTextSize();
                    setTextSize(this.mCompatScaling * textSize);
                    nGetTextAdvances(this.mNativePaint, this.mNativeTypeface, str, i2, i3, i2, i3, this.mBidiFlags, fArr, 0);
                    setTextSize(textSize);
                    for (int i5 = 0; i5 < i4; i5++) {
                        fArr[i5] = fArr[i5] * this.mInvCompatScaling;
                    }
                    return i4;
                }
                throw new ArrayIndexOutOfBoundsException();
            }
            throw new IndexOutOfBoundsException();
        }
        throw new IllegalArgumentException("text cannot be null");
    }

    public int getTextWidths(String str, float[] fArr) {
        return getTextWidths(str, 0, str.length(), fArr);
    }
}
