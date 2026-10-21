package android.graphics.drawable;

import android.accessibilityservice.c;
import android.content.res.ColorStateList;
import android.content.res.ComplexColor;
import android.content.res.GradientColor;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Insets;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.Shader;
import android.os.Trace;
import android.util.ArrayMap;
import android.util.AttributeSet;
import android.util.FloatProperty;
import android.util.IntProperty;
import android.util.Log;
import android.util.PathParser;
import android.util.Property;
import android.util.Xml;
import androidx.constraintlayout.motion.widget.Key;
import com.android.internal.R;
import com.android.internal.util.VirtualRefBasePtr;
import dalvik.annotation.optimization.FastNative;
import dalvik.system.VMRuntime;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Stack;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class VectorDrawable extends Drawable {
    private static final String LOGTAG = "VectorDrawable";
    private static final String SHAPE_CLIP_PATH = "clip-path";
    private static final String SHAPE_GROUP = "group";
    private static final String SHAPE_PATH = "path";
    private static final String SHAPE_VECTOR = "vector";
    private ColorFilter mColorFilter;
    private boolean mDpiScaledDirty;
    private int mDpiScaledHeight;
    private Insets mDpiScaledInsets;
    private int mDpiScaledWidth;
    private boolean mMutated;
    private int mTargetDensity;
    private PorterDuffColorFilter mTintFilter;
    private final Rect mTmpBounds;
    private VectorDrawableState mVectorState;

    public static abstract class VObject {
        VirtualRefBasePtr mTreePtr = null;

        public abstract void applyTheme(Resources.Theme theme);

        public abstract boolean canApplyTheme();

        public abstract long getNativePtr();

        public abstract int getNativeSize();

        public abstract Property getProperty(String str);

        public abstract boolean hasFocusStateSpecified();

        public abstract void inflate(Resources resources, AttributeSet attributeSet, Resources.Theme theme);

        public abstract boolean isStateful();

        public boolean isTreeValid() {
            VirtualRefBasePtr virtualRefBasePtr = this.mTreePtr;
            return (virtualRefBasePtr == null || virtualRefBasePtr.get() == 0) ? false : true;
        }

        public abstract boolean onStateChange(int[] iArr);

        public void setTree(VirtualRefBasePtr virtualRefBasePtr) {
            this.mTreePtr = virtualRefBasePtr;
        }
    }

    public static class VectorDrawableState extends Drawable.ConstantState {
        static final Property<VectorDrawableState, Float> ALPHA = new FloatProperty<VectorDrawableState>("alpha") { // from class: android.graphics.drawable.VectorDrawable.VectorDrawableState.1
            @Override // android.util.Property
            public Float get(VectorDrawableState vectorDrawableState) {
                return Float.valueOf(vectorDrawableState.getAlpha());
            }

            @Override // android.util.FloatProperty
            public void setValue(VectorDrawableState vectorDrawableState, float f2) {
                vectorDrawableState.setAlpha(f2);
            }
        };
        private static final int NATIVE_ALLOCATION_SIZE = 316;
        private int mAllocationOfAllNodes;
        boolean mAutoMirrored;
        int mBaseHeight;
        int mBaseWidth;
        boolean mCacheDirty;
        boolean mCachedAutoMirrored;
        int[] mCachedThemeAttrs;
        ColorStateList mCachedTint;
        PorterDuff.Mode mCachedTintMode;
        int mChangingConfigurations;
        int mDensity;
        int mLastHWCachePixelCount;
        int mLastSWCachePixelCount;
        Insets mOpticalInsets;
        VGroup mRootGroup;
        String mRootName;
        int[] mThemeAttrs;
        ColorStateList mTint;
        PorterDuff.Mode mTintMode;
        final ArrayMap<String, Object> mVGTargetsMap;
        float mViewportWidth = 0.0f;
        float mViewportHeight = 0.0f;
        VirtualRefBasePtr mNativeTree = null;

        public VectorDrawableState(VectorDrawableState vectorDrawableState) {
            this.mTint = null;
            this.mTintMode = Drawable.DEFAULT_TINT_MODE;
            this.mBaseWidth = 0;
            this.mBaseHeight = 0;
            this.mOpticalInsets = Insets.NONE;
            this.mRootName = null;
            this.mDensity = 160;
            ArrayMap<String, Object> arrayMap = new ArrayMap<>();
            this.mVGTargetsMap = arrayMap;
            this.mLastSWCachePixelCount = 0;
            this.mLastHWCachePixelCount = 0;
            this.mAllocationOfAllNodes = 0;
            if (vectorDrawableState != null) {
                this.mThemeAttrs = vectorDrawableState.mThemeAttrs;
                this.mChangingConfigurations = vectorDrawableState.mChangingConfigurations;
                this.mTint = vectorDrawableState.mTint;
                this.mTintMode = vectorDrawableState.mTintMode;
                this.mAutoMirrored = vectorDrawableState.mAutoMirrored;
                VGroup vGroup = new VGroup(vectorDrawableState.mRootGroup, arrayMap);
                this.mRootGroup = vGroup;
                createNativeTreeFromCopy(vectorDrawableState, vGroup);
                this.mBaseWidth = vectorDrawableState.mBaseWidth;
                this.mBaseHeight = vectorDrawableState.mBaseHeight;
                setViewportSize(vectorDrawableState.mViewportWidth, vectorDrawableState.mViewportHeight);
                this.mOpticalInsets = vectorDrawableState.mOpticalInsets;
                this.mRootName = vectorDrawableState.mRootName;
                this.mDensity = vectorDrawableState.mDensity;
                String str = vectorDrawableState.mRootName;
                if (str != null) {
                    arrayMap.put(str, this);
                }
            } else {
                VGroup vGroup2 = new VGroup();
                this.mRootGroup = vGroup2;
                createNativeTree(vGroup2);
            }
            onTreeConstructionFinished();
        }

        private void applyDensityScaling(int i2, int i3) {
            this.mBaseWidth = Drawable.scaleFromDensity(this.mBaseWidth, i2, i3, true);
            this.mBaseHeight = Drawable.scaleFromDensity(this.mBaseHeight, i2, i3, true);
            this.mOpticalInsets = Insets.of(Drawable.scaleFromDensity(this.mOpticalInsets.left, i2, i3, false), Drawable.scaleFromDensity(this.mOpticalInsets.top, i2, i3, false), Drawable.scaleFromDensity(this.mOpticalInsets.right, i2, i3, false), Drawable.scaleFromDensity(this.mOpticalInsets.bottom, i2, i3, false));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void createNativeTree(VGroup vGroup) {
            this.mNativeTree = new VirtualRefBasePtr(VectorDrawable.nCreateTree(vGroup.mNativePtr));
            VMRuntime.getRuntime().registerNativeAllocation(316);
        }

        private void createNativeTreeFromCopy(VectorDrawableState vectorDrawableState, VGroup vGroup) {
            this.mNativeTree = new VirtualRefBasePtr(VectorDrawable.nCreateTreeFromCopy(vectorDrawableState.mNativeTree.get(), vGroup.mNativePtr));
            VMRuntime.getRuntime().registerNativeAllocation(316);
        }

        public void applyTheme(Resources.Theme theme) {
            this.mRootGroup.applyTheme(theme);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public boolean canApplyTheme() {
            VGroup vGroup;
            ColorStateList colorStateList;
            return this.mThemeAttrs != null || ((vGroup = this.mRootGroup) != null && vGroup.canApplyTheme()) || (((colorStateList = this.mTint) != null && colorStateList.canApplyTheme()) || super.canApplyTheme());
        }

        public boolean canReuseCache() {
            if (!this.mCacheDirty && this.mCachedThemeAttrs == this.mThemeAttrs && this.mCachedTint == this.mTint && this.mCachedTintMode == this.mTintMode && this.mCachedAutoMirrored == this.mAutoMirrored) {
                return true;
            }
            updateCacheStates();
            return false;
        }

        public void finalize() throws Throwable {
            super.finalize();
            VMRuntime.getRuntime().registerNativeFree(this.mAllocationOfAllNodes + 316 + (this.mLastSWCachePixelCount * 4) + (this.mLastHWCachePixelCount * 4));
        }

        public float getAlpha() {
            return VectorDrawable.nGetRootAlpha(this.mNativeTree.get());
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            int i2 = this.mChangingConfigurations;
            ColorStateList colorStateList = this.mTint;
            return i2 | (colorStateList != null ? colorStateList.getChangingConfigurations() : 0);
        }

        public long getNativeRenderer() {
            VirtualRefBasePtr virtualRefBasePtr = this.mNativeTree;
            if (virtualRefBasePtr == null) {
                return 0L;
            }
            return virtualRefBasePtr.get();
        }

        public Property getProperty(String str) {
            Property<VectorDrawableState, Float> property = ALPHA;
            if (property.getName().equals(str)) {
                return property;
            }
            return null;
        }

        public boolean hasFocusStateSpecified() {
            VGroup vGroup;
            ColorStateList colorStateList = this.mTint;
            return (colorStateList != null && colorStateList.hasFocusStateSpecified()) || ((vGroup = this.mRootGroup) != null && vGroup.hasFocusStateSpecified());
        }

        public boolean isStateful() {
            VGroup vGroup;
            ColorStateList colorStateList = this.mTint;
            return (colorStateList != null && colorStateList.isStateful()) || ((vGroup = this.mRootGroup) != null && vGroup.isStateful());
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return new VectorDrawable(this, null);
        }

        public boolean onStateChange(int[] iArr) {
            return this.mRootGroup.onStateChange(iArr);
        }

        public void onTreeConstructionFinished() {
            this.mRootGroup.setTree(this.mNativeTree);
            this.mAllocationOfAllNodes = this.mRootGroup.getNativeSize();
            VMRuntime.getRuntime().registerNativeAllocation(this.mAllocationOfAllNodes);
        }

        public boolean setAlpha(float f2) {
            return VectorDrawable.nSetRootAlpha(this.mNativeTree.get(), f2);
        }

        public final boolean setDensity(int i2) {
            int i3 = this.mDensity;
            if (i3 == i2) {
                return false;
            }
            this.mDensity = i2;
            applyDensityScaling(i3, i2);
            return true;
        }

        public void setViewportSize(float f2, float f3) {
            this.mViewportWidth = f2;
            this.mViewportHeight = f3;
            VectorDrawable.nSetRendererViewportSize(getNativeRenderer(), f2, f3);
        }

        public void updateCacheStates() {
            this.mCachedThemeAttrs = this.mThemeAttrs;
            this.mCachedTint = this.mTint;
            this.mCachedTintMode = this.mTintMode;
            this.mCachedAutoMirrored = this.mAutoMirrored;
            this.mCacheDirty = false;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return new VectorDrawable(this, resources);
        }
    }

    public static VectorDrawable create(Resources resources, int i2) {
        int next;
        try {
            XmlResourceParser xml = resources.getXml(i2);
            AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xml);
            do {
                next = xml.next();
                if (next == 2) {
                    break;
                }
            } while (next != 1);
            if (next != 2) {
                throw new XmlPullParserException("No start tag found");
            }
            VectorDrawable vectorDrawable = new VectorDrawable();
            vectorDrawable.inflate(resources, xml, attributeSetAsAttributeSet);
            return vectorDrawable;
        } catch (IOException e2) {
            Log.e(LOGTAG, "parser error", e2);
            return null;
        } catch (XmlPullParserException e3) {
            Log.e(LOGTAG, "parser error", e3);
            return null;
        }
    }

    private void inflateChildElements(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        VectorDrawableState vectorDrawableState = this.mVectorState;
        Stack stack = new Stack();
        stack.push(vectorDrawableState.mRootGroup);
        int eventType = xmlPullParser.getEventType();
        int depth = xmlPullParser.getDepth() + 1;
        boolean z2 = true;
        while (eventType != 1 && (xmlPullParser.getDepth() >= depth || eventType != 3)) {
            if (eventType == 2) {
                String name = xmlPullParser.getName();
                VGroup vGroup = (VGroup) stack.peek();
                if (SHAPE_PATH.equals(name)) {
                    VFullPath vFullPath = new VFullPath();
                    vFullPath.inflate(resources, attributeSet, theme);
                    vGroup.addChild(vFullPath);
                    if (vFullPath.getPathName() != null) {
                        vectorDrawableState.mVGTargetsMap.put(vFullPath.getPathName(), vFullPath);
                    }
                    vectorDrawableState.mChangingConfigurations = vFullPath.mChangingConfigurations | vectorDrawableState.mChangingConfigurations;
                    z2 = false;
                } else if (SHAPE_CLIP_PATH.equals(name)) {
                    VClipPath vClipPath = new VClipPath();
                    vClipPath.inflate(resources, attributeSet, theme);
                    vGroup.addChild(vClipPath);
                    if (vClipPath.getPathName() != null) {
                        vectorDrawableState.mVGTargetsMap.put(vClipPath.getPathName(), vClipPath);
                    }
                    vectorDrawableState.mChangingConfigurations = vClipPath.mChangingConfigurations | vectorDrawableState.mChangingConfigurations;
                } else if ("group".equals(name)) {
                    VGroup vGroup2 = new VGroup();
                    vGroup2.inflate(resources, attributeSet, theme);
                    vGroup.addChild(vGroup2);
                    stack.push(vGroup2);
                    if (vGroup2.getGroupName() != null) {
                        vectorDrawableState.mVGTargetsMap.put(vGroup2.getGroupName(), vGroup2);
                    }
                    vectorDrawableState.mChangingConfigurations = vGroup2.mChangingConfigurations | vectorDrawableState.mChangingConfigurations;
                }
            } else if (eventType == 3 && "group".equals(xmlPullParser.getName())) {
                stack.pop();
            }
            eventType = xmlPullParser.next();
        }
        if (z2) {
            StringBuffer stringBuffer = new StringBuffer();
            if (stringBuffer.length() > 0) {
                stringBuffer.append(" or ");
            }
            stringBuffer.append(SHAPE_PATH);
            throw new XmlPullParserException("no " + ((Object) stringBuffer) + " defined");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @FastNative
    public static native void nAddChild(long j2, long j3);

    /* JADX INFO: Access modifiers changed from: private */
    @FastNative
    public static native long nCreateClipPath();

    /* JADX INFO: Access modifiers changed from: private */
    @FastNative
    public static native long nCreateClipPath(long j2);

    /* JADX INFO: Access modifiers changed from: private */
    @FastNative
    public static native long nCreateFullPath();

    /* JADX INFO: Access modifiers changed from: private */
    @FastNative
    public static native long nCreateFullPath(long j2);

    /* JADX INFO: Access modifiers changed from: private */
    @FastNative
    public static native long nCreateGroup();

    /* JADX INFO: Access modifiers changed from: private */
    @FastNative
    public static native long nCreateGroup(long j2);

    /* JADX INFO: Access modifiers changed from: private */
    @FastNative
    public static native long nCreateTree(long j2);

    /* JADX INFO: Access modifiers changed from: private */
    @FastNative
    public static native long nCreateTreeFromCopy(long j2, long j3);

    private static native int nDraw(long j2, long j3, long j4, Rect rect, boolean z2, boolean z3);

    /* JADX INFO: Access modifiers changed from: private */
    @FastNative
    public static native float nGetFillAlpha(long j2);

    /* JADX INFO: Access modifiers changed from: private */
    @FastNative
    public static native int nGetFillColor(long j2);

    /* JADX INFO: Access modifiers changed from: private */
    public static native boolean nGetFullPathProperties(long j2, byte[] bArr, int i2);

    /* JADX INFO: Access modifiers changed from: private */
    public static native boolean nGetGroupProperties(long j2, float[] fArr, int i2);

    /* JADX INFO: Access modifiers changed from: private */
    @FastNative
    public static native float nGetPivotX(long j2);

    /* JADX INFO: Access modifiers changed from: private */
    @FastNative
    public static native float nGetPivotY(long j2);

    /* JADX INFO: Access modifiers changed from: private */
    @FastNative
    public static native float nGetRootAlpha(long j2);

    /* JADX INFO: Access modifiers changed from: private */
    @FastNative
    public static native float nGetRotation(long j2);

    /* JADX INFO: Access modifiers changed from: private */
    @FastNative
    public static native float nGetScaleX(long j2);

    /* JADX INFO: Access modifiers changed from: private */
    @FastNative
    public static native float nGetScaleY(long j2);

    /* JADX INFO: Access modifiers changed from: private */
    @FastNative
    public static native float nGetStrokeAlpha(long j2);

    /* JADX INFO: Access modifiers changed from: private */
    @FastNative
    public static native int nGetStrokeColor(long j2);

    /* JADX INFO: Access modifiers changed from: private */
    @FastNative
    public static native float nGetStrokeWidth(long j2);

    /* JADX INFO: Access modifiers changed from: private */
    @FastNative
    public static native float nGetTranslateX(long j2);

    /* JADX INFO: Access modifiers changed from: private */
    @FastNative
    public static native float nGetTranslateY(long j2);

    /* JADX INFO: Access modifiers changed from: private */
    @FastNative
    public static native float nGetTrimPathEnd(long j2);

    /* JADX INFO: Access modifiers changed from: private */
    @FastNative
    public static native float nGetTrimPathOffset(long j2);

    /* JADX INFO: Access modifiers changed from: private */
    @FastNative
    public static native float nGetTrimPathStart(long j2);

    @FastNative
    private static native void nSetAllowCaching(long j2, boolean z2);

    /* JADX INFO: Access modifiers changed from: private */
    @FastNative
    public static native void nSetFillAlpha(long j2, float f2);

    /* JADX INFO: Access modifiers changed from: private */
    @FastNative
    public static native void nSetFillColor(long j2, int i2);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nSetName(long j2, String str);

    /* JADX INFO: Access modifiers changed from: private */
    @FastNative
    public static native void nSetPathData(long j2, long j3);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nSetPathString(long j2, String str, int i2);

    /* JADX INFO: Access modifiers changed from: private */
    @FastNative
    public static native void nSetPivotX(long j2, float f2);

    /* JADX INFO: Access modifiers changed from: private */
    @FastNative
    public static native void nSetPivotY(long j2, float f2);

    /* JADX INFO: Access modifiers changed from: private */
    @FastNative
    public static native void nSetRendererViewportSize(long j2, float f2, float f3);

    /* JADX INFO: Access modifiers changed from: private */
    @FastNative
    public static native boolean nSetRootAlpha(long j2, float f2);

    /* JADX INFO: Access modifiers changed from: private */
    @FastNative
    public static native void nSetRotation(long j2, float f2);

    /* JADX INFO: Access modifiers changed from: private */
    @FastNative
    public static native void nSetScaleX(long j2, float f2);

    /* JADX INFO: Access modifiers changed from: private */
    @FastNative
    public static native void nSetScaleY(long j2, float f2);

    /* JADX INFO: Access modifiers changed from: private */
    @FastNative
    public static native void nSetStrokeAlpha(long j2, float f2);

    /* JADX INFO: Access modifiers changed from: private */
    @FastNative
    public static native void nSetStrokeColor(long j2, int i2);

    /* JADX INFO: Access modifiers changed from: private */
    @FastNative
    public static native void nSetStrokeWidth(long j2, float f2);

    /* JADX INFO: Access modifiers changed from: private */
    @FastNative
    public static native void nSetTranslateX(long j2, float f2);

    /* JADX INFO: Access modifiers changed from: private */
    @FastNative
    public static native void nSetTranslateY(long j2, float f2);

    /* JADX INFO: Access modifiers changed from: private */
    @FastNative
    public static native void nSetTrimPathEnd(long j2, float f2);

    /* JADX INFO: Access modifiers changed from: private */
    @FastNative
    public static native void nSetTrimPathOffset(long j2, float f2);

    /* JADX INFO: Access modifiers changed from: private */
    @FastNative
    public static native void nSetTrimPathStart(long j2, float f2);

    /* JADX INFO: Access modifiers changed from: private */
    @FastNative
    public static native void nUpdateFullPathFillGradient(long j2, long j3);

    /* JADX INFO: Access modifiers changed from: private */
    @FastNative
    public static native void nUpdateFullPathProperties(long j2, float f2, int i2, float f3, int i3, float f4, float f5, float f6, float f7, float f8, int i4, int i5, int i6);

    /* JADX INFO: Access modifiers changed from: private */
    @FastNative
    public static native void nUpdateFullPathStrokeGradient(long j2, long j3);

    /* JADX INFO: Access modifiers changed from: private */
    @FastNative
    public static native void nUpdateGroupProperties(long j2, float f2, float f3, float f4, float f5, float f6, float f7, float f8);

    private boolean needMirroring() {
        return isAutoMirrored() && getLayoutDirection() == 1;
    }

    private void updateLocalState(Resources resources) {
        int iResolveDensity = Drawable.resolveDensity(resources, this.mVectorState.mDensity);
        if (this.mTargetDensity != iResolveDensity) {
            this.mTargetDensity = iResolveDensity;
            this.mDpiScaledDirty = true;
        }
        PorterDuffColorFilter porterDuffColorFilter = this.mTintFilter;
        VectorDrawableState vectorDrawableState = this.mVectorState;
        this.mTintFilter = updateTintFilter(porterDuffColorFilter, vectorDrawableState.mTint, vectorDrawableState.mTintMode);
    }

    private void updateStateFromTypedArray(TypedArray typedArray) throws XmlPullParserException {
        VectorDrawableState vectorDrawableState = this.mVectorState;
        vectorDrawableState.mChangingConfigurations |= typedArray.getChangingConfigurations();
        vectorDrawableState.mThemeAttrs = typedArray.extractThemeAttrs();
        int i2 = typedArray.getInt(6, -1);
        if (i2 != -1) {
            vectorDrawableState.mTintMode = Drawable.parseTintMode(i2, PorterDuff.Mode.SRC_IN);
        }
        ColorStateList colorStateList = typedArray.getColorStateList(1);
        if (colorStateList != null) {
            vectorDrawableState.mTint = colorStateList;
        }
        vectorDrawableState.mAutoMirrored = typedArray.getBoolean(5, vectorDrawableState.mAutoMirrored);
        vectorDrawableState.setViewportSize(typedArray.getFloat(7, vectorDrawableState.mViewportWidth), typedArray.getFloat(8, vectorDrawableState.mViewportHeight));
        if (vectorDrawableState.mViewportWidth <= 0.0f) {
            throw new XmlPullParserException(c.c(typedArray, new StringBuilder(), "<vector> tag requires viewportWidth > 0"));
        }
        if (vectorDrawableState.mViewportHeight <= 0.0f) {
            throw new XmlPullParserException(c.c(typedArray, new StringBuilder(), "<vector> tag requires viewportHeight > 0"));
        }
        vectorDrawableState.mBaseWidth = typedArray.getDimensionPixelSize(3, vectorDrawableState.mBaseWidth);
        int dimensionPixelSize = typedArray.getDimensionPixelSize(2, vectorDrawableState.mBaseHeight);
        vectorDrawableState.mBaseHeight = dimensionPixelSize;
        if (vectorDrawableState.mBaseWidth <= 0) {
            throw new XmlPullParserException(c.c(typedArray, new StringBuilder(), "<vector> tag requires width > 0"));
        }
        if (dimensionPixelSize <= 0) {
            throw new XmlPullParserException(c.c(typedArray, new StringBuilder(), "<vector> tag requires height > 0"));
        }
        vectorDrawableState.mOpticalInsets = Insets.of(typedArray.getDimensionPixelOffset(10, vectorDrawableState.mOpticalInsets.left), typedArray.getDimensionPixelOffset(12, vectorDrawableState.mOpticalInsets.top), typedArray.getDimensionPixelOffset(11, vectorDrawableState.mOpticalInsets.right), typedArray.getDimensionPixelOffset(9, vectorDrawableState.mOpticalInsets.bottom));
        vectorDrawableState.setAlpha(typedArray.getFloat(4, vectorDrawableState.getAlpha()));
        String string = typedArray.getString(0);
        if (string != null) {
            vectorDrawableState.mRootName = string;
            vectorDrawableState.mVGTargetsMap.put(string, vectorDrawableState);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void applyTheme(Resources.Theme theme) {
        super.applyTheme(theme);
        VectorDrawableState vectorDrawableState = this.mVectorState;
        if (vectorDrawableState == null) {
            return;
        }
        this.mDpiScaledDirty = vectorDrawableState.setDensity(Drawable.resolveDensity(theme.getResources(), 0)) | this.mDpiScaledDirty;
        int[] iArr = vectorDrawableState.mThemeAttrs;
        if (iArr != null) {
            TypedArray typedArrayResolveAttributes = theme.resolveAttributes(iArr, R.styleable.VectorDrawable);
            try {
                try {
                    vectorDrawableState.mCacheDirty = true;
                    updateStateFromTypedArray(typedArrayResolveAttributes);
                    typedArrayResolveAttributes.recycle();
                    this.mDpiScaledDirty = true;
                } catch (XmlPullParserException e2) {
                    throw new RuntimeException(e2);
                }
            } catch (Throwable th) {
                typedArrayResolveAttributes.recycle();
                throw th;
            }
        }
        ColorStateList colorStateList = vectorDrawableState.mTint;
        if (colorStateList != null && colorStateList.canApplyTheme()) {
            vectorDrawableState.mTint = vectorDrawableState.mTint.obtainForTheme(theme);
        }
        VectorDrawableState vectorDrawableState2 = this.mVectorState;
        if (vectorDrawableState2 != null && vectorDrawableState2.canApplyTheme()) {
            this.mVectorState.applyTheme(theme);
        }
        updateLocalState(theme.getResources());
    }

    @Override // android.graphics.drawable.Drawable
    public boolean canApplyTheme() {
        VectorDrawableState vectorDrawableState = this.mVectorState;
        return (vectorDrawableState != null && vectorDrawableState.canApplyTheme()) || super.canApplyTheme();
    }

    @Override // android.graphics.drawable.Drawable
    public void clearMutated() {
        super.clearMutated();
        this.mMutated = false;
    }

    public void computeVectorSize() {
        VectorDrawableState vectorDrawableState = this.mVectorState;
        Insets insets = vectorDrawableState.mOpticalInsets;
        int i2 = vectorDrawableState.mDensity;
        int i3 = this.mTargetDensity;
        if (i3 != i2) {
            this.mDpiScaledWidth = Drawable.scaleFromDensity(vectorDrawableState.mBaseWidth, i2, i3, true);
            this.mDpiScaledHeight = Drawable.scaleFromDensity(this.mVectorState.mBaseHeight, i2, i3, true);
            this.mDpiScaledInsets = Insets.of(Drawable.scaleFromDensity(insets.left, i2, i3, false), Drawable.scaleFromDensity(insets.top, i2, i3, false), Drawable.scaleFromDensity(insets.right, i2, i3, false), Drawable.scaleFromDensity(insets.bottom, i2, i3, false));
        } else {
            this.mDpiScaledWidth = vectorDrawableState.mBaseWidth;
            this.mDpiScaledHeight = vectorDrawableState.mBaseHeight;
            this.mDpiScaledInsets = insets;
        }
        this.mDpiScaledDirty = false;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        int i2;
        copyBounds(this.mTmpBounds);
        if (this.mTmpBounds.width() <= 0 || this.mTmpBounds.height() <= 0) {
            return;
        }
        ColorFilter colorFilter = this.mColorFilter;
        if (colorFilter == null) {
            colorFilter = this.mTintFilter;
        }
        int iNDraw = nDraw(this.mVectorState.getNativeRenderer(), canvas.getNativeCanvasWrapper(), colorFilter == null ? 0L : colorFilter.getNativeInstance(), this.mTmpBounds, needMirroring(), this.mVectorState.canReuseCache());
        if (iNDraw == 0) {
            return;
        }
        if (canvas.isHardwareAccelerated()) {
            VectorDrawableState vectorDrawableState = this.mVectorState;
            i2 = (iNDraw - vectorDrawableState.mLastHWCachePixelCount) * 4;
            vectorDrawableState.mLastHWCachePixelCount = iNDraw;
        } else {
            VectorDrawableState vectorDrawableState2 = this.mVectorState;
            i2 = (iNDraw - vectorDrawableState2.mLastSWCachePixelCount) * 4;
            vectorDrawableState2.mLastSWCachePixelCount = iNDraw;
        }
        if (i2 > 0) {
            VMRuntime.getRuntime().registerNativeAllocation(i2);
        } else if (i2 < 0) {
            VMRuntime.getRuntime().registerNativeFree(-i2);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return (int) (this.mVectorState.getAlpha() * 255.0f);
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        return super.getChangingConfigurations() | this.mVectorState.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public ColorFilter getColorFilter() {
        return this.mColorFilter;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        this.mVectorState.mChangingConfigurations = getChangingConfigurations();
        return this.mVectorState;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        if (this.mDpiScaledDirty) {
            computeVectorSize();
        }
        return this.mDpiScaledHeight;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        if (this.mDpiScaledDirty) {
            computeVectorSize();
        }
        return this.mDpiScaledWidth;
    }

    public long getNativeTree() {
        return this.mVectorState.getNativeRenderer();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return getAlpha() == 0 ? -2 : -3;
    }

    @Override // android.graphics.drawable.Drawable
    public Insets getOpticalInsets() {
        if (this.mDpiScaledDirty) {
            computeVectorSize();
        }
        return this.mDpiScaledInsets;
    }

    public float getPixelSize() {
        int i2;
        int i3;
        VectorDrawableState vectorDrawableState = this.mVectorState;
        if (vectorDrawableState == null || (i2 = vectorDrawableState.mBaseWidth) == 0 || (i3 = vectorDrawableState.mBaseHeight) == 0) {
            return 1.0f;
        }
        float f2 = vectorDrawableState.mViewportHeight;
        if (f2 == 0.0f) {
            return 1.0f;
        }
        float f3 = vectorDrawableState.mViewportWidth;
        if (f3 == 0.0f) {
            return 1.0f;
        }
        return Math.min(f3 / i2, f2 / i3);
    }

    public Object getTargetByName(String str) {
        return this.mVectorState.mVGTargetsMap.get(str);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean hasFocusStateSpecified() {
        VectorDrawableState vectorDrawableState = this.mVectorState;
        return vectorDrawableState != null && vectorDrawableState.hasFocusStateSpecified();
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        try {
            Trace.traceBegin(8192L, "VectorDrawable#inflate");
            VectorDrawableState vectorDrawableState = this.mVectorState;
            VGroup vGroup = vectorDrawableState.mRootGroup;
            if (vGroup != null || vectorDrawableState.mNativeTree != null) {
                if (vGroup != null) {
                    VMRuntime.getRuntime().registerNativeFree(this.mVectorState.mRootGroup.getNativeSize());
                    this.mVectorState.mRootGroup.setTree(null);
                }
                this.mVectorState.mRootGroup = new VGroup();
                if (this.mVectorState.mNativeTree != null) {
                    VMRuntime.getRuntime().registerNativeFree(316);
                    this.mVectorState.mNativeTree.release();
                }
                VectorDrawableState vectorDrawableState2 = this.mVectorState;
                vectorDrawableState2.createNativeTree(vectorDrawableState2.mRootGroup);
            }
            VectorDrawableState vectorDrawableState3 = this.mVectorState;
            vectorDrawableState3.setDensity(Drawable.resolveDensity(resources, 0));
            TypedArray typedArrayObtainAttributes = Drawable.obtainAttributes(resources, theme, attributeSet, R.styleable.VectorDrawable);
            updateStateFromTypedArray(typedArrayObtainAttributes);
            typedArrayObtainAttributes.recycle();
            this.mDpiScaledDirty = true;
            vectorDrawableState3.mCacheDirty = true;
            inflateChildElements(resources, xmlPullParser, attributeSet, theme);
            vectorDrawableState3.onTreeConstructionFinished();
            updateLocalState(resources);
        } finally {
            Trace.traceEnd(8192L);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        return this.mVectorState.mAutoMirrored;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        VectorDrawableState vectorDrawableState;
        return super.isStateful() || ((vectorDrawableState = this.mVectorState) != null && vectorDrawableState.isStateful());
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.mMutated && super.mutate() == this) {
            this.mVectorState = new VectorDrawableState(this.mVectorState);
            this.mMutated = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        boolean z2;
        PorterDuff.Mode mode;
        if (isStateful()) {
            mutate();
        }
        VectorDrawableState vectorDrawableState = this.mVectorState;
        if (vectorDrawableState.onStateChange(iArr)) {
            vectorDrawableState.mCacheDirty = true;
            z2 = true;
        } else {
            z2 = false;
        }
        ColorStateList colorStateList = vectorDrawableState.mTint;
        if (colorStateList == null || (mode = vectorDrawableState.mTintMode) == null) {
            return z2;
        }
        this.mTintFilter = updateTintFilter(this.mTintFilter, colorStateList, mode);
        return true;
    }

    public void setAllowCaching(boolean z2) {
        nSetAllowCaching(this.mVectorState.getNativeRenderer(), z2);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        if (this.mVectorState.setAlpha(i2 / 255.0f)) {
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z2) {
        VectorDrawableState vectorDrawableState = this.mVectorState;
        if (vectorDrawableState.mAutoMirrored != z2) {
            vectorDrawableState.mAutoMirrored = z2;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.mColorFilter = colorFilter;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        VectorDrawableState vectorDrawableState = this.mVectorState;
        if (vectorDrawableState.mTint != colorStateList) {
            vectorDrawableState.mTint = colorStateList;
            this.mTintFilter = updateTintFilter(this.mTintFilter, colorStateList, vectorDrawableState.mTintMode);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(PorterDuff.Mode mode) {
        VectorDrawableState vectorDrawableState = this.mVectorState;
        if (vectorDrawableState.mTintMode != mode) {
            vectorDrawableState.mTintMode = mode;
            this.mTintFilter = updateTintFilter(this.mTintFilter, vectorDrawableState.mTint, mode);
            invalidateSelf();
        }
    }

    public static class VClipPath extends VPath {
        private static final int NATIVE_ALLOCATION_SIZE = 120;
        private final long mNativePtr;

        public VClipPath() {
            this.mNativePtr = VectorDrawable.nCreateClipPath();
        }

        private void updateStateFromTypedArray(TypedArray typedArray) {
            this.mChangingConfigurations |= typedArray.getChangingConfigurations();
            String string = typedArray.getString(0);
            if (string != null) {
                this.mPathName = string;
                VectorDrawable.nSetName(this.mNativePtr, string);
            }
            String string2 = typedArray.getString(1);
            if (string2 != null) {
                this.mPathData = new PathParser.PathData(string2);
                VectorDrawable.nSetPathString(this.mNativePtr, string2, string2.length());
            }
        }

        @Override // android.graphics.drawable.VectorDrawable.VObject
        public void applyTheme(Resources.Theme theme) {
        }

        @Override // android.graphics.drawable.VectorDrawable.VObject
        public boolean canApplyTheme() {
            return false;
        }

        @Override // android.graphics.drawable.VectorDrawable.VObject
        public long getNativePtr() {
            return this.mNativePtr;
        }

        @Override // android.graphics.drawable.VectorDrawable.VObject
        public int getNativeSize() {
            return 120;
        }

        @Override // android.graphics.drawable.VectorDrawable.VObject
        public boolean hasFocusStateSpecified() {
            return false;
        }

        @Override // android.graphics.drawable.VectorDrawable.VObject
        public void inflate(Resources resources, AttributeSet attributeSet, Resources.Theme theme) {
            TypedArray typedArrayObtainAttributes = Drawable.obtainAttributes(resources, theme, attributeSet, R.styleable.VectorDrawableClipPath);
            updateStateFromTypedArray(typedArrayObtainAttributes);
            typedArrayObtainAttributes.recycle();
        }

        @Override // android.graphics.drawable.VectorDrawable.VObject
        public boolean isStateful() {
            return false;
        }

        @Override // android.graphics.drawable.VectorDrawable.VObject
        public boolean onStateChange(int[] iArr) {
            return false;
        }

        public VClipPath(VClipPath vClipPath) {
            super(vClipPath);
            this.mNativePtr = VectorDrawable.nCreateClipPath(vClipPath.mNativePtr);
        }
    }

    public static abstract class VPath extends VObject {
        private static final Property<VPath, PathParser.PathData> PATH_DATA = new Property<VPath, PathParser.PathData>(PathParser.PathData.class, "pathData") { // from class: android.graphics.drawable.VectorDrawable.VPath.1
            @Override // android.util.Property
            public PathParser.PathData get(VPath vPath) {
                return vPath.getPathData();
            }

            @Override // android.util.Property
            public void set(VPath vPath, PathParser.PathData pathData) {
                vPath.setPathData(pathData);
            }
        };
        int mChangingConfigurations;
        protected PathParser.PathData mPathData;
        String mPathName;

        public VPath() {
            this.mPathData = null;
        }

        public PathParser.PathData getPathData() {
            return this.mPathData;
        }

        public String getPathName() {
            return this.mPathName;
        }

        @Override // android.graphics.drawable.VectorDrawable.VObject
        public Property getProperty(String str) {
            Property<VPath, PathParser.PathData> property = PATH_DATA;
            if (property.getName().equals(str)) {
                return property;
            }
            return null;
        }

        public void setPathData(PathParser.PathData pathData) {
            this.mPathData.setPathData(pathData);
            if (isTreeValid()) {
                VectorDrawable.nSetPathData(getNativePtr(), this.mPathData.getNativePtr());
            }
        }

        public VPath(VPath vPath) {
            this.mPathData = null;
            this.mPathName = vPath.mPathName;
            this.mChangingConfigurations = vPath.mChangingConfigurations;
            PathParser.PathData pathData = vPath.mPathData;
            this.mPathData = pathData != null ? new PathParser.PathData(pathData) : null;
        }
    }

    public VectorDrawable() {
        this(new VectorDrawableState(null), null);
    }

    private VectorDrawable(VectorDrawableState vectorDrawableState, Resources resources) {
        this.mDpiScaledWidth = 0;
        this.mDpiScaledHeight = 0;
        this.mDpiScaledInsets = Insets.NONE;
        this.mDpiScaledDirty = true;
        this.mTmpBounds = new Rect();
        this.mVectorState = vectorDrawableState;
        updateLocalState(resources);
    }

    public static class VFullPath extends VPath {
        private static final int FILL_ALPHA_INDEX = 4;
        private static final int FILL_COLOR_INDEX = 3;
        private static final int FILL_TYPE_INDEX = 11;
        private static final int NATIVE_ALLOCATION_SIZE = 264;
        private static final int STROKE_ALPHA_INDEX = 2;
        private static final int STROKE_COLOR_INDEX = 1;
        private static final int STROKE_LINE_CAP_INDEX = 8;
        private static final int STROKE_LINE_JOIN_INDEX = 9;
        private static final int STROKE_MITER_LIMIT_INDEX = 10;
        private static final int STROKE_WIDTH_INDEX = 0;
        private static final int TOTAL_PROPERTY_COUNT = 12;
        private static final int TRIM_PATH_END_INDEX = 6;
        private static final int TRIM_PATH_OFFSET_INDEX = 7;
        private static final int TRIM_PATH_START_INDEX = 5;
        ComplexColor mFillColors;
        private final long mNativePtr;
        private byte[] mPropertyData;
        ComplexColor mStrokeColors;
        private int[] mThemeAttrs;
        private static final HashMap<String, Integer> sPropertyIndexMap = new HashMap<String, Integer>() { // from class: android.graphics.drawable.VectorDrawable.VFullPath.1
            {
                put("strokeWidth", 0);
                put("strokeColor", 1);
                put("strokeAlpha", 2);
                put("fillColor", 3);
                put("fillAlpha", 4);
                put("trimPathStart", 5);
                put("trimPathEnd", 6);
                put("trimPathOffset", 7);
            }
        };
        private static final Property<VFullPath, Float> STROKE_WIDTH = new FloatProperty<VFullPath>("strokeWidth") { // from class: android.graphics.drawable.VectorDrawable.VFullPath.2
            @Override // android.util.Property
            public Float get(VFullPath vFullPath) {
                return Float.valueOf(vFullPath.getStrokeWidth());
            }

            @Override // android.util.FloatProperty
            public void setValue(VFullPath vFullPath, float f2) {
                vFullPath.setStrokeWidth(f2);
            }
        };
        private static final Property<VFullPath, Integer> STROKE_COLOR = new IntProperty<VFullPath>("strokeColor") { // from class: android.graphics.drawable.VectorDrawable.VFullPath.3
            @Override // android.util.Property
            public Integer get(VFullPath vFullPath) {
                return Integer.valueOf(vFullPath.getStrokeColor());
            }

            @Override // android.util.IntProperty
            public void setValue(VFullPath vFullPath, int i2) {
                vFullPath.setStrokeColor(i2);
            }
        };
        private static final Property<VFullPath, Float> STROKE_ALPHA = new FloatProperty<VFullPath>("strokeAlpha") { // from class: android.graphics.drawable.VectorDrawable.VFullPath.4
            @Override // android.util.Property
            public Float get(VFullPath vFullPath) {
                return Float.valueOf(vFullPath.getStrokeAlpha());
            }

            @Override // android.util.FloatProperty
            public void setValue(VFullPath vFullPath, float f2) {
                vFullPath.setStrokeAlpha(f2);
            }
        };
        private static final Property<VFullPath, Integer> FILL_COLOR = new IntProperty<VFullPath>("fillColor") { // from class: android.graphics.drawable.VectorDrawable.VFullPath.5
            @Override // android.util.Property
            public Integer get(VFullPath vFullPath) {
                return Integer.valueOf(vFullPath.getFillColor());
            }

            @Override // android.util.IntProperty
            public void setValue(VFullPath vFullPath, int i2) {
                vFullPath.setFillColor(i2);
            }
        };
        private static final Property<VFullPath, Float> FILL_ALPHA = new FloatProperty<VFullPath>("fillAlpha") { // from class: android.graphics.drawable.VectorDrawable.VFullPath.6
            @Override // android.util.Property
            public Float get(VFullPath vFullPath) {
                return Float.valueOf(vFullPath.getFillAlpha());
            }

            @Override // android.util.FloatProperty
            public void setValue(VFullPath vFullPath, float f2) {
                vFullPath.setFillAlpha(f2);
            }
        };
        private static final Property<VFullPath, Float> TRIM_PATH_START = new FloatProperty<VFullPath>("trimPathStart") { // from class: android.graphics.drawable.VectorDrawable.VFullPath.7
            @Override // android.util.Property
            public Float get(VFullPath vFullPath) {
                return Float.valueOf(vFullPath.getTrimPathStart());
            }

            @Override // android.util.FloatProperty
            public void setValue(VFullPath vFullPath, float f2) {
                vFullPath.setTrimPathStart(f2);
            }
        };
        private static final Property<VFullPath, Float> TRIM_PATH_END = new FloatProperty<VFullPath>("trimPathEnd") { // from class: android.graphics.drawable.VectorDrawable.VFullPath.8
            @Override // android.util.Property
            public Float get(VFullPath vFullPath) {
                return Float.valueOf(vFullPath.getTrimPathEnd());
            }

            @Override // android.util.FloatProperty
            public void setValue(VFullPath vFullPath, float f2) {
                vFullPath.setTrimPathEnd(f2);
            }
        };
        private static final Property<VFullPath, Float> TRIM_PATH_OFFSET = new FloatProperty<VFullPath>("trimPathOffset") { // from class: android.graphics.drawable.VectorDrawable.VFullPath.9
            @Override // android.util.Property
            public Float get(VFullPath vFullPath) {
                return Float.valueOf(vFullPath.getTrimPathOffset());
            }

            @Override // android.util.FloatProperty
            public void setValue(VFullPath vFullPath, float f2) {
                vFullPath.setTrimPathOffset(f2);
            }
        };
        private static final HashMap<String, Property> sPropertyMap = new HashMap<String, Property>() { // from class: android.graphics.drawable.VectorDrawable.VFullPath.10
            {
                put("strokeWidth", VFullPath.STROKE_WIDTH);
                put("strokeColor", VFullPath.STROKE_COLOR);
                put("strokeAlpha", VFullPath.STROKE_ALPHA);
                put("fillColor", VFullPath.FILL_COLOR);
                put("fillAlpha", VFullPath.FILL_ALPHA);
                put("trimPathStart", VFullPath.TRIM_PATH_START);
                put("trimPathEnd", VFullPath.TRIM_PATH_END);
                put("trimPathOffset", VFullPath.TRIM_PATH_OFFSET);
            }
        };

        public VFullPath() {
            this.mStrokeColors = null;
            this.mFillColors = null;
            this.mNativePtr = VectorDrawable.nCreateFullPath();
        }

        private boolean canComplexColorApplyTheme(ComplexColor complexColor) {
            return complexColor != null && complexColor.canApplyTheme();
        }

        private void updateStateFromTypedArray(TypedArray typedArray) {
            Shader shader;
            int defaultColor;
            int defaultColor2;
            if (this.mPropertyData == null) {
                this.mPropertyData = new byte[48];
            }
            if (!VectorDrawable.nGetFullPathProperties(this.mNativePtr, this.mPropertyData, 48)) {
                throw new RuntimeException("Error: inconsistent property count");
            }
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(this.mPropertyData);
            byteBufferWrap.order(ByteOrder.nativeOrder());
            float f2 = byteBufferWrap.getFloat(0);
            int i2 = byteBufferWrap.getInt(4);
            float f3 = byteBufferWrap.getFloat(8);
            int i3 = byteBufferWrap.getInt(12);
            float f4 = byteBufferWrap.getFloat(16);
            float f5 = byteBufferWrap.getFloat(20);
            float f6 = byteBufferWrap.getFloat(24);
            float f7 = byteBufferWrap.getFloat(28);
            int i4 = byteBufferWrap.getInt(32);
            int i5 = byteBufferWrap.getInt(36);
            float f8 = byteBufferWrap.getFloat(40);
            int i6 = byteBufferWrap.getInt(44);
            this.mChangingConfigurations |= typedArray.getChangingConfigurations();
            this.mThemeAttrs = typedArray.extractThemeAttrs();
            String string = typedArray.getString(0);
            if (string != null) {
                this.mPathName = string;
                VectorDrawable.nSetName(this.mNativePtr, string);
            }
            String string2 = typedArray.getString(2);
            if (string2 != null) {
                this.mPathData = new PathParser.PathData(string2);
                VectorDrawable.nSetPathString(this.mNativePtr, string2, string2.length());
            }
            ComplexColor complexColor = typedArray.getComplexColor(1);
            Shader shader2 = null;
            if (complexColor != null) {
                if (complexColor instanceof GradientColor) {
                    this.mFillColors = complexColor;
                    shader = ((GradientColor) complexColor).getShader();
                } else {
                    if (complexColor.isStateful()) {
                        this.mFillColors = complexColor;
                    } else {
                        this.mFillColors = null;
                    }
                    shader = null;
                }
                defaultColor = complexColor.getDefaultColor();
            } else {
                shader = null;
                defaultColor = i3;
            }
            ComplexColor complexColor2 = typedArray.getComplexColor(3);
            if (complexColor2 != null) {
                if (complexColor2 instanceof GradientColor) {
                    this.mStrokeColors = complexColor2;
                    shader2 = ((GradientColor) complexColor2).getShader();
                } else if (complexColor2.isStateful()) {
                    this.mStrokeColors = complexColor2;
                } else {
                    this.mStrokeColors = null;
                }
                defaultColor2 = complexColor2.getDefaultColor();
            } else {
                defaultColor2 = i2;
            }
            VectorDrawable.nUpdateFullPathFillGradient(this.mNativePtr, shader != null ? shader.getNativeInstance() : 0L);
            VectorDrawable.nUpdateFullPathStrokeGradient(this.mNativePtr, shader2 != null ? shader2.getNativeInstance() : 0L);
            float f9 = typedArray.getFloat(12, f4);
            int i7 = typedArray.getInt(8, i4);
            int i8 = typedArray.getInt(9, i5);
            float f10 = typedArray.getFloat(10, f8);
            VectorDrawable.nUpdateFullPathProperties(this.mNativePtr, typedArray.getFloat(4, f2), defaultColor2, typedArray.getFloat(11, f3), defaultColor, f9, typedArray.getFloat(5, f5), typedArray.getFloat(6, f6), typedArray.getFloat(7, f7), f10, i7, i8, typedArray.getInt(13, i6));
        }

        @Override // android.graphics.drawable.VectorDrawable.VObject
        public void applyTheme(Resources.Theme theme) {
            int[] iArr = this.mThemeAttrs;
            if (iArr != null) {
                TypedArray typedArrayResolveAttributes = theme.resolveAttributes(iArr, R.styleable.VectorDrawablePath);
                updateStateFromTypedArray(typedArrayResolveAttributes);
                typedArrayResolveAttributes.recycle();
            }
            boolean zCanComplexColorApplyTheme = canComplexColorApplyTheme(this.mFillColors);
            boolean zCanComplexColorApplyTheme2 = canComplexColorApplyTheme(this.mStrokeColors);
            if (zCanComplexColorApplyTheme) {
                ComplexColor complexColorObtainForTheme = this.mFillColors.obtainForTheme(theme);
                this.mFillColors = complexColorObtainForTheme;
                if (complexColorObtainForTheme instanceof GradientColor) {
                    VectorDrawable.nUpdateFullPathFillGradient(this.mNativePtr, ((GradientColor) complexColorObtainForTheme).getShader().getNativeInstance());
                } else if (complexColorObtainForTheme instanceof ColorStateList) {
                    VectorDrawable.nSetFillColor(this.mNativePtr, complexColorObtainForTheme.getDefaultColor());
                }
            }
            if (zCanComplexColorApplyTheme2) {
                ComplexColor complexColorObtainForTheme2 = this.mStrokeColors.obtainForTheme(theme);
                this.mStrokeColors = complexColorObtainForTheme2;
                if (complexColorObtainForTheme2 instanceof GradientColor) {
                    VectorDrawable.nUpdateFullPathStrokeGradient(this.mNativePtr, ((GradientColor) complexColorObtainForTheme2).getShader().getNativeInstance());
                } else if (complexColorObtainForTheme2 instanceof ColorStateList) {
                    VectorDrawable.nSetStrokeColor(this.mNativePtr, complexColorObtainForTheme2.getDefaultColor());
                }
            }
        }

        @Override // android.graphics.drawable.VectorDrawable.VObject
        public boolean canApplyTheme() {
            if (this.mThemeAttrs != null) {
                return true;
            }
            return canComplexColorApplyTheme(this.mFillColors) || canComplexColorApplyTheme(this.mStrokeColors);
        }

        public float getFillAlpha() {
            if (isTreeValid()) {
                return VectorDrawable.nGetFillAlpha(this.mNativePtr);
            }
            return 0.0f;
        }

        public int getFillColor() {
            if (isTreeValid()) {
                return VectorDrawable.nGetFillColor(this.mNativePtr);
            }
            return 0;
        }

        @Override // android.graphics.drawable.VectorDrawable.VObject
        public long getNativePtr() {
            return this.mNativePtr;
        }

        @Override // android.graphics.drawable.VectorDrawable.VObject
        public int getNativeSize() {
            return 264;
        }

        @Override // android.graphics.drawable.VectorDrawable.VPath, android.graphics.drawable.VectorDrawable.VObject
        public Property getProperty(String str) {
            Property property = super.getProperty(str);
            if (property != null) {
                return property;
            }
            HashMap<String, Property> map = sPropertyMap;
            if (map.containsKey(str)) {
                return map.get(str);
            }
            return null;
        }

        public int getPropertyIndex(String str) {
            HashMap<String, Integer> map = sPropertyIndexMap;
            if (map.containsKey(str)) {
                return map.get(str).intValue();
            }
            return -1;
        }

        public float getStrokeAlpha() {
            if (isTreeValid()) {
                return VectorDrawable.nGetStrokeAlpha(this.mNativePtr);
            }
            return 0.0f;
        }

        public int getStrokeColor() {
            if (isTreeValid()) {
                return VectorDrawable.nGetStrokeColor(this.mNativePtr);
            }
            return 0;
        }

        public float getStrokeWidth() {
            if (isTreeValid()) {
                return VectorDrawable.nGetStrokeWidth(this.mNativePtr);
            }
            return 0.0f;
        }

        public float getTrimPathEnd() {
            if (isTreeValid()) {
                return VectorDrawable.nGetTrimPathEnd(this.mNativePtr);
            }
            return 0.0f;
        }

        public float getTrimPathOffset() {
            if (isTreeValid()) {
                return VectorDrawable.nGetTrimPathOffset(this.mNativePtr);
            }
            return 0.0f;
        }

        public float getTrimPathStart() {
            if (isTreeValid()) {
                return VectorDrawable.nGetTrimPathStart(this.mNativePtr);
            }
            return 0.0f;
        }

        @Override // android.graphics.drawable.VectorDrawable.VObject
        public boolean hasFocusStateSpecified() {
            ComplexColor complexColor;
            ComplexColor complexColor2 = this.mStrokeColors;
            return complexColor2 != null && (complexColor2 instanceof ColorStateList) && ((ColorStateList) complexColor2).hasFocusStateSpecified() && (complexColor = this.mFillColors) != null && (complexColor instanceof ColorStateList) && ((ColorStateList) complexColor).hasFocusStateSpecified();
        }

        @Override // android.graphics.drawable.VectorDrawable.VObject
        public void inflate(Resources resources, AttributeSet attributeSet, Resources.Theme theme) {
            TypedArray typedArrayObtainAttributes = Drawable.obtainAttributes(resources, theme, attributeSet, R.styleable.VectorDrawablePath);
            updateStateFromTypedArray(typedArrayObtainAttributes);
            typedArrayObtainAttributes.recycle();
        }

        @Override // android.graphics.drawable.VectorDrawable.VObject
        public boolean isStateful() {
            return (this.mStrokeColors == null && this.mFillColors == null) ? false : true;
        }

        @Override // android.graphics.drawable.VectorDrawable.VObject
        public boolean onStateChange(int[] iArr) {
            boolean z2;
            ComplexColor complexColor = this.mStrokeColors;
            if (complexColor == null || !(complexColor instanceof ColorStateList)) {
                z2 = false;
            } else {
                int strokeColor = getStrokeColor();
                int colorForState = ((ColorStateList) this.mStrokeColors).getColorForState(iArr, strokeColor);
                z2 = (strokeColor != colorForState) | false;
                if (strokeColor != colorForState) {
                    VectorDrawable.nSetStrokeColor(this.mNativePtr, colorForState);
                }
            }
            ComplexColor complexColor2 = this.mFillColors;
            if (complexColor2 != null && (complexColor2 instanceof ColorStateList)) {
                int fillColor = getFillColor();
                int colorForState2 = ((ColorStateList) this.mFillColors).getColorForState(iArr, fillColor);
                z2 |= fillColor != colorForState2;
                if (fillColor != colorForState2) {
                    VectorDrawable.nSetFillColor(this.mNativePtr, colorForState2);
                }
            }
            return z2;
        }

        public void setFillAlpha(float f2) {
            if (isTreeValid()) {
                VectorDrawable.nSetFillAlpha(this.mNativePtr, f2);
            }
        }

        public void setFillColor(int i2) {
            this.mFillColors = null;
            if (isTreeValid()) {
                VectorDrawable.nSetFillColor(this.mNativePtr, i2);
            }
        }

        public void setStrokeAlpha(float f2) {
            if (isTreeValid()) {
                VectorDrawable.nSetStrokeAlpha(this.mNativePtr, f2);
            }
        }

        public void setStrokeColor(int i2) {
            this.mStrokeColors = null;
            if (isTreeValid()) {
                VectorDrawable.nSetStrokeColor(this.mNativePtr, i2);
            }
        }

        public void setStrokeWidth(float f2) {
            if (isTreeValid()) {
                VectorDrawable.nSetStrokeWidth(this.mNativePtr, f2);
            }
        }

        public void setTrimPathEnd(float f2) {
            if (isTreeValid()) {
                VectorDrawable.nSetTrimPathEnd(this.mNativePtr, f2);
            }
        }

        public void setTrimPathOffset(float f2) {
            if (isTreeValid()) {
                VectorDrawable.nSetTrimPathOffset(this.mNativePtr, f2);
            }
        }

        public void setTrimPathStart(float f2) {
            if (isTreeValid()) {
                VectorDrawable.nSetTrimPathStart(this.mNativePtr, f2);
            }
        }

        public VFullPath(VFullPath vFullPath) {
            super(vFullPath);
            this.mStrokeColors = null;
            this.mFillColors = null;
            this.mNativePtr = VectorDrawable.nCreateFullPath(vFullPath.mNativePtr);
            this.mThemeAttrs = vFullPath.mThemeAttrs;
            this.mStrokeColors = vFullPath.mStrokeColors;
            this.mFillColors = vFullPath.mFillColors;
        }
    }

    public static class VGroup extends VObject {
        private static final int NATIVE_ALLOCATION_SIZE = 100;
        private static final int PIVOT_X_INDEX = 1;
        private static final int PIVOT_Y_INDEX = 2;
        private static final int ROTATION_INDEX = 0;
        private static final int SCALE_X_INDEX = 3;
        private static final int SCALE_Y_INDEX = 4;
        private static final int TRANSFORM_PROPERTY_COUNT = 7;
        private static final int TRANSLATE_X_INDEX = 5;
        private static final int TRANSLATE_Y_INDEX = 6;
        private int mChangingConfigurations;
        private final ArrayList<VObject> mChildren;
        private String mGroupName;
        private boolean mIsStateful;
        private final long mNativePtr;
        private int[] mThemeAttrs;
        private float[] mTransform;
        private static final HashMap<String, Integer> sPropertyIndexMap = new HashMap<String, Integer>() { // from class: android.graphics.drawable.VectorDrawable.VGroup.1
            {
                put("translateX", 5);
                put("translateY", 6);
                put("scaleX", 3);
                put("scaleY", 4);
                put("pivotX", 1);
                put("pivotY", 2);
                put(Key.ROTATION, 0);
            }
        };
        private static final Property<VGroup, Float> TRANSLATE_X = new FloatProperty<VGroup>("translateX") { // from class: android.graphics.drawable.VectorDrawable.VGroup.2
            @Override // android.util.Property
            public Float get(VGroup vGroup) {
                return Float.valueOf(vGroup.getTranslateX());
            }

            @Override // android.util.FloatProperty
            public void setValue(VGroup vGroup, float f2) {
                vGroup.setTranslateX(f2);
            }
        };
        private static final Property<VGroup, Float> TRANSLATE_Y = new FloatProperty<VGroup>("translateY") { // from class: android.graphics.drawable.VectorDrawable.VGroup.3
            @Override // android.util.Property
            public Float get(VGroup vGroup) {
                return Float.valueOf(vGroup.getTranslateY());
            }

            @Override // android.util.FloatProperty
            public void setValue(VGroup vGroup, float f2) {
                vGroup.setTranslateY(f2);
            }
        };
        private static final Property<VGroup, Float> SCALE_X = new FloatProperty<VGroup>("scaleX") { // from class: android.graphics.drawable.VectorDrawable.VGroup.4
            @Override // android.util.Property
            public Float get(VGroup vGroup) {
                return Float.valueOf(vGroup.getScaleX());
            }

            @Override // android.util.FloatProperty
            public void setValue(VGroup vGroup, float f2) {
                vGroup.setScaleX(f2);
            }
        };
        private static final Property<VGroup, Float> SCALE_Y = new FloatProperty<VGroup>("scaleY") { // from class: android.graphics.drawable.VectorDrawable.VGroup.5
            @Override // android.util.Property
            public Float get(VGroup vGroup) {
                return Float.valueOf(vGroup.getScaleY());
            }

            @Override // android.util.FloatProperty
            public void setValue(VGroup vGroup, float f2) {
                vGroup.setScaleY(f2);
            }
        };
        private static final Property<VGroup, Float> PIVOT_X = new FloatProperty<VGroup>("pivotX") { // from class: android.graphics.drawable.VectorDrawable.VGroup.6
            @Override // android.util.Property
            public Float get(VGroup vGroup) {
                return Float.valueOf(vGroup.getPivotX());
            }

            @Override // android.util.FloatProperty
            public void setValue(VGroup vGroup, float f2) {
                vGroup.setPivotX(f2);
            }
        };
        private static final Property<VGroup, Float> PIVOT_Y = new FloatProperty<VGroup>("pivotY") { // from class: android.graphics.drawable.VectorDrawable.VGroup.7
            @Override // android.util.Property
            public Float get(VGroup vGroup) {
                return Float.valueOf(vGroup.getPivotY());
            }

            @Override // android.util.FloatProperty
            public void setValue(VGroup vGroup, float f2) {
                vGroup.setPivotY(f2);
            }
        };
        private static final Property<VGroup, Float> ROTATION = new FloatProperty<VGroup>(Key.ROTATION) { // from class: android.graphics.drawable.VectorDrawable.VGroup.8
            @Override // android.util.Property
            public Float get(VGroup vGroup) {
                return Float.valueOf(vGroup.getRotation());
            }

            @Override // android.util.FloatProperty
            public void setValue(VGroup vGroup, float f2) {
                vGroup.setRotation(f2);
            }
        };
        private static final HashMap<String, Property> sPropertyMap = new HashMap<String, Property>() { // from class: android.graphics.drawable.VectorDrawable.VGroup.9
            {
                put("translateX", VGroup.TRANSLATE_X);
                put("translateY", VGroup.TRANSLATE_Y);
                put("scaleX", VGroup.SCALE_X);
                put("scaleY", VGroup.SCALE_Y);
                put("pivotX", VGroup.PIVOT_X);
                put("pivotY", VGroup.PIVOT_Y);
                put(Key.ROTATION, VGroup.ROTATION);
            }
        };

        public VGroup(VGroup vGroup, ArrayMap<String, Object> arrayMap) {
            VPath vClipPath;
            this.mChildren = new ArrayList<>();
            this.mGroupName = null;
            this.mIsStateful = vGroup.mIsStateful;
            this.mThemeAttrs = vGroup.mThemeAttrs;
            String str = vGroup.mGroupName;
            this.mGroupName = str;
            this.mChangingConfigurations = vGroup.mChangingConfigurations;
            if (str != null) {
                arrayMap.put(str, this);
            }
            this.mNativePtr = VectorDrawable.nCreateGroup(vGroup.mNativePtr);
            ArrayList<VObject> arrayList = vGroup.mChildren;
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                VObject vObject = arrayList.get(i2);
                if (vObject instanceof VGroup) {
                    addChild(new VGroup((VGroup) vObject, arrayMap));
                } else {
                    if (vObject instanceof VFullPath) {
                        vClipPath = new VFullPath((VFullPath) vObject);
                    } else {
                        if (!(vObject instanceof VClipPath)) {
                            throw new IllegalStateException("Unknown object in the tree!");
                        }
                        vClipPath = new VClipPath((VClipPath) vObject);
                    }
                    addChild(vClipPath);
                    String str2 = vClipPath.mPathName;
                    if (str2 != null) {
                        arrayMap.put(str2, vClipPath);
                    }
                }
            }
        }

        public static int getPropertyIndex(String str) {
            HashMap<String, Integer> map = sPropertyIndexMap;
            if (map.containsKey(str)) {
                return map.get(str).intValue();
            }
            return -1;
        }

        public void addChild(VObject vObject) {
            VectorDrawable.nAddChild(this.mNativePtr, vObject.getNativePtr());
            this.mChildren.add(vObject);
            this.mIsStateful = vObject.isStateful() | this.mIsStateful;
        }

        @Override // android.graphics.drawable.VectorDrawable.VObject
        public void applyTheme(Resources.Theme theme) {
            int[] iArr = this.mThemeAttrs;
            if (iArr != null) {
                TypedArray typedArrayResolveAttributes = theme.resolveAttributes(iArr, R.styleable.VectorDrawableGroup);
                updateStateFromTypedArray(typedArrayResolveAttributes);
                typedArrayResolveAttributes.recycle();
            }
            ArrayList<VObject> arrayList = this.mChildren;
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                VObject vObject = arrayList.get(i2);
                if (vObject.canApplyTheme()) {
                    vObject.applyTheme(theme);
                    this.mIsStateful = vObject.isStateful() | this.mIsStateful;
                }
            }
        }

        @Override // android.graphics.drawable.VectorDrawable.VObject
        public boolean canApplyTheme() {
            if (this.mThemeAttrs != null) {
                return true;
            }
            ArrayList<VObject> arrayList = this.mChildren;
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                if (arrayList.get(i2).canApplyTheme()) {
                    return true;
                }
            }
            return false;
        }

        public String getGroupName() {
            return this.mGroupName;
        }

        @Override // android.graphics.drawable.VectorDrawable.VObject
        public long getNativePtr() {
            return this.mNativePtr;
        }

        @Override // android.graphics.drawable.VectorDrawable.VObject
        public int getNativeSize() {
            int nativeSize = 100;
            for (int i2 = 0; i2 < this.mChildren.size(); i2++) {
                nativeSize += this.mChildren.get(i2).getNativeSize();
            }
            return nativeSize;
        }

        public float getPivotX() {
            if (isTreeValid()) {
                return VectorDrawable.nGetPivotX(this.mNativePtr);
            }
            return 0.0f;
        }

        public float getPivotY() {
            if (isTreeValid()) {
                return VectorDrawable.nGetPivotY(this.mNativePtr);
            }
            return 0.0f;
        }

        @Override // android.graphics.drawable.VectorDrawable.VObject
        public Property getProperty(String str) {
            HashMap<String, Property> map = sPropertyMap;
            if (map.containsKey(str)) {
                return map.get(str);
            }
            return null;
        }

        public float getRotation() {
            if (isTreeValid()) {
                return VectorDrawable.nGetRotation(this.mNativePtr);
            }
            return 0.0f;
        }

        public float getScaleX() {
            if (isTreeValid()) {
                return VectorDrawable.nGetScaleX(this.mNativePtr);
            }
            return 0.0f;
        }

        public float getScaleY() {
            if (isTreeValid()) {
                return VectorDrawable.nGetScaleY(this.mNativePtr);
            }
            return 0.0f;
        }

        public float getTranslateX() {
            if (isTreeValid()) {
                return VectorDrawable.nGetTranslateX(this.mNativePtr);
            }
            return 0.0f;
        }

        public float getTranslateY() {
            if (isTreeValid()) {
                return VectorDrawable.nGetTranslateY(this.mNativePtr);
            }
            return 0.0f;
        }

        @Override // android.graphics.drawable.VectorDrawable.VObject
        public boolean hasFocusStateSpecified() {
            ArrayList<VObject> arrayList = this.mChildren;
            int size = arrayList.size();
            boolean zHasFocusStateSpecified = false;
            for (int i2 = 0; i2 < size; i2++) {
                VObject vObject = arrayList.get(i2);
                if (vObject.isStateful()) {
                    zHasFocusStateSpecified |= vObject.hasFocusStateSpecified();
                }
            }
            return zHasFocusStateSpecified;
        }

        @Override // android.graphics.drawable.VectorDrawable.VObject
        public void inflate(Resources resources, AttributeSet attributeSet, Resources.Theme theme) {
            TypedArray typedArrayObtainAttributes = Drawable.obtainAttributes(resources, theme, attributeSet, R.styleable.VectorDrawableGroup);
            updateStateFromTypedArray(typedArrayObtainAttributes);
            typedArrayObtainAttributes.recycle();
        }

        @Override // android.graphics.drawable.VectorDrawable.VObject
        public boolean isStateful() {
            return this.mIsStateful;
        }

        @Override // android.graphics.drawable.VectorDrawable.VObject
        public boolean onStateChange(int[] iArr) {
            ArrayList<VObject> arrayList = this.mChildren;
            int size = arrayList.size();
            boolean zOnStateChange = false;
            for (int i2 = 0; i2 < size; i2++) {
                VObject vObject = arrayList.get(i2);
                if (vObject.isStateful()) {
                    zOnStateChange |= vObject.onStateChange(iArr);
                }
            }
            return zOnStateChange;
        }

        public void setPivotX(float f2) {
            if (isTreeValid()) {
                VectorDrawable.nSetPivotX(this.mNativePtr, f2);
            }
        }

        public void setPivotY(float f2) {
            if (isTreeValid()) {
                VectorDrawable.nSetPivotY(this.mNativePtr, f2);
            }
        }

        public void setRotation(float f2) {
            if (isTreeValid()) {
                VectorDrawable.nSetRotation(this.mNativePtr, f2);
            }
        }

        public void setScaleX(float f2) {
            if (isTreeValid()) {
                VectorDrawable.nSetScaleX(this.mNativePtr, f2);
            }
        }

        public void setScaleY(float f2) {
            if (isTreeValid()) {
                VectorDrawable.nSetScaleY(this.mNativePtr, f2);
            }
        }

        public void setTranslateX(float f2) {
            if (isTreeValid()) {
                VectorDrawable.nSetTranslateX(this.mNativePtr, f2);
            }
        }

        public void setTranslateY(float f2) {
            if (isTreeValid()) {
                VectorDrawable.nSetTranslateY(this.mNativePtr, f2);
            }
        }

        @Override // android.graphics.drawable.VectorDrawable.VObject
        public void setTree(VirtualRefBasePtr virtualRefBasePtr) {
            super.setTree(virtualRefBasePtr);
            for (int i2 = 0; i2 < this.mChildren.size(); i2++) {
                this.mChildren.get(i2).setTree(virtualRefBasePtr);
            }
        }

        public void updateStateFromTypedArray(TypedArray typedArray) {
            this.mChangingConfigurations |= typedArray.getChangingConfigurations();
            this.mThemeAttrs = typedArray.extractThemeAttrs();
            if (this.mTransform == null) {
                this.mTransform = new float[7];
            }
            if (!VectorDrawable.nGetGroupProperties(this.mNativePtr, this.mTransform, 7)) {
                throw new RuntimeException("Error: inconsistent property count");
            }
            float f2 = typedArray.getFloat(5, this.mTransform[0]);
            float f3 = typedArray.getFloat(1, this.mTransform[1]);
            float f4 = typedArray.getFloat(2, this.mTransform[2]);
            float f5 = typedArray.getFloat(3, this.mTransform[3]);
            float f6 = typedArray.getFloat(4, this.mTransform[4]);
            float f7 = typedArray.getFloat(6, this.mTransform[5]);
            float f8 = typedArray.getFloat(7, this.mTransform[6]);
            String string = typedArray.getString(0);
            if (string != null) {
                this.mGroupName = string;
                VectorDrawable.nSetName(this.mNativePtr, string);
            }
            VectorDrawable.nUpdateGroupProperties(this.mNativePtr, f2, f3, f4, f5, f6, f7, f8);
        }

        public VGroup() {
            this.mChildren = new ArrayList<>();
            this.mGroupName = null;
            this.mNativePtr = VectorDrawable.nCreateGroup();
        }
    }
}
