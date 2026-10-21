package android.text.method;

import android.text.Layout;
import android.text.NoCopySpan;
import android.text.Spannable;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import android.widget.TextView;

/* JADX INFO: loaded from: classes2.dex */
public class Touch {

    public static class DragState implements NoCopySpan {
        public boolean mFarEnough;
        public int mScrollX;
        public int mScrollY;
        public boolean mUsed;
        public float mX;
        public float mY;

        public DragState(float f2, float f3, int i2, int i3) {
            this.mX = f2;
            this.mY = f3;
            this.mScrollX = i2;
            this.mScrollY = i3;
        }
    }

    private Touch() {
    }

    public static int getInitialScrollX(TextView textView, Spannable spannable) {
        DragState[] dragStateArr = (DragState[]) spannable.getSpans(0, spannable.length(), DragState.class);
        if (dragStateArr.length > 0) {
            return dragStateArr[0].mScrollX;
        }
        return -1;
    }

    public static int getInitialScrollY(TextView textView, Spannable spannable) {
        DragState[] dragStateArr = (DragState[]) spannable.getSpans(0, spannable.length(), DragState.class);
        if (dragStateArr.length > 0) {
            return dragStateArr[0].mScrollY;
        }
        return -1;
    }

    public static boolean onTouchEvent(TextView textView, Spannable spannable, MotionEvent motionEvent) {
        float x2;
        float y2;
        float y3;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            for (Object obj : (DragState[]) spannable.getSpans(0, spannable.length(), DragState.class)) {
                spannable.removeSpan(obj);
            }
            spannable.setSpan(new DragState(motionEvent.getX(), motionEvent.getY(), textView.getScrollX(), textView.getScrollY()), 0, 0, 17);
            return true;
        }
        if (actionMasked == 1) {
            DragState[] dragStateArr = (DragState[]) spannable.getSpans(0, spannable.length(), DragState.class);
            for (DragState dragState : dragStateArr) {
                spannable.removeSpan(dragState);
            }
            return dragStateArr.length > 0 && dragStateArr[0].mUsed;
        }
        if (actionMasked == 2) {
            DragState[] dragStateArr2 = (DragState[]) spannable.getSpans(0, spannable.length(), DragState.class);
            if (dragStateArr2.length > 0) {
                if (!dragStateArr2[0].mFarEnough) {
                    float scaledTouchSlop = ViewConfiguration.get(textView.getContext()).getScaledTouchSlop();
                    if (Math.abs(motionEvent.getX() - dragStateArr2[0].mX) >= scaledTouchSlop || Math.abs(motionEvent.getY() - dragStateArr2[0].mY) >= scaledTouchSlop) {
                        dragStateArr2[0].mFarEnough = true;
                    }
                }
                DragState dragState2 = dragStateArr2[0];
                if (dragState2.mFarEnough) {
                    dragState2.mUsed = true;
                    if (((motionEvent.getMetaState() & 1) == 0 && MetaKeyKeyListener.getMetaState(spannable, 1) != 1 && MetaKeyKeyListener.getMetaState(spannable, 2048) == 0) ? false : true) {
                        x2 = motionEvent.getX() - dragStateArr2[0].mX;
                        y2 = motionEvent.getY();
                        y3 = dragStateArr2[0].mY;
                    } else {
                        x2 = dragStateArr2[0].mX - motionEvent.getX();
                        y2 = dragStateArr2[0].mY;
                        y3 = motionEvent.getY();
                    }
                    dragStateArr2[0].mX = motionEvent.getX();
                    dragStateArr2[0].mY = motionEvent.getY();
                    int scrollX = textView.getScrollX() + ((int) x2);
                    int scrollY = textView.getScrollY() + ((int) (y2 - y3));
                    int totalPaddingBottom = textView.getTotalPaddingBottom() + textView.getTotalPaddingTop();
                    Layout layout = textView.getLayout();
                    int iMax = Math.max(Math.min(scrollY, layout.getHeight() - (textView.getHeight() - totalPaddingBottom)), 0);
                    int scrollX2 = textView.getScrollX();
                    int scrollY2 = textView.getScrollY();
                    scrollTo(textView, layout, scrollX, iMax);
                    if (scrollX2 != textView.getScrollX() || scrollY2 != textView.getScrollY()) {
                        textView.cancelLongPress();
                    }
                    return true;
                }
            }
        }
        return false;
    }

    public static void scrollTo(TextView textView, Layout layout, int i2, int i3) {
        int iMax;
        int i4;
        int width = textView.getWidth() - (textView.getTotalPaddingRight() + textView.getTotalPaddingLeft());
        int lineForVertical = layout.getLineForVertical(i3);
        Layout.Alignment paragraphAlignment = layout.getParagraphAlignment(lineForVertical);
        int iMax2 = 0;
        boolean z2 = layout.getParagraphDirection(lineForVertical) > 0;
        if (textView.getHorizontallyScrolling()) {
            int lineForVertical2 = layout.getLineForVertical((textView.getHeight() + i3) - (textView.getTotalPaddingBottom() + textView.getTotalPaddingTop()));
            iMax = 0;
            iMax2 = Integer.MAX_VALUE;
            while (lineForVertical <= lineForVertical2) {
                iMax2 = (int) Math.min(iMax2, layout.getLineLeft(lineForVertical));
                iMax = (int) Math.max(iMax, layout.getLineRight(lineForVertical));
                lineForVertical++;
            }
        } else {
            iMax = width;
        }
        int i5 = iMax - iMax2;
        if (i5 < width) {
            if (paragraphAlignment == Layout.Alignment.ALIGN_CENTER) {
                i4 = (width - i5) / 2;
            } else if ((z2 && paragraphAlignment == Layout.Alignment.ALIGN_OPPOSITE) || ((!z2 && paragraphAlignment == Layout.Alignment.ALIGN_NORMAL) || paragraphAlignment == Layout.Alignment.ALIGN_RIGHT)) {
                i4 = width - i5;
            }
            iMax2 -= i4;
        } else {
            iMax2 = Math.max(Math.min(i2, iMax - width), iMax2);
        }
        textView.scrollTo(iMax2, i3);
    }
}
