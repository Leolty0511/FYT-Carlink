package android.view;

import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.AnimatedVectorDrawable;
import dalvik.annotation.optimization.CriticalNative;
import dalvik.annotation.optimization.FastNative;
import libcore.util.NativeAllocationRegistry;

/* JADX INFO: loaded from: classes2.dex */
public class RenderNode {
    final long mNativeRenderNode;
    private final View mOwningView;

    public static class NoImagePreloadHolder {
        public static final NativeAllocationRegistry sRegistry = new NativeAllocationRegistry(RenderNode.class.getClassLoader(), RenderNode.nGetNativeFinalizer(), 1024);

        private NoImagePreloadHolder() {
        }
    }

    private RenderNode(String str, View view) {
        long jNCreate = nCreate(str);
        this.mNativeRenderNode = jNCreate;
        NoImagePreloadHolder.sRegistry.registerNativeAllocation(this, jNCreate);
        this.mOwningView = view;
    }

    public static RenderNode adopt(long j2) {
        return new RenderNode(j2);
    }

    public static RenderNode create(String str, View view) {
        return new RenderNode(str, view);
    }

    private static native void nAddAnimator(long j2, long j3);

    private static native long nCreate(String str);

    private static native void nEndAllAnimators(long j2);

    @CriticalNative
    private static native float nGetAlpha(long j2);

    @CriticalNative
    private static native float nGetCameraDistance(long j2);

    @CriticalNative
    private static native boolean nGetClipToOutline(long j2);

    private static native int nGetDebugSize(long j2);

    @CriticalNative
    private static native float nGetElevation(long j2);

    @CriticalNative
    private static native void nGetInverseTransformMatrix(long j2, long j3);

    /* JADX INFO: Access modifiers changed from: private */
    public static native long nGetNativeFinalizer();

    @CriticalNative
    private static native float nGetPivotX(long j2);

    @CriticalNative
    private static native float nGetPivotY(long j2);

    @CriticalNative
    private static native float nGetRotation(long j2);

    @CriticalNative
    private static native float nGetRotationX(long j2);

    @CriticalNative
    private static native float nGetRotationY(long j2);

    @CriticalNative
    private static native float nGetScaleX(long j2);

    @CriticalNative
    private static native float nGetScaleY(long j2);

    @CriticalNative
    private static native void nGetTransformMatrix(long j2, long j3);

    @CriticalNative
    private static native float nGetTranslationX(long j2);

    @CriticalNative
    private static native float nGetTranslationY(long j2);

    @CriticalNative
    private static native float nGetTranslationZ(long j2);

    @CriticalNative
    private static native boolean nHasIdentityMatrix(long j2);

    @CriticalNative
    private static native boolean nHasOverlappingRendering(long j2);

    @CriticalNative
    private static native boolean nHasShadow(long j2);

    @CriticalNative
    private static native boolean nIsPivotExplicitlySet(long j2);

    @CriticalNative
    private static native boolean nIsValid(long j2);

    @CriticalNative
    private static native boolean nOffsetLeftAndRight(long j2, int i2);

    @CriticalNative
    private static native boolean nOffsetTopAndBottom(long j2, int i2);

    private static native void nOutput(long j2);

    private static native void nRequestPositionUpdates(long j2, SurfaceView surfaceView);

    @CriticalNative
    private static native boolean nSetAlpha(long j2, float f2);

    @CriticalNative
    private static native boolean nSetAnimationMatrix(long j2, long j3);

    @CriticalNative
    private static native boolean nSetBottom(long j2, int i2);

    @CriticalNative
    private static native boolean nSetCameraDistance(long j2, float f2);

    @CriticalNative
    private static native boolean nSetClipBounds(long j2, int i2, int i3, int i4, int i5);

    @CriticalNative
    private static native boolean nSetClipBoundsEmpty(long j2);

    @CriticalNative
    private static native boolean nSetClipToBounds(long j2, boolean z2);

    @CriticalNative
    private static native boolean nSetClipToOutline(long j2, boolean z2);

