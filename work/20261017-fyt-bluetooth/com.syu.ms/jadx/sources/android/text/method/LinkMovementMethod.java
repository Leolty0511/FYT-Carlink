package android.text.method;

import android.text.Layout;
import android.text.NoCopySpan;
import android.text.Selection;
import android.text.Spannable;
import android.text.style.ClickableSpan;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
public class LinkMovementMethod extends ScrollingMovementMethod {
    private static final int CLICK = 1;
    private static final int DOWN = 3;
    private static Object FROM_BELOW = new NoCopySpan.Concrete();
    private static final int UP = 2;
    private static LinkMovementMethod sInstance;

    private boolean action(int i2, TextView textView, Spannable spannable) {
        Layout layout = textView.getLayout();
        int totalPaddingTop = textView.getTotalPaddingTop() + textView.getTotalPaddingBottom();
        int scrollY = textView.getScrollY();
        int height = (textView.getHeight() + scrollY) - totalPaddingTop;
        int lineForVertical = layout.getLineForVertical(scrollY);
        int lineForVertical2 = layout.getLineForVertical(height);
        int lineStart = layout.getLineStart(lineForVertical);
        int lineEnd = layout.getLineEnd(lineForVertical2);
        ClickableSpan[] clickableSpanArr = (ClickableSpan[]) spannable.getSpans(lineStart, lineEnd, ClickableSpan.class);
        int selectionStart = Selection.getSelectionStart(spannable);
        int selectionEnd = Selection.getSelectionEnd(spannable);
        int iMin = Math.min(selectionStart, selectionEnd);
        int iMax = Math.max(selectionStart, selectionEnd);
        if (iMin < 0 && spannable.getSpanStart(FROM_BELOW) >= 0) {
            iMin = spannable.length();
            iMax = iMin;
        }
        if (iMin > lineEnd) {
            iMax = Integer.MAX_VALUE;
            iMin = Integer.MAX_VALUE;
        }
        int spanStart = -1;
        if (iMax < lineStart) {
            iMax = -1;
            iMin = -1;
        }
        if (i2 == 1) {
            if (iMin == iMax) {
                return false;
            }
            ClickableSpan[] clickableSpanArr2 = (ClickableSpan[]) spannable.getSpans(iMin, iMax, ClickableSpan.class);
            if (clickableSpanArr2.length != 1) {
                return false;
            }
            clickableSpanArr2[0].onClick(textView);
        } else if (i2 == 2) {
            int i3 = -1;
            for (int i4 = 0; i4 < clickableSpanArr.length; i4++) {
                int spanEnd = spannable.getSpanEnd(clickableSpanArr[i4]);
                if ((spanEnd < iMax || iMin == iMax) && spanEnd > i3) {
                    spanStart = spannable.getSpanStart(clickableSpanArr[i4]);
                    i3 = spanEnd;
                }
            }
            if (spanStart >= 0) {
                Selection.setSelection(spannable, i3, spanStart);
                return true;
            }
        } else if (i2 == 3) {
            int spanEnd2 = Integer.MAX_VALUE;
            int i5 = Integer.MAX_VALUE;
            for (int i6 = 0; i6 < clickableSpanArr.length; i6++) {
                int spanStart2 = spannable.getSpanStart(clickableSpanArr[i6]);
                if ((spanStart2 > iMin || iMin == iMax) && spanStart2 < i5) {
                    spanEnd2 = spannable.getSpanEnd(clickableSpanArr[i6]);
                    i5 = spanStart2;
                }
            }
            if (spanEnd2 < Integer.MAX_VALUE) {
                Selection.setSelection(spannable, i5, spanEnd2);
                return true;
            }
        }
        return false;
    }

    public static MovementMethod getInstance() {
        if (sInstance == null) {
            sInstance = new LinkMovementMethod();
        }
        return sInstance;
    }

    @Override // android.text.method.BaseMovementMethod, android.text.method.MovementMethod
    public boolean canSelectArbitrarily() {
        return true;
    }

    @Override // android.text.method.ScrollingMovementMethod, android.text.method.BaseMovementMethod
    public boolean down(TextView textView, Spannable spannable) {
        if (action(3, textView, spannable)) {
            return true;
        }
        return super.down(textView, spannable);
    }

    @Override // android.text.method.BaseMovementMethod
    public boolean handleMovementKey(TextView textView, Spannable spannable, int i2, int i3, KeyEvent keyEvent) {
        if ((i2 == 23 || i2 == 66) && KeyEvent.metaStateHasNoModifiers(i3) && keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0 && action(1, textView, spannable)) {
            return true;
        }
        return super.handleMovementKey(textView, spannable, i2, i3, keyEvent);
    }

    @Override // android.text.method.BaseMovementMethod, android.text.method.MovementMethod
    public void initialize(TextView textView, Spannable spannable) {
        Selection.removeSelection(spannable);
        spannable.removeSpan(FROM_BELOW);
    }

    @Override // android.text.method.ScrollingMovementMethod, android.text.method.BaseMovementMethod
    public boolean left(TextView textView, Spannable spannable) {
        if (action(2, textView, spannable)) {
            return true;
        }
        return super.left(textView, spannable);
    }

    @Override // android.text.method.ScrollingMovementMethod, android.text.method.BaseMovementMethod, android.text.method.MovementMethod
    public void onTakeFocus(TextView textView, Spannable spannable, int i2) {
        Selection.removeSelection(spannable);
        if ((i2 & 1) != 0) {
            spannable.setSpan(FROM_BELOW, 0, 0, 34);
        } else {
            spannable.removeSpan(FROM_BELOW);
        }
    }

    @Override // android.text.method.ScrollingMovementMethod, android.text.method.BaseMovementMethod, android.text.method.MovementMethod
    public boolean onTouchEvent(TextView textView, Spannable spannable, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 1 || action == 0) {
            int x2 = (int) motionEvent.getX();
            int y2 = (int) motionEvent.getY();
            int totalPaddingLeft = x2 - textView.getTotalPaddingLeft();
            int totalPaddingTop = y2 - textView.getTotalPaddingTop();
            int scrollX = totalPaddingLeft + textView.getScrollX();
            int scrollY = totalPaddingTop + textView.getScrollY();
            Layout layout = textView.getLayout();
            int offsetForHorizontal = layout.getOffsetForHorizontal(layout.getLineForVertical(scrollY), scrollX);
            ClickableSpan[] clickableSpanArr = (ClickableSpan[]) spannable.getSpans(offsetForHorizontal, offsetForHorizontal, ClickableSpan.class);
            if (clickableSpanArr.length != 0) {
                if (action == 1) {
                    clickableSpanArr[0].onClick(textView);
                } else if (action == 0) {
                    Selection.setSelection(spannable, spannable.getSpanStart(clickableSpanArr[0]), spannable.getSpanEnd(clickableSpanArr[0]));
                }
                return true;
            }
            Selection.removeSelection(spannable);
        }
        return super.onTouchEvent(textView, spannable, motionEvent);
    }

    @Override // android.text.method.ScrollingMovementMethod, android.text.method.BaseMovementMethod
    public boolean right(TextView textView, Spannable spannable) {
        if (action(3, textView, spannable)) {
            return true;
        }
        return super.right(textView, spannable);
    }

    @Override // android.text.method.ScrollingMovementMethod, android.text.method.BaseMovementMethod
    public boolean up(TextView textView, Spannable spannable) {
        if (action(2, textView, spannable)) {
            return true;
        }
        return super.up(textView, spannable);
    }
}
