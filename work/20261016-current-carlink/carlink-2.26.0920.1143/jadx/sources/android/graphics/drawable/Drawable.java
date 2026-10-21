package android.graphics.drawable;

import android.accessibilityservice.c;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Insets;
import android.graphics.NinePatch;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.Xfermode;
import android.os.Trace;
import android.util.AttributeSet;
import android.util.StateSet;
import android.util.TypedValue;
import android.util.Xml;
import com.android.internal.R;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public abstract class Drawable {
    private int mLayoutDirection;
    private static final Rect ZERO_BOUNDS_RECT = new Rect();
    static final PorterDuff.Mode DEFAULT_TINT_MODE = PorterDuff.Mode.SRC_IN;
    private int[] mStateSet = StateSet.WILD_CARD;
    private int mLevel = 0;
    private int mChangingConfigurations = 0;
    private Rect mBounds = ZERO_BOUNDS_RECT;
    private WeakReference<Callback> mCallback = null;
    private boolean mVisible = true;
    protected int mSrcDensityOverride = 0;

    public interface Callback {
        void invalidateDrawable(Drawable drawable);

        void scheduleDrawable(Drawable drawable, Runnable runnable, long j2);

        void unscheduleDrawable(Drawable drawable, Runnable runnable);
    }

    public static abstract class ConstantState {
        public boolean canApplyTheme() {
            return false;
        }

        public abstract int getChangingConfigurations();

        public abstract Drawable newDrawable();

        public Drawable newDrawable(Resources resources) {
            return newDrawable();
        }

        public Drawable newDrawable(Resources resources, Resources.Theme theme) {
            return newDrawable(resources);
        }
    }

    public static Drawable createFromPath(String str) {
        if (str == null) {
            return null;
        }
        Trace.traceBegin(8192L, str);
        try {
            Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(str);
            if (bitmapDecodeFile != null) {
                return drawableFromBitmap(null, bitmapDecodeFile, null, null, null, str);
            }
            return null;
        } finally {
            Trace.traceEnd(8192L);
        }
    }

    public static Drawable createFromResourceStream(Resources resources, TypedValue typedValue, InputStream inputStream, String str) {
        Trace.traceBegin(8192L, str != null ? str : "Unknown drawable");
        try {
            return createFromResourceStream(resources, typedValue, inputStream, str, null);
        } finally {
            Trace.traceEnd(8192L);
        }
    }

    public static Drawable createFromStream(InputStream inputStream, String str) {
        Trace.traceBegin(8192L, str != null ? str : "Unknown drawable");
        try {
            return createFromResourceStream(null, null, inputStream, str);
        } finally {
            Trace.traceEnd(8192L);
        }
    }

    public static Drawable createFromXml(Resources resources, XmlPullParser xmlPullParser) {
        return createFromXml(resources, xmlPullParser, null);
    }

    public static Drawable createFromXmlForDensity(Resources resources, XmlPullParser xmlPullParser, int i2, Resources.Theme theme) throws XmlPullParserException, IOException {
        int next;
        AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xmlPullParser);
        do {
            next = xmlPullParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next != 2) {
            throw new XmlPullParserException("No start tag found");
        }
        Drawable drawableCreateFromXmlInnerForDensity = createFromXmlInnerForDensity(resources, xmlPullParser, attributeSetAsAttributeSet, i2, theme);
        if (drawableCreateFromXmlInnerForDensity != null) {
            return drawableCreateFromXmlInnerForDensity;
        }
        throw new RuntimeException(c.p(xmlPullParser, new StringBuilder("Unknown initial tag: ")));
    }

    public static Drawable createFromXmlInner(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) {
        return createFromXmlInner(resources, xmlPullParser, attributeSet, null);
    }

    public static Drawable createFromXmlInnerForDensity(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, int i2, Resources.Theme theme) {
        return resources.getDrawableInflater().inflateFromXmlForDensity(xmlPullParser.getName(), xmlPullParser, attributeSet, i2, theme);
    }

    private static Drawable drawableFromBitmap(Resources resources, Bitmap bitmap, byte[] bArr, Rect rect, Rect rect2, String str) {
        return bArr != null ? new NinePatchDrawable(resources, bitmap, bArr, rect, rect2, str) : new BitmapDrawable(resources, bitmap);
    }

    public static TypedArray obtainAttributes(Resources resources, Resources.Theme theme, AttributeSet attributeSet, int[] iArr) {
        return theme == null ? resources.obtainAttributes(attributeSet, iArr) : theme.obtainStyledAttributes(attributeSet, iArr, 0, 0);
    }

    public static PorterDuff.Mode parseTintMode(int i2, PorterDuff.Mode mode) {
        if (i2 == 3) {
            return PorterDuff.Mode.SRC_OVER;
        }
        if (i2 == 5) {
            return PorterDuff.Mode.SRC_IN;
        }
        if (i2 == 9) {
            return PorterDuff.Mode.SRC_ATOP;
        }
        switch (i2) {
            case 14:
                return PorterDuff.Mode.MULTIPLY;
            case 15:
                return PorterDuff.Mode.SCREEN;
            case 16:
                return PorterDuff.Mode.ADD;
            default:
                return mode;
        }
    }

    static int resolveDensity(Resources resources, int i2) {
        if (resources != null) {
            i2 = resources.getDisplayMetrics().densityDpi;
        }
        if (i2 == 0) {
            return 160;
        }
        return i2;
    }

    public static int resolveOpacity(int i2, int i3) {
        if (i2 == i3) {
            return i2;
        }
        if (i2 == 0 || i3 == 0) {
            return 0;
        }
        int i4 = -3;
        if (i2 != -3 && i3 != -3) {
            i4 = -2;
            if (i2 != -2 && i3 != -2) {
                return -1;
            }
        }
        return i4;
    }

    public static void rethrowAsRuntimeException(Exception exc) {
        RuntimeException runtimeException = new RuntimeException(exc);
        runtimeException.setStackTrace(new StackTraceElement[0]);
        throw runtimeException;
    }

    public static float scaleFromDensity(float f2, int i2, int i3) {
        return (f2 * i3) / i2;
    }

    public void applyTheme(Resources.Theme theme) {
    }

    public boolean canApplyTheme() {
        return false;
    }

    public void clearColorFilter() {
        setColorFilter(null);
    }

    public void clearMutated() {
    }

    public final void copyBounds(Rect rect) {
        rect.set(this.mBounds);
    }

    public abstract void draw(Canvas canvas);

    public int getAlpha() {
        return 255;
    }

    public final Rect getBounds() {
        if (this.mBounds == ZERO_BOUNDS_RECT) {
            this.mBounds = new Rect();
        }
        return this.mBounds;
    }

    public Callback getCallback() {
        WeakReference<Callback> weakReference = this.mCallback;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    public int getChangingConfigurations() {
        return this.mChangingConfigurations;
    }

    public ColorFilter getColorFilter() {
        return null;
    }

    public ConstantState getConstantState() {
        return null;
    }

    public Drawable getCurrent() {
        return this;
    }

    public Rect getDirtyBounds() {
        return getBounds();
    }

    public void getHotspotBounds(Rect rect) {
        rect.set(getBounds());
    }

    public int getIntrinsicHeight() {
        return -1;
    }

    public int getIntrinsicWidth() {
        return -1;
    }

    public int getLayoutDirection() {
        return this.mLayoutDirection;
    }

    public final int getLevel() {
        return this.mLevel;
    }

    public int getMinimumHeight() {
        int intrinsicHeight = getIntrinsicHeight();
        if (intrinsicHeight > 0) {
            return intrinsicHeight;
        }
        return 0;
    }

    public int getMinimumWidth() {
        int intrinsicWidth = getIntrinsicWidth();
        if (intrinsicWidth > 0) {
            return intrinsicWidth;
        }
        return 0;
    }

    public abstract int getOpacity();

    public Insets getOpticalInsets() {
        return Insets.NONE;
    }

    public void getOutline(Outline outline) {
        outline.setRect(getBounds());
        outline.setAlpha(0.0f);
    }

    public boolean getPadding(Rect rect) {
        rect.set(0, 0, 0, 0);
        return false;
    }

    public int[] getState() {
        return this.mStateSet;
    }

    public Region getTransparentRegion() {
        return null;
    }

    public boolean hasFocusStateSpecified() {
        return false;
    }

    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) {
        inflate(resources, xmlPullParser, attributeSet, null);
    }

    public void inflateWithAttributes(Resources resources, XmlPullParser xmlPullParser, TypedArray typedArray, int i2) {
        this.mVisible = typedArray.getBoolean(i2, this.mVisible);
    }

    public void invalidateSelf() {
        Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    public boolean isAutoMirrored() {
        return false;
    }

    public boolean isFilterBitmap() {
        return false;
    }

    public boolean isProjected() {
        return false;
    }

    public boolean isStateful() {
        return false;
    }

    public final boolean isVisible() {
        return this.mVisible;
    }

    public void jumpToCurrentState() {
    }

    public Drawable mutate() {
        return this;
    }

    public void onBoundsChange(Rect rect) {
    }

    public boolean onLayoutDirectionChanged(int i2) {
        return false;
    }

    public boolean onLevelChange(int i2) {
        return false;
    }

    public boolean onStateChange(int[] iArr) {
        return false;
    }

    public void scheduleSelf(Runnable runnable, long j2) {
        Callback callback = getCallback();
        if (callback != null) {
            callback.scheduleDrawable(this, runnable, j2);
        }
    }

    public abstract void setAlpha(int i2);

    public void setAutoMirrored(boolean z2) {
    }

    public void setBounds(int i2, int i3, int i4, int i5) {
        Rect rect = this.mBounds;
        if (rect == ZERO_BOUNDS_RECT) {
            rect = new Rect();
            this.mBounds = rect;
        }
        if (rect.left == i2 && rect.top == i3 && rect.right == i4 && rect.bottom == i5) {
            return;
        }
        if (!rect.isEmpty()) {
            invalidateSelf();
        }
        this.mBounds.set(i2, i3, i4, i5);
        onBoundsChange(this.mBounds);
    }

    public final void setCallback(Callback callback) {
        this.mCallback = callback != null ? new WeakReference<>(callback) : null;
    }

    public void setChangingConfigurations(int i2) {
        this.mChangingConfigurations = i2;
    }

    public void setColorFilter(int i2, PorterDuff.Mode mode) {
        if (getColorFilter() instanceof PorterDuffColorFilter) {
            PorterDuffColorFilter porterDuffColorFilter = (PorterDuffColorFilter) getColorFilter();
            if (porterDuffColorFilter.getColor() == i2 && porterDuffColorFilter.getMode() == mode) {
                return;
            }
        }
        setColorFilter(new PorterDuffColorFilter(i2, mode));
    }

    public abstract void setColorFilter(ColorFilter colorFilter);

    @Deprecated
    public void setDither(boolean z2) {
    }

    public void setFilterBitmap(boolean z2) {
    }

    public void setHotspot(float f2, float f3) {
    }

    public void setHotspotBounds(int i2, int i3, int i4, int i5) {
    }

    public final boolean setLayoutDirection(int i2) {
        if (this.mLayoutDirection == i2) {
            return false;
        }
        this.mLayoutDirection = i2;
        return onLayoutDirectionChanged(i2);
    }

    public final boolean setLevel(int i2) {
        if (this.mLevel == i2) {
            return false;
        }
        this.mLevel = i2;
        return onLevelChange(i2);
    }

    public final void setSrcDensityOverride(int i2) {
        this.mSrcDensityOverride = i2;
    }

    public boolean setState(int[] iArr) {
        if (Arrays.equals(this.mStateSet, iArr)) {
            return false;
        }
        this.mStateSet = iArr;
        return onStateChange(iArr);
    }

    public void setTint(int i2) {
        setTintList(ColorStateList.valueOf(i2));
    }

    public void setTintList(ColorStateList colorStateList) {
    }

    public void setTintMode(PorterDuff.Mode mode) {
    }

    public boolean setVisible(boolean z2, boolean z3) {
        boolean z4 = this.mVisible != z2;
        if (z4) {
            this.mVisible = z2;
            invalidateSelf();
        }
        return z4;
    }

    public void setXfermode(Xfermode xfermode) {
    }

    public void unscheduleSelf(Runnable runnable) {
        Callback callback = getCallback();
        if (callback != null) {
            callback.unscheduleDrawable(this, runnable);
        }
    }

    PorterDuffColorFilter updateTintFilter(PorterDuffColorFilter porterDuffColorFilter, ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        int colorForState = colorStateList.getColorForState(getState(), 0);
        if (porterDuffColorFilter == null) {
            return new PorterDuffColorFilter(colorForState, mode);
        }
        porterDuffColorFilter.setColor(colorForState);
        porterDuffColorFilter.setMode(mode);
        return porterDuffColorFilter;
    }

    public static Drawable createFromXml(Resources resources, XmlPullParser xmlPullParser, Resources.Theme theme) {
        return createFromXmlForDensity(resources, xmlPullParser, 0, theme);
    }

    public static Drawable createFromXmlInner(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        return createFromXmlInnerForDensity(resources, xmlPullParser, attributeSet, 0, theme);
    }

    public static int scaleFromDensity(int i2, int i3, int i4, boolean z2) {
        if (i2 == 0 || i3 == i4) {
            return i2;
        }
        float f2 = (i4 * i2) / i3;
        if (!z2) {
            return (int) f2;
        }
        int iRound = Math.round(f2);
        if (iRound != 0) {
            return iRound;
        }
        return i2 > 0 ? 1 : -1;
    }

    public final Rect copyBounds() {
        return new Rect(this.mBounds);
    }

    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        TypedArray typedArrayObtainAttributes = obtainAttributes(resources, theme, attributeSet, R.styleable.Drawable);
        this.mVisible = typedArrayObtainAttributes.getBoolean(0, this.mVisible);
        typedArrayObtainAttributes.recycle();
    }

    public static Drawable createFromResourceStream(Resources resources, TypedValue typedValue, InputStream inputStream, String str, BitmapFactory.Options options) {
        byte[] bArr;
        Rect rect;
        if (inputStream == null) {
            return null;
        }
        Rect rect2 = new Rect();
        if (options == null) {
            options = new BitmapFactory.Options();
        }
        options.inScreenDensity = resolveDensity(resources, 0);
        Bitmap bitmapDecodeResourceStream = BitmapFactory.decodeResourceStream(resources, typedValue, inputStream, rect2, options);
        if (bitmapDecodeResourceStream == null) {
            return null;
        }
        byte[] ninePatchChunk = bitmapDecodeResourceStream.getNinePatchChunk();
        if (ninePatchChunk == null || !NinePatch.isNinePatchChunk(ninePatchChunk)) {
            bArr = null;
            rect = null;
        } else {
            bArr = ninePatchChunk;
            rect = rect2;
        }
        Rect rect3 = new Rect();
        bitmapDecodeResourceStream.getOpticalInsets(rect3);
        return drawableFromBitmap(resources, bitmapDecodeResourceStream, bArr, rect, rect3, str);
    }

    public void setBounds(Rect rect) {
        setBounds(rect.left, rect.top, rect.right, rect.bottom);
    }
}