    @FastNative
    private static native void nSetDisplayList(long j2, long j3);

    @CriticalNative
    private static native boolean nSetElevation(long j2, float f2);

    @CriticalNative
    private static native boolean nSetHasOverlappingRendering(long j2, boolean z2);

    @CriticalNative
    private static native boolean nSetLayerPaint(long j2, long j3);

    @CriticalNative
    private static native boolean nSetLayerType(long j2, int i2);

    @CriticalNative
    private static native boolean nSetLeft(long j2, int i2);

    @CriticalNative
    private static native boolean nSetLeftTopRightBottom(long j2, int i2, int i3, int i4, int i5);

    @CriticalNative
    private static native boolean nSetOutlineConvexPath(long j2, long j3, float f2);

    @CriticalNative
    private static native boolean nSetOutlineEmpty(long j2);

    @CriticalNative
    private static native boolean nSetOutlineNone(long j2);

    @CriticalNative
    private static native boolean nSetOutlineRoundRect(long j2, int i2, int i3, int i4, int i5, float f2, float f3);

    @CriticalNative
    private static native boolean nSetPivotX(long j2, float f2);

    @CriticalNative
    private static native boolean nSetPivotY(long j2, float f2);

    @CriticalNative
    private static native boolean nSetProjectBackwards(long j2, boolean z2);

    @CriticalNative
    private static native boolean nSetProjectionReceiver(long j2, boolean z2);

    @CriticalNative
    private static native boolean nSetRevealClip(long j2, boolean z2, float f2, float f3, float f4);

    @CriticalNative
    private static native boolean nSetRight(long j2, int i2);

    @CriticalNative
    private static native boolean nSetRotation(long j2, float f2);

    @CriticalNative
    private static native boolean nSetRotationX(long j2, float f2);

    @CriticalNative
    private static native boolean nSetRotationY(long j2, float f2);

    @CriticalNative
    private static native boolean nSetScaleX(long j2, float f2);

    @CriticalNative
    private static native boolean nSetScaleY(long j2, float f2);

    @CriticalNative
    private static native boolean nSetStaticMatrix(long j2, long j3);

    @CriticalNative
    private static native boolean nSetTop(long j2, int i2);

    @CriticalNative
    private static native boolean nSetTranslationX(long j2, float f2);

    @CriticalNative
    private static native boolean nSetTranslationY(long j2, float f2);

    @CriticalNative
    private static native boolean nSetTranslationZ(long j2, float f2);

    public void addAnimator(RenderNodeAnimator renderNodeAnimator) {
        View view = this.mOwningView;
        if (view == null || view.mAttachInfo == null) {
            throw new IllegalStateException("Cannot start this animator on a detached view!");
        }
        nAddAnimator(this.mNativeRenderNode, renderNodeAnimator.getNativeAnimator());
        this.mOwningView.mAttachInfo.mViewRootImpl.registerAnimatingRenderNode(this);
    }

    public void destroy() {
    }

    public void discardDisplayList() {
        nSetDisplayList(this.mNativeRenderNode, 0L);
    }

    public void end(DisplayListCanvas displayListCanvas) {
        nSetDisplayList(this.mNativeRenderNode, displayListCanvas.finishRecording());
        displayListCanvas.recycle();
    }

    public void endAllAnimators() {
        nEndAllAnimators(this.mNativeRenderNode);
    }

    public float getAlpha() {
        return nGetAlpha(this.mNativeRenderNode);
    }

    public float getCameraDistance() {
        return nGetCameraDistance(this.mNativeRenderNode);
    }

    public boolean getClipToOutline() {
        return nGetClipToOutline(this.mNativeRenderNode);
    }

    public int getDebugSize() {
        return nGetDebugSize(this.mNativeRenderNode);
    }

    public float getElevation() {
        return nGetElevation(this.mNativeRenderNode);
    }

    public void getInverseMatrix(Matrix matrix) {
        nGetInverseTransformMatrix(this.mNativeRenderNode, matrix.native_instance);
    }

