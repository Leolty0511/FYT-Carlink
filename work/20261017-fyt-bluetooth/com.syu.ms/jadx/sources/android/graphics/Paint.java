package android.graphics;

import android.text.GraphicsOperations;
import android.text.SpannableString;
import android.text.SpannedString;
import android.text.TextUtils;
import java.util.Locale;
import java.util.Objects;

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
    public static final int DEFAULT_PAINT_FLAGS = 1280;
    public static final int DEV_KERN_TEXT_FLAG = 256;
    public static final int DIRECTION_LTR = 0;
    public static final int DIRECTION_RTL = 1;
    public static final int DITHER_FLAG = 4;
    public static final int EMBEDDED_BITMAP_TEXT_FLAG = 1024;
    public static final int FAKE_BOLD_TEXT_FLAG = 32;
    public static final int FILTER_BITMAP_FLAG = 2;
    public static final int HINTING_OFF = 0;
    public static final int HINTING_ON = 1;
    public static final int LCD_RENDER_TEXT_FLAG = 512;
    public static final int LINEAR_TEXT_FLAG = 64;
    public static final int STRIKE_THRU_TEXT_FLAG = 16;
    public static final int SUBPIXEL_TEXT_FLAG = 128;
    public static final int UNDERLINE_TEXT_FLAG = 8;
    public static final int VERTICAL_TEXT_FLAG = 4096;
    public boolean hasShadow;
    public int mBidiFlags;
    private ColorFilter mColorFilter;
    private float mCompatScaling;
    private boolean mHasCompatScaling;
    private float mInvCompatScaling;
    private Locale mLocale;
    private MaskFilter mMaskFilter;
    public int mNativePaint;
    private PathEffect mPathEffect;
    private Rasterizer mRasterizer;
    private Shader mShader;
    private Typeface mTypeface;
    private Xfermode mXfermode;
    public int shadowColor;
    public float shadowDx;
    public float shadowDy;
    public float shadowRadius;
    public static final Style[] sStyleArray = {Style.FILL, Style.STROKE, Style.FILL_AND_STROKE};
    public static final Cap[] sCapArray = {Cap.BUTT, Cap.ROUND, Cap.SQUARE};
    public static final Join[] sJoinArray = {Join.MITER, Join.ROUND, Join.BEVEL};
    public static final Align[] sAlignArray = {Align.LEFT, Align.CENTER, Align.RIGHT};

    public enum Align {
        LEFT(0),
        CENTER(1),
        RIGHT(2);

        public final int nativeInt;

        Align(int i2) {
            this.nativeInt = i2;
        }
    }

    public enum Cap {
        BUTT(0),
        ROUND(1),
        SQUARE(2);

        public final int nativeInt;

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

        public final int nativeInt;

        Join(int i2) {
            this.nativeInt = i2;
        }
    }

    public enum Style {
        FILL(0),
        STROKE(1),
        FILL_AND_STROKE(2);

        public final int nativeInt;

        Style(int i2) {
            this.nativeInt = i2;
        }
    }

    public Paint() {
        this(0);
    }

    private static native void finalizer(int i2);

    private native void nSetShadowLayer(float f2, float f3, float f4, int i2);

    private static native void nativeGetCharArrayBounds(int i2, char[] cArr, int i3, int i4, int i5, Rect rect);

    private static native void nativeGetStringBounds(int i2, String str, int i3, int i4, int i5, Rect rect);

    private native int native_breakText(String str, boolean z2, float f2, int i2, float[] fArr);

    private native int native_breakText(char[] cArr, int i2, int i3, float f2, int i4, float[] fArr);

    private static native boolean native_getFillPath(int i2, int i3, int i4);

    private static native int native_getStrokeCap(int i2);

    private static native int native_getStrokeJoin(int i2);

    private static native int native_getStyle(int i2);

    private static native int native_getTextAlign(int i2);

    private static native int native_getTextGlyphs(int i2, String str, int i3, int i4, int i5, int i6, int i7, char[] cArr);

    private static native void native_getTextPath(int i2, int i3, String str, int i4, int i5, float f2, float f3, int i6);

    private static native void native_getTextPath(int i2, int i3, char[] cArr, int i4, int i5, float f2, float f3, int i6);

    private static native float native_getTextRunAdvances(int i2, String str, int i3, int i4, int i5, int i6, int i7, float[] fArr, int i8);

    private static native float native_getTextRunAdvances(int i2, char[] cArr, int i3, int i4, int i5, int i6, int i7, float[] fArr, int i8);

    private native int native_getTextRunCursor(int i2, String str, int i3, int i4, int i5, int i6, int i7);

    private native int native_getTextRunCursor(int i2, char[] cArr, int i3, int i4, int i5, int i6, int i7);

    private static native int native_getTextWidths(int i2, String str, int i3, int i4, int i5, float[] fArr);

    private static native int native_getTextWidths(int i2, char[] cArr, int i3, int i4, int i5, float[] fArr);

    private static native int native_init();

    private static native int native_initWithPaint(int i2);

    private native float native_measureText(String str, int i2);

    private native float native_measureText(String str, int i2, int i3, int i4);

    private native float native_measureText(char[] cArr, int i2, int i3, int i4);

    private static native void native_reset(int i2);

    private static native void native_set(int i2, int i3);

    private static native int native_setColorFilter(int i2, int i3);

    private static native int native_setMaskFilter(int i2, int i3);

    private static native int native_setPathEffect(int i2, int i3);

    private static native int native_setRasterizer(int i2, int i3);

    private static native int native_setShader(int i2, int i3);

    private static native void native_setStrokeCap(int i2, int i3);

    private static native void native_setStrokeJoin(int i2, int i3);

    private static native void native_setStyle(int i2, int i3);

    private static native void native_setTextAlign(int i2, int i3);

    private static native void native_setTextLocale(int i2, String str);

    private static native int native_setTypeface(int i2, int i3);

    private static native int native_setXfermode(int i2, int i3);

    private void setClassVariablesFrom(Paint paint) {
        this.mColorFilter = paint.mColorFilter;
        this.mMaskFilter = paint.mMaskFilter;
        this.mPathEffect = paint.mPathEffect;
        this.mRasterizer = paint.mRasterizer;
        Shader shader = paint.mShader;
        if (shader != null) {
            this.mShader = shader.copy();
        } else {
            this.mShader = null;
        }
        this.mTypeface = paint.mTypeface;
        this.mXfermode = paint.mXfermode;
        this.mHasCompatScaling = paint.mHasCompatScaling;
        this.mCompatScaling = paint.mCompatScaling;
        this.mInvCompatScaling = paint.mInvCompatScaling;
        this.hasShadow = paint.hasShadow;
        this.shadowDx = paint.shadowDx;
        this.shadowDy = paint.shadowDy;
        this.shadowRadius = paint.shadowRadius;
        this.shadowColor = paint.shadowColor;
        this.mBidiFlags = paint.mBidiFlags;
        this.mLocale = paint.mLocale;
    }

    public native float ascent();

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
            return native_breakText(cArr, i2, i3, f2, this.mBidiFlags, fArr);
        }
        float textSize = getTextSize();
        setTextSize(this.mCompatScaling * textSize);
        int iNative_breakText = native_breakText(cArr, i2, i3, f2 * this.mCompatScaling, this.mBidiFlags, fArr);
        setTextSize(textSize);
        if (fArr != null) {
            fArr[0] = fArr[0] * this.mInvCompatScaling;
        }
        return iNative_breakText;
    }

    public void clearShadowLayer() {
        this.hasShadow = false;
        nSetShadowLayer(0.0f, 0.0f, 0.0f, 0);
    }

    public native float descent();

    public void finalize() throws Throwable {
        try {
            finalizer(this.mNativePaint);
        } finally {
            super.finalize();
        }
    }

    public native int getAlpha();

    public int getBidiFlags() {
        return this.mBidiFlags;
    }

    public native int getColor();

    public ColorFilter getColorFilter() {
        return this.mColorFilter;
    }

    public boolean getFillPath(Path path, Path path2) {
        return native_getFillPath(this.mNativePaint, path.ni(), path2.ni());
    }

    public native int getFlags();

    public native float getFontMetrics(FontMetrics fontMetrics);

    public FontMetrics getFontMetrics() {
        FontMetrics fontMetrics = new FontMetrics();
        getFontMetrics(fontMetrics);
        return fontMetrics;
    }

    public native int getFontMetricsInt(FontMetricsInt fontMetricsInt);

    public FontMetricsInt getFontMetricsInt() {
        FontMetricsInt fontMetricsInt = new FontMetricsInt();
        getFontMetricsInt(fontMetricsInt);
        return fontMetricsInt;
    }

    public float getFontSpacing() {
        return getFontMetrics(null);
    }

    public native int getHinting();

    public MaskFilter getMaskFilter() {
        return this.mMaskFilter;
    }

    public PathEffect getPathEffect() {
        return this.mPathEffect;
    }

    public Rasterizer getRasterizer() {
        return this.mRasterizer;
    }

    public Shader getShader() {
        return this.mShader;
    }

    public Cap getStrokeCap() {
        return sCapArray[native_getStrokeCap(this.mNativePaint)];
    }

    public Join getStrokeJoin() {
        return sJoinArray[native_getStrokeJoin(this.mNativePaint)];
    }

    public native float getStrokeMiter();

    public native float getStrokeWidth();

    public Style getStyle() {
        return sStyleArray[native_getStyle(this.mNativePaint)];
    }

    public Align getTextAlign() {
        return sAlignArray[native_getTextAlign(this.mNativePaint)];
    }

    public void getTextBounds(String str, int i2, int i3, Rect rect) {
        if ((i2 | i3 | (i3 - i2) | (str.length() - i3)) < 0) {
            throw new IndexOutOfBoundsException();
        }
        Objects.requireNonNull(rect, "need bounds Rect");
        nativeGetStringBounds(this.mNativePaint, str, i2, i3, this.mBidiFlags, rect);
    }

    public int getTextGlyphs(String str, int i2, int i3, int i4, int i5, int i6, char[] cArr) {
        if (str == null) {
            throw new IllegalArgumentException("text cannot be null");
        }
        if (i6 != 0 && i6 != 1) {
            throw new IllegalArgumentException("unknown flags value: " + i6);
        }
        int i7 = i3 - i2;
        if ((i2 | i3 | i4 | i5 | i7 | (i2 - i4) | (i5 - i3) | (str.length() - i3) | (str.length() - i5)) < 0) {
            throw new IndexOutOfBoundsException();
        }
        if (i7 <= cArr.length) {
            return native_getTextGlyphs(this.mNativePaint, str, i2, i3, i4, i5, i6, cArr);
        }
        throw new ArrayIndexOutOfBoundsException();
    }

    public Locale getTextLocale() {
        return this.mLocale;
    }

    public void getTextPath(char[] cArr, int i2, int i3, float f2, float f3, Path path) {
        if ((i2 | i3) < 0 || i2 + i3 > cArr.length) {
            throw new ArrayIndexOutOfBoundsException();
        }
        native_getTextPath(this.mNativePaint, this.mBidiFlags, cArr, i2, i3, f2, f3, path.ni());
    }

    public float getTextRunAdvances(char[] cArr, int i2, int i3, int i4, int i5, int i6, float[] fArr, int i7) {
        if (cArr == null) {
            throw new IllegalArgumentException("text cannot be null");
        }
        if (i6 != 0 && i6 != 1) {
            throw new IllegalArgumentException("unknown flags value: " + i6);
        }
        int i8 = i4 + i5;
        if ((i2 | i3 | i4 | i5 | i7 | (i2 - i4) | (i5 - i3) | (i8 - (i2 + i3)) | (cArr.length - i8) | (fArr == null ? 0 : fArr.length - (i7 + i3))) < 0) {
            throw new IndexOutOfBoundsException();
        }
        if (cArr.length == 0 || i3 == 0) {
            return 0.0f;
        }
        if (!this.mHasCompatScaling) {
            return native_getTextRunAdvances(this.mNativePaint, cArr, i2, i3, i4, i5, i6, fArr, i7);
        }
        float textSize = getTextSize();
        setTextSize(this.mCompatScaling * textSize);
        float fNative_getTextRunAdvances = native_getTextRunAdvances(this.mNativePaint, cArr, i2, i3, i4, i5, i6, fArr, i7);
        setTextSize(textSize);
        if (fArr != null) {
            int i9 = i7 + i3;
            for (int i10 = i7; i10 < i9; i10++) {
                fArr[i10] = fArr[i10] * this.mInvCompatScaling;
            }
        }
        return fNative_getTextRunAdvances * this.mInvCompatScaling;
    }

    public int getTextRunCursor(char[] cArr, int i2, int i3, int i4, int i5, int i6) {
        int i7 = i2 + i3;
        if ((i2 | i7 | i5 | (i7 - i2) | (i5 - i2) | (i7 - i5) | (cArr.length - i7) | i6) < 0 || i6 > 4) {
            throw new IndexOutOfBoundsException();
        }
        return native_getTextRunCursor(this.mNativePaint, cArr, i2, i3, i4, i5, i6);
    }

    public native float getTextScaleX();

    public native float getTextSize();

    public native float getTextSkewX();

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
            return native_getTextWidths(this.mNativePaint, cArr, i2, i3, this.mBidiFlags, fArr);
        }
        float textSize = getTextSize();
        setTextSize(this.mCompatScaling * textSize);
        int iNative_getTextWidths = native_getTextWidths(this.mNativePaint, cArr, i2, i3, this.mBidiFlags, fArr);
        setTextSize(textSize);
        for (int i4 = 0; i4 < iNative_getTextWidths; i4++) {
            fArr[i4] = fArr[i4] * this.mInvCompatScaling;
        }
        return iNative_getTextWidths;
    }

    public Typeface getTypeface() {
        return this.mTypeface;
    }

    public Xfermode getXfermode() {
        return this.mXfermode;
    }

    public final boolean isAntiAlias() {
        return (getFlags() & 1) != 0;
    }

    public final boolean isDither() {
        return (getFlags() & 4) != 0;
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
            float fNative_measureText = native_measureText(cArr, i2, i3, this.mBidiFlags);
            setTextSize(textSize);
            dCeil = Math.ceil(fNative_measureText * this.mInvCompatScaling);
        } else {
            dCeil = Math.ceil(native_measureText(cArr, i2, i3, this.mBidiFlags));
        }
        return (float) dCeil;
    }

    public void reset() {
        native_reset(this.mNativePaint);
        setFlags(1280);
        this.mColorFilter = null;
        this.mMaskFilter = null;
        this.mPathEffect = null;
        this.mRasterizer = null;
        this.mShader = null;
        this.mTypeface = null;
        this.mXfermode = null;
        this.mHasCompatScaling = false;
        this.mCompatScaling = 1.0f;
        this.mInvCompatScaling = 1.0f;
        this.hasShadow = false;
        this.shadowDx = 0.0f;
        this.shadowDy = 0.0f;
        this.shadowRadius = 0.0f;
        this.shadowColor = 0;
        this.mBidiFlags = 2;
        setTextLocale(Locale.getDefault());
    }

    public void set(Paint paint) {
        if (this != paint) {
            native_set(this.mNativePaint, paint.mNativePaint);
            setClassVariablesFrom(paint);
        }
    }

    public void setARGB(int i2, int i3, int i4, int i5) {
        setColor((i2 << 24) | (i3 << 16) | (i4 << 8) | i5);
    }

    public native void setAlpha(int i2);

    public native void setAntiAlias(boolean z2);

    public void setBidiFlags(int i2) {
        int i3 = i2 & 7;
        if (i3 <= 5) {
            this.mBidiFlags = i3;
            return;
        }
        throw new IllegalArgumentException("unknown bidi flag: " + i3);
    }

    public native void setColor(int i2);

    public ColorFilter setColorFilter(ColorFilter colorFilter) {
        native_setColorFilter(this.mNativePaint, colorFilter != null ? colorFilter.native_instance : 0);
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

    public native void setDither(boolean z2);

    public native void setFakeBoldText(boolean z2);

    public native void setFilterBitmap(boolean z2);

    public native void setFlags(int i2);

    public native void setHinting(int i2);

    public native void setLinearText(boolean z2);

    public MaskFilter setMaskFilter(MaskFilter maskFilter) {
        native_setMaskFilter(this.mNativePaint, maskFilter != null ? maskFilter.native_instance : 0);
        this.mMaskFilter = maskFilter;
        return maskFilter;
    }

    public PathEffect setPathEffect(PathEffect pathEffect) {
        native_setPathEffect(this.mNativePaint, pathEffect != null ? pathEffect.native_instance : 0);
        this.mPathEffect = pathEffect;
        return pathEffect;
    }

    public Rasterizer setRasterizer(Rasterizer rasterizer) {
        native_setRasterizer(this.mNativePaint, rasterizer != null ? rasterizer.native_instance : 0);
        this.mRasterizer = rasterizer;
        return rasterizer;
    }

    public Shader setShader(Shader shader) {
        native_setShader(this.mNativePaint, shader != null ? shader.native_instance : 0);
        this.mShader = shader;
        return shader;
    }

    public void setShadowLayer(float f2, float f3, float f4, int i2) {
        this.hasShadow = f2 > 0.0f;
        this.shadowRadius = f2;
        this.shadowDx = f3;
        this.shadowDy = f4;
        this.shadowColor = i2;
        nSetShadowLayer(f2, f3, f4, i2);
    }

    public native void setStrikeThruText(boolean z2);

    public void setStrokeCap(Cap cap) {
        native_setStrokeCap(this.mNativePaint, cap.nativeInt);
    }

    public void setStrokeJoin(Join join) {
        native_setStrokeJoin(this.mNativePaint, join.nativeInt);
    }

    public native void setStrokeMiter(float f2);

    public native void setStrokeWidth(float f2);

    public void setStyle(Style style) {
        native_setStyle(this.mNativePaint, style.nativeInt);
    }

    public native void setSubpixelText(boolean z2);

    public void setTextAlign(Align align) {
        native_setTextAlign(this.mNativePaint, align.nativeInt);
    }

    public void setTextLocale(Locale locale) {
        if (locale == null) {
            throw new IllegalArgumentException("locale cannot be null");
        }
        if (locale.equals(this.mLocale)) {
            return;
        }
        this.mLocale = locale;
        native_setTextLocale(this.mNativePaint, locale.toString());
    }

    public native void setTextScaleX(float f2);

    public native void setTextSize(float f2);

    public native void setTextSkewX(float f2);

    public Typeface setTypeface(Typeface typeface) {
        native_setTypeface(this.mNativePaint, typeface != null ? typeface.native_instance : 0);
        this.mTypeface = typeface;
        return typeface;
    }

    public native void setUnderlineText(boolean z2);

    public Xfermode setXfermode(Xfermode xfermode) {
        native_setXfermode(this.mNativePaint, xfermode != null ? xfermode.native_instance : 0);
        this.mXfermode = xfermode;
        return xfermode;
    }

    public Paint(int i2) {
        this.mBidiFlags = 2;
        this.mNativePaint = native_init();
        setFlags(i2 | 1280);
        this.mInvCompatScaling = 1.0f;
        this.mCompatScaling = 1.0f;
        setTextLocale(Locale.getDefault());
    }

    public void getTextPath(String str, int i2, int i3, float f2, float f3, Path path) {
        if ((i2 | i3 | (i3 - i2) | (str.length() - i3)) >= 0) {
            native_getTextPath(this.mNativePaint, this.mBidiFlags, str, i2, i3, f2, f3, path.ni());
            return;
        }
        throw new IndexOutOfBoundsException();
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
            return textRunCursor;
        }
        return getTextRunCursor(charSequence.toString(), i2, i3, i4, i5, i6);
    }

    public void getTextBounds(char[] cArr, int i2, int i3, Rect rect) {
        if ((i2 | i3) >= 0 && i2 + i3 <= cArr.length) {
            Objects.requireNonNull(rect, "need bounds Rect");
            nativeGetCharArrayBounds(this.mNativePaint, cArr, i2, i3, this.mBidiFlags, rect);
            return;
        }
        throw new ArrayIndexOutOfBoundsException();
    }

    public Paint(Paint paint) {
        this.mBidiFlags = 2;
        this.mNativePaint = native_initWithPaint(paint.mNativePaint);
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

    public int getTextRunCursor(String str, int i2, int i3, int i4, int i5, int i6) {
        if ((i2 | i3 | i5 | (i3 - i2) | (i5 - i2) | (i3 - i5) | (str.length() - i3) | i6) >= 0 && i6 <= 4) {
            return native_getTextRunCursor(this.mNativePaint, str, i2, i3, i4, i5, i6);
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
                    dCeil = Math.ceil(native_measureText(str, i2, i3, this.mBidiFlags));
                } else {
                    float textSize = getTextSize();
                    setTextSize(this.mCompatScaling * textSize);
                    float fNative_measureText = native_measureText(str, i2, i3, this.mBidiFlags);
                    setTextSize(textSize);
                    dCeil = Math.ceil(fNative_measureText * this.mInvCompatScaling);
                }
                return (float) dCeil;
            }
            throw new IndexOutOfBoundsException();
        }
        throw new IllegalArgumentException("text cannot be null");
    }

    public float getTextRunAdvances(CharSequence charSequence, int i2, int i3, int i4, int i5, int i6, float[] fArr, int i7) {
        if (charSequence == null) {
            throw new IllegalArgumentException("text cannot be null");
        }
        int i8 = i3 - i2;
        int i9 = i2 - i4;
        if ((i2 | i3 | i4 | i5 | i7 | i8 | i9 | (i5 - i3) | (charSequence.length() - i5) | (fArr == null ? 0 : (fArr.length - i7) - i8)) >= 0) {
            if (charSequence instanceof String) {
                return getTextRunAdvances((String) charSequence, i2, i3, i4, i5, i6, fArr, i7);
            }
            if (!(charSequence instanceof SpannedString) && !(charSequence instanceof SpannableString)) {
                if (charSequence instanceof GraphicsOperations) {
                    return ((GraphicsOperations) charSequence).getTextRunAdvances(i2, i3, i4, i5, i6, fArr, i7, this);
                }
                if (charSequence.length() == 0 || i3 == i2) {
                    return 0.0f;
                }
                int i10 = i5 - i4;
                char[] cArrObtain = TemporaryBuffer.obtain(i10);
                TextUtils.getChars(charSequence, i4, i5, cArrObtain, 0);
                float textRunAdvances = getTextRunAdvances(cArrObtain, i9, i8, 0, i10, i6, fArr, i7);
                TemporaryBuffer.recycle(cArrObtain);
                return textRunAdvances;
            }
            return getTextRunAdvances(charSequence.toString(), i2, i3, i4, i5, i6, fArr, i7);
        }
        throw new IndexOutOfBoundsException();
    }

    public int breakText(String str, boolean z2, float f2, float[] fArr) {
        if (str != null) {
            if (str.length() == 0) {
                return 0;
            }
            if (!this.mHasCompatScaling) {
                return native_breakText(str, z2, f2, this.mBidiFlags, fArr);
            }
            float textSize = getTextSize();
            setTextSize(this.mCompatScaling * textSize);
            int iNative_breakText = native_breakText(str, z2, f2 * this.mCompatScaling, this.mBidiFlags, fArr);
            setTextSize(textSize);
            if (fArr != null) {
                fArr[0] = fArr[0] * this.mInvCompatScaling;
            }
            return iNative_breakText;
        }
        throw new IllegalArgumentException("text cannot be null");
    }

    public float measureText(String str) {
        double dCeil;
        if (str != null) {
            if (str.length() == 0) {
                return 0.0f;
            }
            if (!this.mHasCompatScaling) {
                dCeil = Math.ceil(native_measureText(str, this.mBidiFlags));
            } else {
                float textSize = getTextSize();
                setTextSize(this.mCompatScaling * textSize);
                float fNative_measureText = native_measureText(str, this.mBidiFlags);
                setTextSize(textSize);
                dCeil = Math.ceil(fNative_measureText * this.mInvCompatScaling);
            }
            return (float) dCeil;
        }
        throw new IllegalArgumentException("text cannot be null");
    }

    public float getTextRunAdvances(String str, int i2, int i3, int i4, int i5, int i6, float[] fArr, int i7) {
        if (str == null) {
            throw new IllegalArgumentException("text cannot be null");
        }
        if (i6 != 0 && i6 != 1) {
            throw new IllegalArgumentException("unknown flags value: " + i6);
        }
        int i8 = i3 - i2;
        if ((i2 | i3 | i4 | i5 | i7 | i8 | (i2 - i4) | (i5 - i3) | (str.length() - i5) | (fArr == null ? 0 : (fArr.length - i7) - i8)) >= 0) {
            if (str.length() == 0 || i2 == i3) {
                return 0.0f;
            }
            if (!this.mHasCompatScaling) {
                return native_getTextRunAdvances(this.mNativePaint, str, i2, i3, i4, i5, i6, fArr, i7);
            }
            float textSize = getTextSize();
            setTextSize(this.mCompatScaling * textSize);
            float fNative_getTextRunAdvances = native_getTextRunAdvances(this.mNativePaint, str, i2, i3, i4, i5, i6, fArr, i7);
            setTextSize(textSize);
            if (fArr != null) {
                int i9 = i7 + i8;
                for (int i10 = i7; i10 < i9; i10++) {
                    fArr[i10] = fArr[i10] * this.mInvCompatScaling;
                }
            }
            return fNative_getTextRunAdvances * this.mInvCompatScaling;
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
                        return native_getTextWidths(this.mNativePaint, str, i2, i3, this.mBidiFlags, fArr);
                    }
                    float textSize = getTextSize();
                    setTextSize(this.mCompatScaling * textSize);
                    int iNative_getTextWidths = native_getTextWidths(this.mNativePaint, str, i2, i3, this.mBidiFlags, fArr);
                    setTextSize(textSize);
                    for (int i5 = 0; i5 < iNative_getTextWidths; i5++) {
                        fArr[i5] = fArr[i5] * this.mInvCompatScaling;
                    }
                    return iNative_getTextWidths;
                }
                throw new ArrayIndexOutOfBoundsException();
            }
            throw new IndexOutOfBoundsException();
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

    public int getTextWidths(String str, float[] fArr) {
        return getTextWidths(str, 0, str.length(), fArr);
    }
}
