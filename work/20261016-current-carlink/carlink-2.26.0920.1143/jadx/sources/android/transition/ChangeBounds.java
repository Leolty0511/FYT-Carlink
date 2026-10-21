package android.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.RectEvaluator;
import android.animation.TypeConverter;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.provider.BrowserContract;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import com.android.internal.R;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class ChangeBounds extends Transition {
    private static final Property<View, PointF> BOTTOM_RIGHT_ONLY_PROPERTY;
    private static final Property<ViewBounds, PointF> BOTTOM_RIGHT_PROPERTY;
    private static final Property<Drawable, PointF> DRAWABLE_ORIGIN_PROPERTY;
    private static final String LOG_TAG = "ChangeBounds";
    private static final Property<View, PointF> POSITION_PROPERTY;
    private static final Property<View, PointF> TOP_LEFT_ONLY_PROPERTY;
    private static final Property<ViewBounds, PointF> TOP_LEFT_PROPERTY;
    boolean mReparent;
    boolean mResizeClip;
    int[] tempLocation;
    private static final String PROPNAME_BOUNDS = "android:changeBounds:bounds";
    private static final String PROPNAME_CLIP = "android:changeBounds:clip";
    private static final String PROPNAME_PARENT = "android:changeBounds:parent";
    private static final String PROPNAME_WINDOW_X = "android:changeBounds:windowX";
    private static final String PROPNAME_WINDOW_Y = "android:changeBounds:windowY";
    private static final String[] sTransitionProperties = {PROPNAME_BOUNDS, PROPNAME_CLIP, PROPNAME_PARENT, PROPNAME_WINDOW_X, PROPNAME_WINDOW_Y};
    private static RectEvaluator sRectEvaluator = new RectEvaluator();

    public static class ViewBounds {
        private int mBottom;
        private int mBottomRightCalls;
        private int mLeft;
        private int mRight;
        private int mTop;
        private int mTopLeftCalls;
        private View mView;

        public ViewBounds(View view) {
            this.mView = view;
        }

        private void setLeftTopRightBottom() {
            this.mView.setLeftTopRightBottom(this.mLeft, this.mTop, this.mRight, this.mBottom);
            this.mTopLeftCalls = 0;
            this.mBottomRightCalls = 0;
        }

        public void setBottomRight(PointF pointF) {
            this.mRight = Math.round(pointF.f73x);
            this.mBottom = Math.round(pointF.f74y);
            int i2 = this.mBottomRightCalls + 1;
            this.mBottomRightCalls = i2;
            if (this.mTopLeftCalls == i2) {
                setLeftTopRightBottom();
            }
        }

        public void setTopLeft(PointF pointF) {
            this.mLeft = Math.round(pointF.f73x);
            this.mTop = Math.round(pointF.f74y);
            int i2 = this.mTopLeftCalls + 1;
            this.mTopLeftCalls = i2;
            if (i2 == this.mBottomRightCalls) {
                setLeftTopRightBottom();
            }
        }
    }

    static {
        Class<PointF> cls = PointF.class;
        DRAWABLE_ORIGIN_PROPERTY = new Property<Drawable, PointF>(cls, "boundsOrigin") { // from class: android.transition.ChangeBounds.1
            private Rect mBounds = new Rect();

            @Override // android.util.Property
            public PointF get(Drawable drawable) {
                drawable.copyBounds(this.mBounds);
                Rect rect = this.mBounds;
                return new PointF(rect.left, rect.top);
            }

            @Override // android.util.Property
            public void set(Drawable drawable, PointF pointF) {
                drawable.copyBounds(this.mBounds);
                this.mBounds.offsetTo(Math.round(pointF.f73x), Math.round(pointF.f74y));
                drawable.setBounds(this.mBounds);
            }
        };
        String str = "topLeft";
        TOP_LEFT_PROPERTY = new Property<ViewBounds, PointF>(cls, str) { // from class: android.transition.ChangeBounds.2
            @Override // android.util.Property
            public PointF get(ViewBounds viewBounds) {
                return null;
            }

            @Override // android.util.Property
            public void set(ViewBounds viewBounds, PointF pointF) {
                viewBounds.setTopLeft(pointF);
            }
        };
        String str2 = "bottomRight";
        BOTTOM_RIGHT_PROPERTY = new Property<ViewBounds, PointF>(cls, str2) { // from class: android.transition.ChangeBounds.3
            @Override // android.util.Property
            public PointF get(ViewBounds viewBounds) {
                return null;
            }

            @Override // android.util.Property
            public void set(ViewBounds viewBounds, PointF pointF) {
                viewBounds.setBottomRight(pointF);
            }
        };
        BOTTOM_RIGHT_ONLY_PROPERTY = new Property<View, PointF>(cls, str2) { // from class: android.transition.ChangeBounds.4
            @Override // android.util.Property
            public PointF get(View view) {
                return null;
            }

            @Override // android.util.Property
            public void set(View view, PointF pointF) {
                view.setLeftTopRightBottom(view.getLeft(), view.getTop(), Math.round(pointF.f73x), Math.round(pointF.f74y));
            }
        };
        TOP_LEFT_ONLY_PROPERTY = new Property<View, PointF>(cls, str) { // from class: android.transition.ChangeBounds.5
            @Override // android.util.Property
            public PointF get(View view) {
                return null;
            }

            @Override // android.util.Property
            public void set(View view, PointF pointF) {
                view.setLeftTopRightBottom(Math.round(pointF.f73x), Math.round(pointF.f74y), view.getRight(), view.getBottom());
            }
        };
        POSITION_PROPERTY = new Property<View, PointF>(cls, BrowserContract.Bookmarks.POSITION) { // from class: android.transition.ChangeBounds.6
            @Override // android.util.Property
            public PointF get(View view) {
                return null;
            }

            @Override // android.util.Property
            public void set(View view, PointF pointF) {
                int iRound = Math.round(pointF.f73x);
                int iRound2 = Math.round(pointF.f74y);
                view.setLeftTopRightBottom(iRound, iRound2, view.getWidth() + iRound, view.getHeight() + iRound2);
            }
        };
    }

    public ChangeBounds() {
        this.tempLocation = new int[2];
        this.mResizeClip = false;
        this.mReparent = false;
    }

    private void captureValues(TransitionValues transitionValues) {
        View view = transitionValues.view;
        if (!view.isLaidOut() && view.getWidth() == 0 && view.getHeight() == 0) {
            return;
        }
        transitionValues.values.put(PROPNAME_BOUNDS, new Rect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom()));
        transitionValues.values.put(PROPNAME_PARENT, transitionValues.view.getParent());
        if (this.mReparent) {
            transitionValues.view.getLocationInWindow(this.tempLocation);
            transitionValues.values.put(PROPNAME_WINDOW_X, Integer.valueOf(this.tempLocation[0]));
            transitionValues.values.put(PROPNAME_WINDOW_Y, Integer.valueOf(this.tempLocation[1]));
        }
        if (this.mResizeClip) {
            transitionValues.values.put(PROPNAME_CLIP, view.getClipBounds());
        }
    }

    private boolean parentMatches(View view, View view2) {
        if (!this.mReparent) {
            return true;
        }
        TransitionValues matchedTransitionValues = getMatchedTransitionValues(view, true);
        if (matchedTransitionValues == null) {
            if (view == view2) {
                return true;
            }
        } else if (view2 == matchedTransitionValues.view) {
            return true;
        }
        return false;
    }

    @Override // android.transition.Transition
    public void captureEndValues(TransitionValues transitionValues) {
        captureValues(transitionValues);
    }

    @Override // android.transition.Transition
    public void captureStartValues(TransitionValues transitionValues) {
        captureValues(transitionValues);
    }

    @Override // android.transition.Transition
    public Animator createAnimator(final ViewGroup viewGroup, TransitionValues transitionValues, TransitionValues transitionValues2) {
        int i2;
        final View view;
        ObjectAnimator objectAnimatorOfObject;
        int i3;
        Rect rect;
        ObjectAnimator objectAnimator;
        Animator animatorMergeAnimators;
        if (transitionValues == null || transitionValues2 == null) {
            return null;
        }
        Map<String, Object> map = transitionValues.values;
        Map<String, Object> map2 = transitionValues2.values;
        ViewGroup viewGroup2 = (ViewGroup) map.get(PROPNAME_PARENT);
        ViewGroup viewGroup3 = (ViewGroup) map2.get(PROPNAME_PARENT);
        if (viewGroup2 == null || viewGroup3 == null) {
            return null;
        }
        final View view2 = transitionValues2.view;
        if (!parentMatches(viewGroup2, viewGroup3)) {
            viewGroup.getLocationInWindow(this.tempLocation);
            int iIntValue = ((Integer) transitionValues.values.get(PROPNAME_WINDOW_X)).intValue() - this.tempLocation[0];
            int iIntValue2 = ((Integer) transitionValues.values.get(PROPNAME_WINDOW_Y)).intValue() - this.tempLocation[1];
            int iIntValue3 = ((Integer) transitionValues2.values.get(PROPNAME_WINDOW_X)).intValue() - this.tempLocation[0];
            int iIntValue4 = ((Integer) transitionValues2.values.get(PROPNAME_WINDOW_Y)).intValue() - this.tempLocation[1];
            if (iIntValue == iIntValue3 && iIntValue2 == iIntValue4) {
                return null;
            }
            int width = view2.getWidth();
            int height = view2.getHeight();
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
            view2.draw(new Canvas(bitmapCreateBitmap));
            final BitmapDrawable bitmapDrawable = new BitmapDrawable(bitmapCreateBitmap);
            bitmapDrawable.setBounds(iIntValue, iIntValue2, width + iIntValue, height + iIntValue2);
            final float transitionAlpha = view2.getTransitionAlpha();
            view2.setTransitionAlpha(0.0f);
            viewGroup.getOverlay().add(bitmapDrawable);
            ObjectAnimator objectAnimatorOfPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(bitmapDrawable, PropertyValuesHolder.ofObject(DRAWABLE_ORIGIN_PROPERTY, (TypeConverter) null, getPathMotion().getPath(iIntValue, iIntValue2, iIntValue3, iIntValue4)));
            objectAnimatorOfPropertyValuesHolder.addListener(new AnimatorListenerAdapter() { // from class: android.transition.ChangeBounds.10
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    viewGroup.getOverlay().remove(bitmapDrawable);
                    view2.setTransitionAlpha(transitionAlpha);
                }
            });
            return objectAnimatorOfPropertyValuesHolder;
        }
        Rect rect2 = (Rect) transitionValues.values.get(PROPNAME_BOUNDS);
        Rect rect3 = (Rect) transitionValues2.values.get(PROPNAME_BOUNDS);
        int i4 = rect2.left;
        final int i5 = rect3.left;
        int i6 = rect2.top;
        final int i7 = rect3.top;
        int i8 = rect2.right;
        final int i9 = rect3.right;
        int i10 = rect2.bottom;
        final int i11 = rect3.bottom;
        int i12 = i8 - i4;
        int i13 = i10 - i6;
        int i14 = i9 - i5;
        int i15 = i11 - i7;
        Rect rect4 = (Rect) transitionValues.values.get(PROPNAME_CLIP);
        final Rect rect5 = (Rect) transitionValues2.values.get(PROPNAME_CLIP);
        if ((i12 == 0 || i13 == 0) && (i14 == 0 || i15 == 0)) {
            i2 = 0;
        } else {
            i2 = (i4 == i5 && i6 == i7) ? 0 : 1;
            if (i8 != i9 || i10 != i11) {
                i2++;
            }
        }
        if ((rect4 != null && !rect4.equals(rect5)) || (rect4 == null && rect5 != null)) {
            i2++;
        }
        if (i2 <= 0) {
            return null;
        }
        if (this.mResizeClip) {
            view.setLeftTopRightBottom(i4, i6, Math.max(i12, i14) + i4, Math.max(i13, i15) + i6);
            if (i4 == i5 && i6 == i7) {
                objectAnimatorOfObject = null;
            } else {
                view = view2;
                objectAnimatorOfObject = ObjectAnimator.ofObject(view, (Property<View, V>) POSITION_PROPERTY, (TypeConverter) null, getPathMotion().getPath(i4, i6, i5, i7));
            }
            if (rect4 == null) {
                i3 = 0;
                rect = new Rect(0, 0, i12, i13);
            } else {
                i3 = 0;
                rect = rect4;
            }
            Rect rect6 = rect5 == null ? new Rect(i3, i3, i14, i15) : rect5;
            if (rect.equals(rect6)) {
                objectAnimator = null;
            } else {
                view.setClipBounds(rect);
                RectEvaluator rectEvaluator = sRectEvaluator;
                Object[] objArr = new Object[2];
                objArr[i3] = rect;
                objArr[1] = rect6;
                ObjectAnimator objectAnimatorOfObject2 = ObjectAnimator.ofObject(view, "clipBounds", rectEvaluator, objArr);
                objectAnimatorOfObject2.addListener(new AnimatorListenerAdapter() { // from class: android.transition.ChangeBounds.8
                    private boolean mIsCanceled;

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationCancel(Animator animator) {
                        this.mIsCanceled = true;
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        if (this.mIsCanceled) {
                            return;
                        }
                        view.setClipBounds(rect5);
                        view.setLeftTopRightBottom(i5, i7, i9, i11);
                    }
                });
                objectAnimator = objectAnimatorOfObject2;
            }
            animatorMergeAnimators = TransitionUtils.mergeAnimators(objectAnimatorOfObject, objectAnimator);
        } else {
            view.setLeftTopRightBottom(i4, i6, i8, i10);
            if (i2 != 2) {
                animatorMergeAnimators = (i4 == i5 && i6 == i7) ? ObjectAnimator.ofObject(view, (Property<View, V>) BOTTOM_RIGHT_ONLY_PROPERTY, (TypeConverter) null, getPathMotion().getPath(i8, i10, i9, i11)) : ObjectAnimator.ofObject(view, (Property<View, V>) TOP_LEFT_ONLY_PROPERTY, (TypeConverter) null, getPathMotion().getPath(i4, i6, i5, i7));
            } else if (i12 == i14 && i13 == i15) {
                animatorMergeAnimators = ObjectAnimator.ofObject(view, (Property<View, V>) POSITION_PROPERTY, (TypeConverter) null, getPathMotion().getPath(i4, i6, i5, i7));
            } else {
                ViewBounds viewBounds = new ViewBounds(view);
                ObjectAnimator objectAnimatorOfObject3 = ObjectAnimator.ofObject(viewBounds, (Property<ViewBounds, V>) TOP_LEFT_PROPERTY, (TypeConverter) null, getPathMotion().getPath(i4, i6, i5, i7));
                ObjectAnimator objectAnimatorOfObject4 = ObjectAnimator.ofObject(viewBounds, (Property<ViewBounds, V>) BOTTOM_RIGHT_PROPERTY, (TypeConverter) null, getPathMotion().getPath(i8, i10, i9, i11));
                AnimatorSet animatorSet = new AnimatorSet();
                animatorSet.playTogether(objectAnimatorOfObject3, objectAnimatorOfObject4);
                animatorSet.addListener(new AnimatorListenerAdapter(viewBounds) { // from class: android.transition.ChangeBounds.7
                    private ViewBounds mViewBounds;
                    final /* synthetic */ ViewBounds val$viewBounds;

                    {
                        this.val$viewBounds = viewBounds;
                        this.mViewBounds = viewBounds;
                    }
                });
                animatorMergeAnimators = animatorSet;
            }
        }
        if (view.getParent() instanceof ViewGroup) {
            final ViewGroup viewGroup4 = (ViewGroup) view.getParent();
            viewGroup4.suppressLayout(true);
            addListener(new TransitionListenerAdapter() { // from class: android.transition.ChangeBounds.9
                boolean mCanceled = false;

                @Override // android.transition.TransitionListenerAdapter, android.transition.Transition.TransitionListener
                public void onTransitionCancel(Transition transition) {
                    viewGroup4.suppressLayout(false);
                    this.mCanceled = true;
                }

                @Override // android.transition.TransitionListenerAdapter, android.transition.Transition.TransitionListener
                public void onTransitionEnd(Transition transition) {
                    if (!this.mCanceled) {
                        viewGroup4.suppressLayout(false);
                    }
                    transition.removeListener(this);
                }

                @Override // android.transition.TransitionListenerAdapter, android.transition.Transition.TransitionListener
                public void onTransitionPause(Transition transition) {
                    viewGroup4.suppressLayout(false);
                }

                @Override // android.transition.TransitionListenerAdapter, android.transition.Transition.TransitionListener
                public void onTransitionResume(Transition transition) {
                    viewGroup4.suppressLayout(true);
                }
            });
        }
        return animatorMergeAnimators;
    }

    public boolean getResizeClip() {
        return this.mResizeClip;
    }

    @Override // android.transition.Transition
    public String[] getTransitionProperties() {
        return sTransitionProperties;
    }

    @Deprecated
    public void setReparent(boolean z2) {
        this.mReparent = z2;
    }

    public void setResizeClip(boolean z2) {
        this.mResizeClip = z2;
    }

    public ChangeBounds(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.tempLocation = new int[2];
        this.mResizeClip = false;
        this.mReparent = false;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ChangeBounds);
        boolean z2 = typedArrayObtainStyledAttributes.getBoolean(0, false);
        typedArrayObtainStyledAttributes.recycle();
        setResizeClip(z2);
    }
}
