package android.widget;

import android.graphics.Rect;
import android.text.Layout;
import android.text.Spannable;

/* JADX INFO: loaded from: classes.dex */
final class AccessibilityIterators {

    public static class LineTextSegmentIterator extends android.view.AccessibilityIterators.AbstractTextSegmentIterator {
        public static final int DIRECTION_END = 1;
        public static final int DIRECTION_START = -1;
        private static LineTextSegmentIterator sLineInstance;
        public Layout mLayout;

        public static LineTextSegmentIterator getInstance() {
            if (sLineInstance == null) {
                sLineInstance = new LineTextSegmentIterator();
            }
            return sLineInstance;
        }

        @Override // android.view.AccessibilityIterators.TextSegmentIterator
        public int[] following(int i2) {
            int lineForOffset;
            if (this.mText.length() <= 0 || i2 >= this.mText.length()) {
                return null;
            }
            if (i2 < 0) {
                lineForOffset = this.mLayout.getLineForOffset(0);
            } else {
                int lineForOffset2 = this.mLayout.getLineForOffset(i2);
                lineForOffset = getLineEdgeIndex(lineForOffset2, -1) == i2 ? lineForOffset2 : lineForOffset2 + 1;
            }
            if (lineForOffset >= this.mLayout.getLineCount()) {
                return null;
            }
            return getRange(getLineEdgeIndex(lineForOffset, -1), getLineEdgeIndex(lineForOffset, 1) + 1);
        }

        public int getLineEdgeIndex(int i2, int i3) {
            return i3 * this.mLayout.getParagraphDirection(i2) < 0 ? this.mLayout.getLineStart(i2) : this.mLayout.getLineEnd(i2) - 1;
        }

        public void initialize(Spannable spannable, Layout layout) {
            this.mText = spannable.toString();
            this.mLayout = layout;
        }

        @Override // android.view.AccessibilityIterators.TextSegmentIterator
        public int[] preceding(int i2) {
            int lineForOffset;
            if (this.mText.length() <= 0 || i2 <= 0) {
                return null;
            }
            if (i2 > this.mText.length()) {
                lineForOffset = this.mLayout.getLineForOffset(this.mText.length());
            } else {
                int lineForOffset2 = this.mLayout.getLineForOffset(i2);
                lineForOffset = getLineEdgeIndex(lineForOffset2, 1) + 1 == i2 ? lineForOffset2 : lineForOffset2 - 1;
            }
            if (lineForOffset < 0) {
                return null;
            }
            return getRange(getLineEdgeIndex(lineForOffset, -1), getLineEdgeIndex(lineForOffset, 1) + 1);
        }
    }

    public static class PageTextSegmentIterator extends LineTextSegmentIterator {
        private static PageTextSegmentIterator sPageInstance;
        private final Rect mTempRect = new Rect();
        private TextView mView;

        public static PageTextSegmentIterator getInstance() {
            if (sPageInstance == null) {
                sPageInstance = new PageTextSegmentIterator();
            }
            return sPageInstance;
        }

        @Override // android.widget.AccessibilityIterators.LineTextSegmentIterator, android.view.AccessibilityIterators.TextSegmentIterator
        public int[] following(int i2) {
            if (this.mText.length() <= 0 || i2 >= this.mText.length() || !this.mView.getGlobalVisibleRect(this.mTempRect)) {
                return null;
            }
            int iMax = Math.max(0, i2);
            int lineTop = this.mLayout.getLineTop(this.mLayout.getLineForOffset(iMax)) + ((this.mTempRect.height() - this.mView.getTotalPaddingTop()) - this.mView.getTotalPaddingBottom());
            Layout layout = this.mLayout;
            return getRange(iMax, getLineEdgeIndex((lineTop < layout.getLineTop(layout.getLineCount() - 1) ? this.mLayout.getLineForVertical(lineTop) : this.mLayout.getLineCount()) - 1, 1) + 1);
        }

        public void initialize(TextView textView) {
            super.initialize((Spannable) textView.getIterableTextForAccessibility(), textView.getLayout());
            this.mView = textView;
        }

        @Override // android.widget.AccessibilityIterators.LineTextSegmentIterator, android.view.AccessibilityIterators.TextSegmentIterator
        public int[] preceding(int i2) {
            if (this.mText.length() <= 0 || i2 <= 0 || !this.mView.getGlobalVisibleRect(this.mTempRect)) {
                return null;
            }
            int iMin = Math.min(this.mText.length(), i2);
            int lineTop = this.mLayout.getLineTop(this.mLayout.getLineForOffset(iMin)) - ((this.mTempRect.height() - this.mView.getTotalPaddingTop()) - this.mView.getTotalPaddingBottom());
            return getRange(getLineEdgeIndex(lineTop > 0 ? this.mLayout.getLineForVertical(lineTop) + 1 : 0, -1), iMin);
        }
    }
}
