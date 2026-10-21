package android.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.graphics.Color;
import android.net.ProxyProperties;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class ChangeText extends Transition {
    public static final int CHANGE_BEHAVIOR_IN = 2;
    public static final int CHANGE_BEHAVIOR_KEEP = 0;
    public static final int CHANGE_BEHAVIOR_OUT = 1;
    public static final int CHANGE_BEHAVIOR_OUT_IN = 3;
    private static final String LOG_TAG = "TextChange";
    private static final String PROPNAME_TEXT_COLOR = "android:textchange:textColor";
    private int mChangeBehavior = 0;
    private static final String PROPNAME_TEXT = "android:textchange:text";
    private static final String PROPNAME_TEXT_SELECTION_START = "android:textchange:textSelectionStart";
    private static final String PROPNAME_TEXT_SELECTION_END = "android:textchange:textSelectionEnd";
    private static final String[] sTransitionProperties = {PROPNAME_TEXT, PROPNAME_TEXT_SELECTION_START, PROPNAME_TEXT_SELECTION_END};

    private void captureValues(TransitionValues transitionValues) {
        View view = transitionValues.view;
        if (view instanceof TextView) {
            TextView textView = (TextView) view;
            transitionValues.values.put(PROPNAME_TEXT, textView.getText());
            if (textView instanceof EditText) {
                transitionValues.values.put(PROPNAME_TEXT_SELECTION_START, Integer.valueOf(textView.getSelectionStart()));
                transitionValues.values.put(PROPNAME_TEXT_SELECTION_END, Integer.valueOf(textView.getSelectionEnd()));
            }
            if (this.mChangeBehavior > 0) {
                transitionValues.values.put(PROPNAME_TEXT_COLOR, Integer.valueOf(textView.getCurrentTextColor()));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSelection(EditText editText, int i2, int i3) {
        if (i2 < 0 || i3 < 0) {
            return;
        }
        editText.setSelection(i2, i3);
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
    public Animator createAnimator(ViewGroup viewGroup, TransitionValues transitionValues, TransitionValues transitionValues2) {
        int i2;
        int i3;
        int iIntValue;
        int i4;
        int i5;
        ValueAnimator valueAnimatorOfFloat;
        ValueAnimator valueAnimatorOfInt;
        final int i6;
        Animator animator;
        final int i7;
        if (transitionValues == null || transitionValues2 == null || !(transitionValues.view instanceof TextView)) {
            return null;
        }
        View view = transitionValues2.view;
        if (!(view instanceof TextView)) {
            return null;
        }
        final TextView textView = (TextView) view;
        Map<String, Object> map = transitionValues.values;
        Map<String, Object> map2 = transitionValues2.values;
        CharSequence charSequence = map.get(PROPNAME_TEXT) != null ? (CharSequence) map.get(PROPNAME_TEXT) : ProxyProperties.LOCAL_EXCL_LIST;
        CharSequence charSequence2 = map2.get(PROPNAME_TEXT) != null ? (CharSequence) map2.get(PROPNAME_TEXT) : ProxyProperties.LOCAL_EXCL_LIST;
        if (textView instanceof EditText) {
            int iIntValue2 = map.get(PROPNAME_TEXT_SELECTION_START) != null ? ((Integer) map.get(PROPNAME_TEXT_SELECTION_START)).intValue() : -1;
            int iIntValue3 = map.get(PROPNAME_TEXT_SELECTION_END) != null ? ((Integer) map.get(PROPNAME_TEXT_SELECTION_END)).intValue() : iIntValue2;
            int iIntValue4 = map2.get(PROPNAME_TEXT_SELECTION_START) != null ? ((Integer) map2.get(PROPNAME_TEXT_SELECTION_START)).intValue() : -1;
            iIntValue = map2.get(PROPNAME_TEXT_SELECTION_END) != null ? ((Integer) map2.get(PROPNAME_TEXT_SELECTION_END)).intValue() : iIntValue4;
            i3 = iIntValue4;
            i4 = iIntValue2;
            i2 = iIntValue3;
        } else {
            i2 = -1;
            i3 = -1;
            iIntValue = -1;
            i4 = -1;
        }
        if (charSequence.equals(charSequence2)) {
            return null;
        }
        if (this.mChangeBehavior != 2) {
            textView.setText(charSequence);
            if (textView instanceof EditText) {
                setSelection((EditText) textView, i4, i2);
            }
        }
        if (this.mChangeBehavior != 0) {
            i5 = i2;
            final int iIntValue5 = ((Integer) map.get(PROPNAME_TEXT_COLOR)).intValue();
            final int iIntValue6 = ((Integer) map2.get(PROPNAME_TEXT_COLOR)).intValue();
            int i8 = this.mChangeBehavior;
            if (i8 == 3 || i8 == 1) {
                ValueAnimator valueAnimatorOfInt2 = ValueAnimator.ofInt(255, 0);
                valueAnimatorOfInt2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: android.transition.ChangeText.2
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public void onAnimationUpdate(ValueAnimator valueAnimator) {
                        int iIntValue7 = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                        TextView textView2 = textView;
                        int i9 = iIntValue5;
                        textView2.setTextColor((iIntValue7 << 24) | (16711680 & i9) | (65280 & i9) | (i9 & 255));
                    }
                });
                final CharSequence charSequence3 = charSequence;
                final CharSequence charSequence4 = charSequence2;
                final int i9 = i3;
                final int i10 = iIntValue;
                valueAnimatorOfInt2.addListener(new AnimatorListenerAdapter() { // from class: android.transition.ChangeText.3
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator2) {
                        if (charSequence3.equals(textView.getText())) {
                            textView.setText(charSequence4);
                            TextView textView2 = textView;
                            if (textView2 instanceof EditText) {
                                ChangeText.this.setSelection((EditText) textView2, i9, i10);
                            }
                        }
                        textView.setTextColor(iIntValue6);
                    }
                });
                valueAnimatorOfFloat = valueAnimatorOfInt2;
            } else {
                valueAnimatorOfFloat = null;
            }
            int i11 = this.mChangeBehavior;
            if (i11 == 3 || i11 == 2) {
                valueAnimatorOfInt = ValueAnimator.ofInt(0, 255);
                i6 = iIntValue6;
                valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: android.transition.ChangeText.4
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public void onAnimationUpdate(ValueAnimator valueAnimator) {
                        textView.setTextColor((((Integer) valueAnimator.getAnimatedValue()).intValue() << 24) | (Color.red(i6) << 16) | (Color.green(i6) << 8) | Color.red(i6));
                    }
                });
                valueAnimatorOfInt.addListener(new AnimatorListenerAdapter() { // from class: android.transition.ChangeText.5
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationCancel(Animator animator2) {
                        textView.setTextColor(i6);
                    }
                });
            } else {
                i6 = iIntValue6;
                valueAnimatorOfInt = null;
            }
            if (valueAnimatorOfFloat != null && valueAnimatorOfInt != null) {
                AnimatorSet animatorSet = new AnimatorSet();
                animatorSet.playSequentially(valueAnimatorOfFloat, valueAnimatorOfInt);
                animator = animatorSet;
            } else if (valueAnimatorOfFloat != null) {
                i7 = i6;
            } else {
                animator = valueAnimatorOfInt;
            }
            i7 = i6;
            final CharSequence charSequence5 = charSequence2;
            final int i12 = i3;
            final int i13 = iIntValue;
            final CharSequence charSequence6 = charSequence;
            final int i14 = i4;
            final int i15 = i5;
            addListener(new Transition.TransitionListenerAdapter() { // from class: android.transition.ChangeText.6
                public int mPausedColor = 0;

                @Override // android.transition.Transition.TransitionListenerAdapter, android.transition.Transition.TransitionListener
                public void onTransitionPause(Transition transition) {
                    if (ChangeText.this.mChangeBehavior != 2) {
                        textView.setText(charSequence5);
                        TextView textView2 = textView;
                        if (textView2 instanceof EditText) {
                            ChangeText.this.setSelection((EditText) textView2, i12, i13);
                        }
                    }
                    if (ChangeText.this.mChangeBehavior > 0) {
                        this.mPausedColor = textView.getCurrentTextColor();
                        textView.setTextColor(i7);
                    }
                }

                @Override // android.transition.Transition.TransitionListenerAdapter, android.transition.Transition.TransitionListener
                public void onTransitionResume(Transition transition) {
                    if (ChangeText.this.mChangeBehavior != 2) {
                        textView.setText(charSequence6);
                        TextView textView2 = textView;
                        if (textView2 instanceof EditText) {
                            ChangeText.this.setSelection((EditText) textView2, i14, i15);
                        }
                    }
                    if (ChangeText.this.mChangeBehavior > 0) {
                        textView.setTextColor(this.mPausedColor);
                    }
                }
            });
            return animator;
        }
        valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        final CharSequence charSequence7 = charSequence;
        final CharSequence charSequence8 = charSequence2;
        final int i16 = i3;
        final int i17 = iIntValue;
        valueAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: android.transition.ChangeText.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator2) {
                if (charSequence7.equals(textView.getText())) {
                    textView.setText(charSequence8);
                    TextView textView2 = textView;
                    if (textView2 instanceof EditText) {
                        ChangeText.this.setSelection((EditText) textView2, i16, i17);
                    }
                }
            }
        });
        i5 = i2;
        charSequence = charSequence;
        i4 = i4;
        i7 = 0;
        animator = valueAnimatorOfFloat;
        final CharSequence charSequence9 = charSequence2;
        final int i18 = i3;
        final int i19 = iIntValue;
        final CharSequence charSequence10 = charSequence;
        final int i110 = i4;
        final int i111 = i5;
        addListener(new Transition.TransitionListenerAdapter() { // from class: android.transition.ChangeText.6
            public int mPausedColor = 0;

            @Override // android.transition.Transition.TransitionListenerAdapter, android.transition.Transition.TransitionListener
            public void onTransitionPause(Transition transition) {
                if (ChangeText.this.mChangeBehavior != 2) {
                    textView.setText(charSequence9);
                    TextView textView2 = textView;
                    if (textView2 instanceof EditText) {
                        ChangeText.this.setSelection((EditText) textView2, i18, i19);
                    }
                }
                if (ChangeText.this.mChangeBehavior > 0) {
                    this.mPausedColor = textView.getCurrentTextColor();
                    textView.setTextColor(i7);
                }
            }

            @Override // android.transition.Transition.TransitionListenerAdapter, android.transition.Transition.TransitionListener
            public void onTransitionResume(Transition transition) {
                if (ChangeText.this.mChangeBehavior != 2) {
                    textView.setText(charSequence10);
                    TextView textView2 = textView;
                    if (textView2 instanceof EditText) {
                        ChangeText.this.setSelection((EditText) textView2, i110, i111);
                    }
                }
                if (ChangeText.this.mChangeBehavior > 0) {
                    textView.setTextColor(this.mPausedColor);
                }
            }
        });
        return animator;
    }

    public int getChangeBehavior() {
        return this.mChangeBehavior;
    }

    @Override // android.transition.Transition
    public String[] getTransitionProperties() {
        return sTransitionProperties;
    }

    public ChangeText setChangeBehavior(int i2) {
        if (i2 >= 0 && i2 <= 3) {
            this.mChangeBehavior = i2;
        }
        return this;
    }
}
