package android.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public class ViewOverlay {
    OverlayViewGroup mOverlayViewGroup;

    public ViewOverlay(Context context, View view) {
        this.mOverlayViewGroup = new OverlayViewGroup(context, view);
    }

    public void add(Drawable drawable) {
        this.mOverlayViewGroup.add(drawable);
    }

    public void clear() {
        this.mOverlayViewGroup.clear();
    }

    public ViewGroup getOverlayView() {
        return this.mOverlayViewGroup;
    }

    public boolean isEmpty() {
        return this.mOverlayViewGroup.isEmpty();
    }

    public void remove(Drawable drawable) {
        this.mOverlayViewGroup.remove(drawable);
    }

    public static class OverlayViewGroup extends ViewGroup {
        ArrayList<Drawable> mDrawables;
        final View mHostView;

        public OverlayViewGroup(Context context, View view) {
            super(context);
            this.mDrawables = null;
            this.mHostView = view;
            this.mAttachInfo = view.mAttachInfo;
            this.mRight = view.getWidth();
            int height = view.getHeight();
            this.mBottom = height;
            this.mRenderNode.setLeftTopRightBottom(0, 0, this.mRight, height);
        }

        public void add(Drawable drawable) {
            if (drawable == null) {
                throw new IllegalArgumentException("drawable must be non-null");
            }
            if (this.mDrawables == null) {
                this.mDrawables = new ArrayList<>();
            }
            if (this.mDrawables.contains(drawable)) {
                return;
            }
            this.mDrawables.add(drawable);
            invalidate(drawable.getBounds());
            drawable.setCallback(this);
        }

        public void clear() {
            removeAllViews();
            ArrayList<Drawable> arrayList = this.mDrawables;
            if (arrayList != null) {
                Iterator<Drawable> it = arrayList.iterator();
                while (it.hasNext()) {
                    it.next().setCallback(null);
                }
                this.mDrawables.clear();
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        public void dispatchDraw(Canvas canvas) {
            canvas.insertReorderBarrier();
            super.dispatchDraw(canvas);
            canvas.insertInorderBarrier();
            ArrayList<Drawable> arrayList = this.mDrawables;
            int size = arrayList == null ? 0 : arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.mDrawables.get(i2).draw(canvas);
            }
        }

        @Override // android.view.View
        public void invalidate(Rect rect) {
            super.invalidate(rect);
            View view = this.mHostView;
            if (view != null) {
                view.invalidate(rect);
            }
        }

        @Override // android.view.ViewGroup, android.view.ViewParent
        public ViewParent invalidateChildInParent(int[] iArr, Rect rect) {
            if (this.mHostView == null) {
                return null;
            }
            rect.offset(iArr[0], iArr[1]);
            if (!(this.mHostView instanceof ViewGroup)) {
                invalidate(rect);
                return null;
            }
            iArr[0] = 0;
            iArr[1] = 0;
            super.invalidateChildInParent(iArr, rect);
            return ((ViewGroup) this.mHostView).invalidateChildInParent(iArr, rect);
        }

        @Override // android.view.View, android.graphics.drawable.Drawable.Callback
        public void invalidateDrawable(Drawable drawable) {
            invalidate(drawable.getBounds());
        }

        @Override // android.view.View
        public void invalidateParentCaches() {
            super.invalidateParentCaches();
            View view = this.mHostView;
            if (view != null) {
                view.invalidateParentCaches();
            }
        }

        @Override // android.view.View
        public void invalidateParentIfNeeded() {
            super.invalidateParentIfNeeded();
            View view = this.mHostView;
            if (view != null) {
                view.invalidateParentIfNeeded();
            }
        }

        @Override // android.view.View
        public void invalidateViewProperty(boolean z2, boolean z3) {
            super.invalidateViewProperty(z2, z3);
            View view = this.mHostView;
            if (view != null) {
                view.invalidateViewProperty(z2, z3);
            }
        }

        public boolean isEmpty() {
            if (getChildCount() != 0) {
                return false;
            }
            ArrayList<Drawable> arrayList = this.mDrawables;
            return arrayList == null || arrayList.size() == 0;
        }

        @Override // android.view.ViewGroup, android.view.ViewParent
        public void onDescendantInvalidated(View view, View view2) {
            View view3 = this.mHostView;
            if (view3 != null) {
                if (!(view3 instanceof ViewGroup)) {
                    invalidate();
                } else {
                    ((ViewGroup) view3).onDescendantInvalidated(view3, view2);
                    super.onDescendantInvalidated(view, view2);
                }
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        }

        public void remove(Drawable drawable) {
            if (drawable == null) {
                throw new IllegalArgumentException("drawable must be non-null");
            }
            ArrayList<Drawable> arrayList = this.mDrawables;
            if (arrayList != null) {
                arrayList.remove(drawable);
                invalidate(drawable.getBounds());
                drawable.setCallback(null);
            }
        }

        @Override // android.view.View
        public boolean verifyDrawable(Drawable drawable) {
            ArrayList<Drawable> arrayList;
            return super.verifyDrawable(drawable) || ((arrayList = this.mDrawables) != null && arrayList.contains(drawable));
        }

        @Override // android.view.View
        public void invalidate(int i2, int i3, int i4, int i5) {
            super.invalidate(i2, i3, i4, i5);
            View view = this.mHostView;
            if (view != null) {
                view.invalidate(i2, i3, i4, i5);
            }
        }

        public void remove(View view) {
            if (view != null) {
                super.removeView(view);
                return;
            }
            throw new IllegalArgumentException("view must be non-null");
        }

        @Override // android.view.View
        public void invalidate() {
            super.invalidate();
            View view = this.mHostView;
            if (view != null) {
                view.invalidate();
            }
        }

        public void add(View view) {
            if (view != null) {
                if (view.getParent() instanceof ViewGroup) {
                    ViewGroup viewGroup = (ViewGroup) view.getParent();
                    if (viewGroup != this.mHostView && viewGroup.getParent() != null && viewGroup.mAttachInfo != null) {
                        int[] iArr = new int[2];
                        int[] iArr2 = new int[2];
                        viewGroup.getLocationOnScreen(iArr);
                        this.mHostView.getLocationOnScreen(iArr2);
                        view.offsetLeftAndRight(iArr[0] - iArr2[0]);
                        view.offsetTopAndBottom(iArr[1] - iArr2[1]);
                    }
                    viewGroup.removeView(view);
                    if (viewGroup.getLayoutTransition() != null) {
                        viewGroup.getLayoutTransition().cancel(3);
                    }
                    if (view.getParent() != null) {
                        view.mParent = null;
                    }
                }
                super.addView(view);
                return;
            }
            throw new IllegalArgumentException("view must be non-null");
        }

        @Override // android.view.View
        public void invalidate(boolean z2) {
            super.invalidate(z2);
            View view = this.mHostView;
            if (view != null) {
                view.invalidate(z2);
            }
        }
    }
}
