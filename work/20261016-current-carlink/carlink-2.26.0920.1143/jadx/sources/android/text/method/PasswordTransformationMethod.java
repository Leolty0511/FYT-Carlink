package android.text.method;

import android.graphics.Rect;
import android.os.Handler;
import android.os.SystemClock;
import android.text.Editable;
import android.text.GetChars;
import android.text.NoCopySpan;
import android.text.Spannable;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.UpdateLayout;
import android.view.View;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes2.dex */
public class PasswordTransformationMethod implements TransformationMethod, TextWatcher {
    private static char DOT = 8226;
    private static PasswordTransformationMethod sInstance;

    public static class PasswordCharSequence implements CharSequence, GetChars {
        private CharSequence mSource;

        public PasswordCharSequence(CharSequence charSequence) {
            this.mSource = charSequence;
        }

        @Override // java.lang.CharSequence
        public char charAt(int i2) {
            CharSequence charSequence = this.mSource;
            if (charSequence instanceof Spanned) {
                Spanned spanned = (Spanned) charSequence;
                Object obj = TextKeyListener.ACTIVE;
                int spanStart = spanned.getSpanStart(obj);
                int spanEnd = spanned.getSpanEnd(obj);
                if (i2 >= spanStart && i2 < spanEnd) {
                    return this.mSource.charAt(i2);
                }
                Visible[] visibleArr = (Visible[]) spanned.getSpans(0, spanned.length(), Visible.class);
                for (int i3 = 0; i3 < visibleArr.length; i3++) {
                    if (spanned.getSpanStart(visibleArr[i3].mTransformer) >= 0) {
                        int spanStart2 = spanned.getSpanStart(visibleArr[i3]);
                        int spanEnd2 = spanned.getSpanEnd(visibleArr[i3]);
                        if (i2 >= spanStart2 && i2 < spanEnd2) {
                            return this.mSource.charAt(i2);
                        }
                    }
                }
            }
            return PasswordTransformationMethod.DOT;
        }

        @Override // android.text.GetChars
        public void getChars(int i2, int i3, char[] cArr, int i4) {
            int spanStart;
            int[] iArr;
            int length;
            int spanEnd;
            int[] iArr2;
            boolean z2;
            TextUtils.getChars(this.mSource, i2, i3, cArr, i4);
            CharSequence charSequence = this.mSource;
            if (charSequence instanceof Spanned) {
                Spanned spanned = (Spanned) charSequence;
                Object obj = TextKeyListener.ACTIVE;
                spanStart = spanned.getSpanStart(obj);
                spanEnd = spanned.getSpanEnd(obj);
                Visible[] visibleArr = (Visible[]) spanned.getSpans(0, spanned.length(), Visible.class);
                length = visibleArr.length;
                iArr = new int[length];
                iArr2 = new int[length];
                for (int i5 = 0; i5 < length; i5++) {
                    if (spanned.getSpanStart(visibleArr[i5].mTransformer) >= 0) {
                        iArr[i5] = spanned.getSpanStart(visibleArr[i5]);
                        iArr2[i5] = spanned.getSpanEnd(visibleArr[i5]);
                    }
                }
            } else {
                spanStart = -1;
                iArr = null;
                length = 0;
                spanEnd = -1;
                iArr2 = null;
            }
            for (int i6 = i2; i6 < i3; i6++) {
                if (i6 < spanStart || i6 >= spanEnd) {
                    int i7 = 0;
                    while (true) {
                        if (i7 >= length) {
                            z2 = false;
                            break;
                        } else {
                            if (i6 >= iArr[i7] && i6 < iArr2[i7]) {
                                z2 = true;
                                break;
                            }
                            i7++;
                        }
                    }
                    if (!z2) {
                        cArr[(i6 - i2) + i4] = PasswordTransformationMethod.DOT;
                    }
                }
            }
        }

        @Override // java.lang.CharSequence
        public int length() {
            return this.mSource.length();
        }

        @Override // java.lang.CharSequence
        public CharSequence subSequence(int i2, int i3) {
            char[] cArr = new char[i3 - i2];
            getChars(i2, i3, cArr, 0);
            return new String(cArr);
        }

        @Override // java.lang.CharSequence
        public String toString() {
            return subSequence(0, length()).toString();
        }
    }

    public static class ViewReference extends WeakReference<View> implements NoCopySpan {
        public ViewReference(View view) {
            super(view);
        }
    }

    public static class Visible extends Handler implements UpdateLayout, Runnable {
        private Spannable mText;
        private PasswordTransformationMethod mTransformer;

        public Visible(Spannable spannable, PasswordTransformationMethod passwordTransformationMethod) {
            this.mText = spannable;
            this.mTransformer = passwordTransformationMethod;
            postAtTime(this, SystemClock.uptimeMillis() + 1500);
        }

        @Override // java.lang.Runnable
        public void run() {
            this.mText.removeSpan(this);
        }
    }

    public static PasswordTransformationMethod getInstance() {
        PasswordTransformationMethod passwordTransformationMethod = sInstance;
        if (passwordTransformationMethod != null) {
            return passwordTransformationMethod;
        }
        PasswordTransformationMethod passwordTransformationMethod2 = new PasswordTransformationMethod();
        sInstance = passwordTransformationMethod2;
        return passwordTransformationMethod2;
    }

    private static void removeVisibleSpans(Spannable spannable) {
        for (Visible visible : (Visible[]) spannable.getSpans(0, spannable.length(), Visible.class)) {
            spannable.removeSpan(visible);
        }
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
    }

    @Override // android.text.method.TransformationMethod
    public CharSequence getTransformation(CharSequence charSequence, View view) {
        if (charSequence instanceof Spannable) {
            Spannable spannable = (Spannable) charSequence;
            for (ViewReference viewReference : (ViewReference[]) spannable.getSpans(0, spannable.length(), ViewReference.class)) {
                spannable.removeSpan(viewReference);
            }
            removeVisibleSpans(spannable);
            spannable.setSpan(new ViewReference(view), 0, 0, 34);
        }
        return new PasswordCharSequence(charSequence);
    }

    @Override // android.text.method.TransformationMethod
    public void onFocusChanged(View view, CharSequence charSequence, boolean z2, int i2, Rect rect) {
        if (z2 || !(charSequence instanceof Spannable)) {
            return;
        }
        removeVisibleSpans((Spannable) charSequence);
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
        if (charSequence instanceof Spannable) {
            Spannable spannable = (Spannable) charSequence;
            ViewReference[] viewReferenceArr = (ViewReference[]) spannable.getSpans(0, charSequence.length(), ViewReference.class);
            if (viewReferenceArr.length == 0) {
                return;
            }
            View view = null;
            for (int i5 = 0; view == null && i5 < viewReferenceArr.length; i5++) {
                view = viewReferenceArr[i5].get();
            }
            if (view == null || (TextKeyListener.getInstance().getPrefs(view.getContext()) & 8) == 0 || i4 <= 0) {
                return;
            }
            removeVisibleSpans(spannable);
            if (i4 == 1) {
                spannable.setSpan(new Visible(spannable, this), i2, i4 + i2, 33);
            }
        }
    }
}
