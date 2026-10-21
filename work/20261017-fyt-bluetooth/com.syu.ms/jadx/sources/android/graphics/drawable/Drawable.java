package android.graphics.drawable;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Insets;
import android.graphics.NinePatch;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.Xfermode;
import android.os.BatteryManager;
import android.os.Trace;
import android.provider.CalendarContract;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.StateSet;
import android.util.TypedValue;
import android.util.Xml;
import i.a;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public abstract class Drawable {
    private static final Rect ZERO_BOUNDS_RECT = new Rect();
    private int mLayoutDirection;
    private int[] mStateSet = StateSet.WILD_CARD;
    private int mLevel = 0;
    private int mChangingConfigurations = 0;
    private Rect mBounds = ZERO_BOUNDS_RECT;
    private WeakReference<Callback> mCallback = null;
    private boolean mVisible = true;

    public interface Callback {
        void invalidateDrawable(Drawable drawable);

        void scheduleDrawable(Drawable drawable, Runnable runnable, long j2);

        void unscheduleDrawable(Drawable drawable, Runnable runnable);
    }

    public static abstract class ConstantState {
        public Bitmap getBitmap() {
            return null;
        }

        public abstract int getChangingConfigurations();

        public abstract Drawable newDrawable();

        public Drawable newDrawable(Resources resources) {
            return newDrawable();
        }
    }

    public static Drawable createFromPath(String str) {
        if (str == null) {
            return null;
        }
        Trace.traceBegin(Trace.TRACE_TAG_RESOURCES, str);
        try {
            Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(str);
            if (bitmapDecodeFile != null) {
                return drawableFromBitmap(null, bitmapDecodeFile, null, null, null, str);
            }
            return null;
        } finally {
            Trace.traceEnd(Trace.TRACE_TAG_RESOURCES);
        }
    }

    public static Drawable createFromResourceStream(Resources resources, TypedValue typedValue, InputStream inputStream, String str) {
        Trace.traceBegin(Trace.TRACE_TAG_RESOURCES, str != null ? str : "Unknown drawable");
        try {
            return createFromResourceStream(resources, typedValue, inputStream, str, null);
        } finally {
            Trace.traceEnd(Trace.TRACE_TAG_RESOURCES);
        }
    }

    public static Drawable createFromStream(InputStream inputStream, String str) {
        Trace.traceBegin(Trace.TRACE_TAG_RESOURCES, str != null ? str : "Unknown drawable");
        try {
            return createFromResourceStream(null, null, inputStream, str, null);
        } finally {
            Trace.traceEnd(Trace.TRACE_TAG_RESOURCES);
        }
    }

    public static Drawable createFromXml(Resources resources, XmlPullParser xmlPullParser) {
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
        Drawable drawableCreateFromXmlInner = createFromXmlInner(resources, xmlPullParser, attributeSetAsAttributeSet);
        if (drawableCreateFromXmlInner != null) {
            return drawableCreateFromXmlInner;
        }
        throw new RuntimeException("Unknown initial tag: " + xmlPullParser.getName());
    }

    public static Drawable createFromXmlInner(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException {
        NinePatchDrawable ninePatchDrawable;
        BitmapDrawable bitmapDrawable;
        Drawable insetDrawable;
        String name = xmlPullParser.getName();
        if (name.equals("selector")) {
            insetDrawable = new StateListDrawable();
        } else if (name.equals("level-list")) {
            insetDrawable = new LevelListDrawable();
        } else if (name.equals("layer-list")) {
            insetDrawable = new LayerDrawable();
        } else if (name.equals("transition")) {
            insetDrawable = new TransitionDrawable();
        } else if (name.equals(CalendarContract.ColorsColumns.COLOR)) {
            insetDrawable = new ColorDrawable();
        } else if (name.equals("shape")) {
            insetDrawable = new GradientDrawable();
        } else if (name.equals(BatteryManager.EXTRA_SCALE)) {
            insetDrawable = new ScaleDrawable();
        } else if (name.equals("clip")) {
            insetDrawable = new ClipDrawable();
        } else if (name.equals("rotate")) {
            insetDrawable = new RotateDrawable();
        } else if (name.equals("animated-rotate")) {
            insetDrawable = new AnimatedRotateDrawable();
        } else if (name.equals("animation-list")) {
            insetDrawable = new AnimationDrawable();
        } else if (name.equals("inset")) {
            insetDrawable = new InsetDrawable();
        } else if (name.equals("bitmap")) {
            bitmapDrawable = new BitmapDrawable(resources);
            if (resources != null) {
                insetDrawable = bitmapDrawable;
                bitmapDrawable.setTargetDensity(resources.getDisplayMetrics());
                insetDrawable = bitmapDrawable;
            }
        } else {
            if (!name.equals("nine-patch")) {
                throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": invalid drawable tag " + name);
            }
            ninePatchDrawable = new NinePatchDrawable();
            if (resources != null) {
                insetDrawable = ninePatchDrawable;
                ninePatchDrawable.setTargetDensity(resources.getDisplayMetrics());
                insetDrawable = ninePatchDrawable;
            }
        }
        insetDrawable = ninePatchDrawable;
        insetDrawable = bitmapDrawable;
        insetDrawable.inflate(resources, xmlPullParser, attributeSet);
        return insetDrawable;
    }

    private static Drawable drawableFromBitmap(Resources resources, Bitmap bitmap, byte[] bArr, Rect rect, Rect rect2, String str) {
        return bArr != null ? new NinePatchDrawable(resources, bitmap, bArr, rect, rect2, str) : new BitmapDrawable(resources, bitmap);
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

    public void clearColorFilter() {
        setColorFilter(null);
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

    public ConstantState getConstantState() {
        return null;
    }

    public Drawable getCurrent() {
        return this;
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

    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) {
        TypedArray typedArrayObtainAttributes = resources.obtainAttributes(attributeSet, a.Drawable);
        inflateWithAttributes(resources, xmlPullParser, typedArrayObtainAttributes, 0);
        typedArrayObtainAttributes.recycle();
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
        this.mCallback = new WeakReference<>(callback);
    }

    public void setChangingConfigurations(int i2) {
        this.mChangingConfigurations = i2;
    }

    public void setColorFilter(int i2, PorterDuff.Mode mode) {
        setColorFilter(new PorterDuffColorFilter(i2, mode));
    }

    public abstract void setColorFilter(ColorFilter colorFilter);

    public void setDither(boolean z2) {
    }

    public void setFilterBitmap(boolean z2) {
    }

    public void setLayoutDirection(int i2) {
        if (getLayoutDirection() != i2) {
            this.mLayoutDirection = i2;
        }
    }

    public final boolean setLevel(int i2) {
        if (this.mLevel == i2) {
            return false;
        }
        this.mLevel = i2;
        return onLevelChange(i2);
    }

    public boolean setState(int[] iArr) {
        if (Arrays.equals(this.mStateSet, iArr)) {
            return false;
        }
        this.mStateSet = iArr;
        return onStateChange(iArr);
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

    public final Rect copyBounds() {
        return new Rect(this.mBounds);
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
        options.inScreenDensity = resources != null ? resources.getDisplayMetrics().noncompatDensityDpi : DisplayMetrics.DENSITY_DEVICE;
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
        int[] layoutBounds = bitmapDecodeResourceStream.getLayoutBounds();
        return drawableFromBitmap(resources, bitmapDecodeResourceStream, bArr, rect, layoutBounds != null ? new Rect(layoutBounds[0], layoutBounds[1], layoutBounds[2], layoutBounds[3]) : null, str);
    }

    public void setBounds(Rect rect) {
        setBounds(rect.left, rect.top, rect.right, rect.bottom);
    }
}