    public void getMatrix(Matrix matrix) {
        nGetTransformMatrix(this.mNativeRenderNode, matrix.native_instance);
    }

    public long getNativeDisplayList() {
        if (isValid()) {
            return this.mNativeRenderNode;
        }
        throw new IllegalStateException("The display list is not valid.");
    }

    public float getPivotX() {
        return nGetPivotX(this.mNativeRenderNode);
    }

    public float getPivotY() {
        return nGetPivotY(this.mNativeRenderNode);
    }

    public float getRotation() {
        return nGetRotation(this.mNativeRenderNode);
    }

    public float getRotationX() {
        return nGetRotationX(this.mNativeRenderNode);
    }

    public float getRotationY() {
        return nGetRotationY(this.mNativeRenderNode);
    }

    public float getScaleX() {
        return nGetScaleX(this.mNativeRenderNode);
    }

    public float getScaleY() {
        return nGetScaleY(this.mNativeRenderNode);
    }

    public float getTranslationX() {
        return nGetTranslationX(this.mNativeRenderNode);
    }

    public float getTranslationY() {
        return nGetTranslationY(this.mNativeRenderNode);
    }

    public float getTranslationZ() {
        return nGetTranslationZ(this.mNativeRenderNode);
    }

    public boolean hasIdentityMatrix() {
        return nHasIdentityMatrix(this.mNativeRenderNode);
    }

    public boolean hasOverlappingRendering() {
        return nHasOverlappingRendering(this.mNativeRenderNode);
    }

    public boolean hasShadow() {
        return nHasShadow(this.mNativeRenderNode);
    }

    public boolean isAttached() {
        View view = this.mOwningView;
        return (view == null || view.mAttachInfo == null) ? false : true;
    }

    public boolean isPivotExplicitlySet() {
        return nIsPivotExplicitlySet(this.mNativeRenderNode);
    }

    public boolean isValid() {
        return nIsValid(this.mNativeRenderNode);
    }

    public boolean offsetLeftAndRight(int i2) {
        return nOffsetLeftAndRight(this.mNativeRenderNode, i2);
    }

    public boolean offsetTopAndBottom(int i2) {
        return nOffsetTopAndBottom(this.mNativeRenderNode, i2);
    }

    public void output() {
        nOutput(this.mNativeRenderNode);
    }

    public void registerVectorDrawableAnimator(AnimatedVectorDrawable.VectorDrawableAnimatorRT vectorDrawableAnimatorRT) {
        View.AttachInfo attachInfo;
        View view = this.mOwningView;
        if (view == null || (attachInfo = view.mAttachInfo) == null) {
            throw new IllegalStateException("Cannot start this animator on a detached view!");
        }
        attachInfo.mViewRootImpl.registerVectorDrawableAnimator(vectorDrawableAnimatorRT);
    }

    public void requestPositionUpdates(SurfaceView surfaceView) {
        nRequestPositionUpdates(this.mNativeRenderNode, surfaceView);
    }

    public boolean setAlpha(float f2) {
        return nSetAlpha(this.mNativeRenderNode, f2);
    }

    public boolean setAnimationMatrix(Matrix matrix) {
        return nSetAnimationMatrix(this.mNativeRenderNode, matrix != null ? matrix.native_instance : 0L);
    }

    public boolean setBottom(int i2) {
        return nSetBottom(this.mNativeRenderNode, i2);
    }

    public boolean setCameraDistance(float f2) {
        return nSetCameraDistance(this.mNativeRenderNode, f2);
    }

    public boolean setClipBounds(Rect rect) {
        return rect == null ? nSetClipBoundsEmpty(this.mNativeRenderNode) : nSetClipBounds(this.mNativeRenderNode, rect.left, rect.top, rect.right, rect.bottom);
    }

    public boolean setClipToBounds(boolean z2) {
        return nSetClipToBounds(this.mNativeRenderNode, z2);
    }

    public boolean setClipToOutline(boolean z2) {
        return nSetClipToOutline(this.mNativeRenderNode, z2);
    }

