package android.transition;

import android.accessibilityservice.c;
import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.TypeEvaluator;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.view.DisplayListCanvas;
import android.view.RenderNode;
import android.view.ThreadedRenderer;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;

/* JADX INFO: loaded from: classes2.dex */
public class TransitionUtils {
    private static int MAX_IMAGE_SIZE = 1048576;

    public static class MatrixEvaluator implements TypeEvaluator<Matrix> {
        float[] mTempStartValues = new float[9];
        float[] mTempEndValues = new float[9];
        Matrix mTempMatrix = new Matrix();

        @Override // android.animation.TypeEvaluator
        public Matrix evaluate(float f2, Matrix matrix, Matrix matrix2) {
            matrix.getValues(this.mTempStartValues);
            matrix2.getValues(this.mTempEndValues);
            for (int i2 = 0; i2 < 9; i2++) {
                float[] fArr = this.mTempEndValues;
                float f3 = fArr[i2];
                float f4 = this.mTempStartValues[i2];
                fArr[i2] = c.a(f3, f4, f2, f4);
            }
            this.mTempMatrix.setValues(this.mTempEndValues);
            return this.mTempMatrix;
        }
    }

    public static View copyViewImage(ViewGroup viewGroup, View view, View view2) {
        Matrix matrix = new Matrix();
        matrix.setTranslate(-view2.getScrollX(), -view2.getScrollY());
        view.transformMatrixToGlobal(matrix);
        viewGroup.transformMatrixToLocal(matrix);
        RectF rectF = new RectF(0.0f, 0.0f, view.getWidth(), view.getHeight());
        matrix.mapRect(rectF);
        int iRound = Math.round(rectF.left);
        int iRound2 = Math.round(rectF.top);
        int iRound3 = Math.round(rectF.right);
        int iRound4 = Math.round(rectF.bottom);
        ImageView imageView = new ImageView(view.getContext());
        imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        Bitmap bitmapCreateViewBitmap = createViewBitmap(view, matrix, rectF, viewGroup);
        if (bitmapCreateViewBitmap != null) {
            imageView.setImageBitmap(bitmapCreateViewBitmap);
        }
        imageView.measure(View.MeasureSpec.makeMeasureSpec(iRound3 - iRound, 1073741824), View.MeasureSpec.makeMeasureSpec(iRound4 - iRound2, 1073741824));
        imageView.layout(iRound, iRound2, iRound3, iRound4);
        return imageView;
    }

    public static Bitmap createDrawableBitmap(Drawable drawable, View view) {
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        if (intrinsicWidth <= 0 || intrinsicHeight <= 0) {
            return null;
        }
        float fMin = Math.min(1.0f, MAX_IMAGE_SIZE / (intrinsicWidth * intrinsicHeight));
        if ((drawable instanceof BitmapDrawable) && fMin == 1.0f) {
            return ((BitmapDrawable) drawable).getBitmap();
        }
        RenderNode renderNodeCreate = RenderNode.create("TransitionUtils", view);
        renderNodeCreate.setLeftTopRightBottom(0, 0, intrinsicWidth, intrinsicHeight);
        renderNodeCreate.setClipToBounds(false);
        DisplayListCanvas displayListCanvasStart = renderNodeCreate.start(intrinsicWidth, intrinsicHeight);
        Rect bounds = drawable.getBounds();
        int i2 = bounds.left;
        int i3 = bounds.top;
        int i4 = bounds.right;
        int i5 = bounds.bottom;
        drawable.setBounds(0, 0, (int) (intrinsicWidth * fMin), (int) (intrinsicHeight * fMin));
        drawable.draw(displayListCanvasStart);
        drawable.setBounds(i2, i3, i4, i5);
        renderNodeCreate.end(displayListCanvasStart);
        return ThreadedRenderer.createHardwareBitmap(renderNodeCreate, intrinsicWidth, intrinsicHeight);
    }

    public static Bitmap createViewBitmap(View view, Matrix matrix, RectF rectF, ViewGroup viewGroup) {
        boolean z2 = !view.isAttachedToWindow();
        Bitmap bitmapCreateHardwareBitmap = null;
        if (z2) {
            if (viewGroup == null || !viewGroup.isAttachedToWindow()) {
                return null;
            }
            viewGroup.getOverlay().add(view);
        }
        int iRound = Math.round(rectF.width());
        int iRound2 = Math.round(rectF.height());
        if (iRound > 0 && iRound2 > 0) {
            float fMin = Math.min(1.0f, MAX_IMAGE_SIZE / (iRound * iRound2));
            int i2 = (int) (iRound * fMin);
            int i3 = (int) (iRound2 * fMin);
            matrix.postTranslate(-rectF.left, -rectF.top);
            matrix.postScale(fMin, fMin);
            RenderNode renderNodeCreate = RenderNode.create("TransitionUtils", view);
            renderNodeCreate.setLeftTopRightBottom(0, 0, i2, i3);
            renderNodeCreate.setClipToBounds(false);
            DisplayListCanvas displayListCanvasStart = renderNodeCreate.start(i2, i3);
            displayListCanvasStart.concat(matrix);
            view.draw(displayListCanvasStart);
            renderNodeCreate.end(displayListCanvasStart);
            bitmapCreateHardwareBitmap = ThreadedRenderer.createHardwareBitmap(renderNodeCreate, i2, i3);
        }
        if (z2) {
            viewGroup.getOverlay().remove(view);
        }
        return bitmapCreateHardwareBitmap;
    }

    public static Animator mergeAnimators(Animator animator, Animator animator2) {
        if (animator == null) {
            return animator2;
        }
        if (animator2 == null) {
            return animator;
        }
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(animator, animator2);
        return animatorSet;
    }

    public static Transition mergeTransitions(Transition... transitionArr) {
        int i2 = -1;
        int i3 = 0;
        for (int i4 = 0; i4 < transitionArr.length; i4++) {
            if (transitionArr[i4] != null) {
                i3++;
                i2 = i4;
            }
        }
        if (i3 == 0) {
            return null;
        }
        if (i3 == 1) {
            return transitionArr[i2];
        }
        TransitionSet transitionSet = new TransitionSet();
        for (Transition transition : transitionArr) {
            if (transition != null) {
                transitionSet.addTransition(transition);
            }
        }
        return transitionSet;
    }
}
