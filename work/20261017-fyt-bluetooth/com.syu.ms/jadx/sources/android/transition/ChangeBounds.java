package android.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.RectEvaluator;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.view.View;
import android.view.ViewGroup;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class ChangeBounds extends Transition {
    private static final String LOG_TAG = "ChangeBounds";
    private static final String PROPNAME_BOUNDS = "android:changeBounds:bounds";
    private static final String PROPNAME_PARENT = "android:changeBounds:parent";
    private static final String PROPNAME_WINDOW_X = "android:changeBounds:windowX";
    private static final String PROPNAME_WINDOW_Y = "android:changeBounds:windowY";
    private static final String[] sTransitionProperties = {PROPNAME_BOUNDS, PROPNAME_PARENT, PROPNAME_WINDOW_X, PROPNAME_WINDOW_Y};
    private static RectEvaluator sRectEvaluator = new RectEvaluator();
    public int[] tempLocation = new int[2];
    public boolean mResizeClip = false;
    public boolean mReparent = false;

    private void captureValues(TransitionValues transitionValues) {
        View view = transitionValues.view;
        transitionValues.values.put(PROPNAME_BOUNDS, new Rect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom()));
        transitionValues.values.put(PROPNAME_PARENT, transitionValues.view.getParent());
        transitionValues.view.getLocationInWindow(this.tempLocation);
        transitionValues.values.put(PROPNAME_WINDOW_X, Integer.valueOf(this.tempLocation[0]));
        transitionValues.values.put(PROPNAME_WINDOW_Y, Integer.valueOf(this.tempLocation[1]));
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
        char c2;
        int i2;
        boolean z2;
        char c3;
        char c4;
        int i3;
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
        final View view = transitionValues2.view;
        int i4 = 0;
        boolean z3 = viewGroup2 == viewGroup3 || viewGroup2.getId() == viewGroup3.getId();
        if (this.mReparent && !z3) {
            int iIntValue = ((Integer) transitionValues.values.get(PROPNAME_WINDOW_X)).intValue();
            int iIntValue2 = ((Integer) transitionValues.values.get(PROPNAME_WINDOW_Y)).intValue();
            int iIntValue3 = ((Integer) transitionValues2.values.get(PROPNAME_WINDOW_X)).intValue();
            int iIntValue4 = ((Integer) transitionValues2.values.get(PROPNAME_WINDOW_Y)).intValue();
            if (iIntValue == iIntValue3 && iIntValue2 == iIntValue4) {
                return null;
            }
            viewGroup.getLocationInWindow(this.tempLocation);
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(view.getWidth(), view.getHeight(), Bitmap.Config.ARGB_8888);
            view.draw(new Canvas(bitmapCreateBitmap));
            final BitmapDrawable bitmapDrawable = new BitmapDrawable(bitmapCreateBitmap);
            view.setVisibility(4);
            viewGroup.getOverlay().add(bitmapDrawable);
            int[] iArr = this.tempLocation;
            Rect rect = new Rect(iIntValue - iArr[0], iIntValue2 - iArr[1], (iIntValue - iArr[0]) + view.getWidth(), (iIntValue2 - this.tempLocation[1]) + view.getHeight());
            int[] iArr2 = this.tempLocation;
            ObjectAnimator objectAnimatorOfObject = ObjectAnimator.ofObject(bitmapDrawable, "bounds", sRectEvaluator, rect, new Rect(iIntValue3 - iArr2[0], iIntValue4 - iArr2[1], (iIntValue3 - iArr2[0]) + view.getWidth(), (iIntValue4 - this.tempLocation[1]) + view.getHeight()));
            objectAnimatorOfObject.addListener(new AnimatorListenerAdapter() { // from class: android.transition.ChangeBounds.4
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    viewGroup.getOverlay().remove(bitmapDrawable);
                    view.setVisibility(0);
                }
            });
            return objectAnimatorOfObject;
        }
        Rect rect2 = (Rect) transitionValues.values.get(PROPNAME_BOUNDS);
        Rect rect3 = (Rect) transitionValues2.values.get(PROPNAME_BOUNDS);
        int i5 = rect2.left;
        int i6 = rect3.left;
        int i7 = rect2.top;
        int i8 = rect3.top;
        int i9 = rect2.right;
        int i10 = rect3.right;
        int i11 = rect2.bottom;
        int i12 = rect3.bottom;
        int i13 = i9 - i5;
        int i14 = i11 - i7;
        int i15 = i10 - i6;
        int i16 = i12 - i8;
        if (i13 != 0 && i14 != 0 && i15 != 0 && i16 != 0) {
            int i17 = i5 != i6 ? 1 : 0;
            if (i7 != i8) {
                i17++;
            }
            if (i9 != i10) {
                i17++;
            }
            if (i11 != i12) {
                i17++;
            }
            i4 = i17;
        }
        if (i4 <= 0) {
            return null;
        }
        if (!this.mResizeClip) {
            PropertyValuesHolder[] propertyValuesHolderArr = new PropertyValuesHolder[i4];
            if (i5 != i6) {
                view.setLeft(i5);
            }
            if (i7 != i8) {
                view.setTop(i7);
            }
            if (i9 != i10) {
                view.setRight(i9);
            }
            if (i11 != i12) {
                view.setBottom(i11);
            }
            if (i5 != i6) {
                c3 = 0;
                c4 = 1;
                propertyValuesHolderArr[0] = PropertyValuesHolder.ofInt("left", i5, i6);
                i3 = 1;
            } else {
                c3 = 0;
                c4 = 1;
                i3 = 0;
            }
            if (i7 != i8) {
                int[] iArr3 = new int[2];
                iArr3[c3] = i7;
                iArr3[c4] = i8;
                propertyValuesHolderArr[i3] = PropertyValuesHolder.ofInt("top", iArr3);
                i3++;
            }
            if (i9 != i10) {
                int[] iArr4 = new int[2];
                iArr4[c3] = i9;
                iArr4[c4] = i10;
                propertyValuesHolderArr[i3] = PropertyValuesHolder.ofInt("right", iArr4);
                i3++;
            }
            if (i11 != i12) {
                int[] iArr5 = new int[2];
                iArr5[c3] = i11;
                iArr5[c4] = i12;
                propertyValuesHolderArr[i3] = PropertyValuesHolder.ofInt("bottom", iArr5);
            }
            ObjectAnimator objectAnimatorOfPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(view, propertyValuesHolderArr);
            if (view.getParent() instanceof ViewGroup) {
                final ViewGroup viewGroup4 = (ViewGroup) view.getParent();
                viewGroup4.suppressLayout(true);
                addListener(new Transition.TransitionListenerAdapter() { // from class: android.transition.ChangeBounds.1
                    public boolean mCanceled = false;

                    @Override // android.transition.Transition.TransitionListenerAdapter, android.transition.Transition.TransitionListener
                    public void onTransitionCancel(Transition transition) {
                        viewGroup4.suppressLayout(false);
                        this.mCanceled = true;
                    }

                    @Override // android.transition.Transition.TransitionListenerAdapter, android.transition.Transition.TransitionListener
                    public void onTransitionEnd(Transition transition) {
                        if (this.mCanceled) {
                            return;
                        }
                        viewGroup4.suppressLayout(false);
                    }

                    @Override // android.transition.Transition.TransitionListenerAdapter, android.transition.Transition.TransitionListener
                    public void onTransitionPause(Transition transition) {
                        viewGroup4.suppressLayout(false);
                    }

                    @Override // android.transition.Transition.TransitionListenerAdapter, android.transition.Transition.TransitionListener
                    public void onTransitionResume(Transition transition) {
                        viewGroup4.suppressLayout(true);
                    }
                });
            }
            return objectAnimatorOfPropertyValuesHolder;
        }
        if (i13 != i15) {
            view.setRight(Math.max(i13, i15) + i6);
        }
        if (i14 != i16) {
            view.setBottom(Math.max(i14, i16) + i8);
        }
        if (i5 != i6) {
            view.setTranslationX(i5 - i6);
        }
        if (i7 != i8) {
            view.setTranslationY(i7 - i8);
        }
        float f2 = i6 - i5;
        float f3 = i8 - i7;
        int i18 = i15 - i13;
        int i19 = i16 - i14;
        int i20 = f2 != 0.0f ? 1 : 0;
        if (f3 != 0.0f) {
            i20++;
        }
        if (i18 != 0 || i19 != 0) {
            i20++;
        }
        PropertyValuesHolder[] propertyValuesHolderArr2 = new PropertyValuesHolder[i20];
        if (f2 != 0.0f) {
            c2 = 0;
            propertyValuesHolderArr2[0] = PropertyValuesHolder.ofFloat("translationX", view.getTranslationX(), 0.0f);
            i2 = 1;
        } else {
            c2 = 0;
            i2 = 0;
        }
        if (f3 != 0.0f) {
            float[] fArr = new float[2];
            fArr[c2] = view.getTranslationY();
            fArr[1] = 0.0f;
            propertyValuesHolderArr2[i2] = PropertyValuesHolder.ofFloat("translationY", fArr);
            i2++;
        }
        if (i18 == 0 && i19 == 0) {
            z2 = true;
        } else {
            z2 = true;
            propertyValuesHolderArr2[i2] = PropertyValuesHolder.ofObject("clipBounds", sRectEvaluator, new Rect(0, 0, i13, i14), new Rect(0, 0, i15, i16));
        }
        ObjectAnimator objectAnimatorOfPropertyValuesHolder2 = ObjectAnimator.ofPropertyValuesHolder(view, propertyValuesHolderArr2);
        if (view.getParent() instanceof ViewGroup) {
            final ViewGroup viewGroup5 = (ViewGroup) view.getParent();
            viewGroup5.suppressLayout(z2);
            addListener(new Transition.TransitionListenerAdapter() { // from class: android.transition.ChangeBounds.2
                public boolean mCanceled = false;

                @Override // android.transition.Transition.TransitionListenerAdapter, android.transition.Transition.TransitionListener
                public void onTransitionCancel(Transition transition) {
                    viewGroup5.suppressLayout(false);
                    this.mCanceled = true;
                }

                @Override // android.transition.Transition.TransitionListenerAdapter, android.transition.Transition.TransitionListener
                public void onTransitionEnd(Transition transition) {
                    if (this.mCanceled) {
                        return;
                    }
                    viewGroup5.suppressLayout(false);
                }

                @Override // android.transition.Transition.TransitionListenerAdapter, android.transition.Transition.TransitionListener
                public void onTransitionPause(Transition transition) {
                    viewGroup5.suppressLayout(false);
                }

                @Override // android.transition.Transition.TransitionListenerAdapter, android.transition.Transition.TransitionListener
                public void onTransitionResume(Transition transition) {
                    viewGroup5.suppressLayout(true);
                }
            });
        }
        objectAnimatorOfPropertyValuesHolder2.addListener(new AnimatorListenerAdapter() { // from class: android.transition.ChangeBounds.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                view.setClipBounds(null);
            }
        });
        return objectAnimatorOfPropertyValuesHolder2;
    }

    @Override // android.transition.Transition
    public String[] getTransitionProperties() {
        return sTransitionProperties;
    }

    public void setReparent(boolean z2) {
        this.mReparent = z2;
    }

    public void setResizeClip(boolean z2) {
        this.mResizeClip = z2;
    }
}