    public boolean setElevation(float f2) {
        return nSetElevation(this.mNativeRenderNode, f2);
    }

    public boolean setHasOverlappingRendering(boolean z2) {
        return nSetHasOverlappingRendering(this.mNativeRenderNode, z2);
    }

    public boolean setLayerPaint(Paint paint) {
        return nSetLayerPaint(this.mNativeRenderNode, paint != null ? paint.getNativeInstance() : 0L);
    }

    public boolean setLayerType(int i2) {
        return nSetLayerType(this.mNativeRenderNode, i2);
    }

    public boolean setLeft(int i2) {
        return nSetLeft(this.mNativeRenderNode, i2);
    }

    public boolean setLeftTopRightBottom(int i2, int i3, int i4, int i5) {
        return nSetLeftTopRightBottom(this.mNativeRenderNode, i2, i3, i4, i5);
    }

    public boolean setOutline(Outline outline) {
        if (outline == null) {
            return nSetOutlineNone(this.mNativeRenderNode);
        }
        int i2 = outline.mMode;
        if (i2 == 0) {
            return nSetOutlineEmpty(this.mNativeRenderNode);
        }
        if (i2 != 1) {
            if (i2 == 2) {
                return nSetOutlineConvexPath(this.mNativeRenderNode, outline.mPath.mNativePath, outline.mAlpha);
            }
            throw new IllegalArgumentException("Unrecognized outline?");
        }
        long j2 = this.mNativeRenderNode;
        Rect rect = outline.mRect;
        return nSetOutlineRoundRect(j2, rect.left, rect.top, rect.right, rect.bottom, outline.mRadius, outline.mAlpha);
    }

    public boolean setPivotX(float f2) {
        return nSetPivotX(this.mNativeRenderNode, f2);
    }

    public boolean setPivotY(float f2) {
        return nSetPivotY(this.mNativeRenderNode, f2);
    }

    public boolean setProjectBackwards(boolean z2) {
        return nSetProjectBackwards(this.mNativeRenderNode, z2);
    }

    public boolean setProjectionReceiver(boolean z2) {
        return nSetProjectionReceiver(this.mNativeRenderNode, z2);
    }

    public boolean setRevealClip(boolean z2, float f2, float f3, float f4) {
        return nSetRevealClip(this.mNativeRenderNode, z2, f2, f3, f4);
    }

    public boolean setRight(int i2) {
        return nSetRight(this.mNativeRenderNode, i2);
    }

    public boolean setRotation(float f2) {
        return nSetRotation(this.mNativeRenderNode, f2);
    }

    public boolean setRotationX(float f2) {
        return nSetRotationX(this.mNativeRenderNode, f2);
    }

    public boolean setRotationY(float f2) {
        return nSetRotationY(this.mNativeRenderNode, f2);
    }

    public boolean setScaleX(float f2) {
        return nSetScaleX(this.mNativeRenderNode, f2);
    }

    public boolean setScaleY(float f2) {
        return nSetScaleY(this.mNativeRenderNode, f2);
    }

    public boolean setStaticMatrix(Matrix matrix) {
        return nSetStaticMatrix(this.mNativeRenderNode, matrix.native_instance);
    }

    public boolean setTop(int i2) {
        return nSetTop(this.mNativeRenderNode, i2);
    }

    public boolean setTranslationX(float f2) {
        return nSetTranslationX(this.mNativeRenderNode, f2);
    }

    public boolean setTranslationY(float f2) {
        return nSetTranslationY(this.mNativeRenderNode, f2);
    }

    public boolean setTranslationZ(float f2) {
        return nSetTranslationZ(this.mNativeRenderNode, f2);
    }

    public DisplayListCanvas start(int i2, int i3) {
        return DisplayListCanvas.obtain(this, i2, i3);
    }

    private RenderNode(long j2) {
        this.mNativeRenderNode = j2;
        NoImagePreloadHolder.sRegistry.registerNativeAllocation(this, j2);
        this.mOwningView = null;
    }
}
