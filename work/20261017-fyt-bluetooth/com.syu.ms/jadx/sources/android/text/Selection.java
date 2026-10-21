package android.text;

/* JADX INFO: loaded from: classes.dex */
public class Selection {
    public static final Object SELECTION_END;
    public static final Object SELECTION_START;

    public static final class END implements NoCopySpan {
        private END() {
        }
    }

    public interface PositionIterator {
        public static final int DONE = -1;

        int following(int i2);

        int preceding(int i2);
    }

    public static final class START implements NoCopySpan {
        private START() {
        }
    }

    static {
        SELECTION_START = new START();
        SELECTION_END = new END();
    }

    private Selection() {
    }

    private static int chooseHorizontal(Layout layout, int i2, int i3, int i4) {
        if (layout.getLineForOffset(i3) != layout.getLineForOffset(i4)) {
            return layout.getParagraphDirection(layout.getLineForOffset(i3)) == i2 ? Math.max(i3, i4) : Math.min(i3, i4);
        }
        float primaryHorizontal = layout.getPrimaryHorizontal(i3);
        float primaryHorizontal2 = layout.getPrimaryHorizontal(i4);
        if (i2 < 0) {
            return primaryHorizontal < primaryHorizontal2 ? i3 : i4;
        }
        return primaryHorizontal > primaryHorizontal2 ? i3 : i4;
    }

    public static boolean extendDown(Spannable spannable, Layout layout) {
        int selectionEnd = getSelectionEnd(spannable);
        int lineForOffset = layout.getLineForOffset(selectionEnd);
        if (lineForOffset >= layout.getLineCount() - 1) {
            if (selectionEnd != spannable.length()) {
                extendSelection(spannable, spannable.length());
            }
            return true;
        }
        int paragraphDirection = layout.getParagraphDirection(lineForOffset);
        int i2 = lineForOffset + 1;
        extendSelection(spannable, paragraphDirection == layout.getParagraphDirection(i2) ? layout.getOffsetForHorizontal(i2, layout.getPrimaryHorizontal(selectionEnd)) : layout.getLineStart(i2));
        return true;
    }

    public static boolean extendLeft(Spannable spannable, Layout layout) {
        int selectionEnd = getSelectionEnd(spannable);
        int offsetToLeftOf = layout.getOffsetToLeftOf(selectionEnd);
        if (offsetToLeftOf != selectionEnd) {
            extendSelection(spannable, offsetToLeftOf);
        }
        return true;
    }

    public static boolean extendRight(Spannable spannable, Layout layout) {
        int selectionEnd = getSelectionEnd(spannable);
        int offsetToRightOf = layout.getOffsetToRightOf(selectionEnd);
        if (offsetToRightOf != selectionEnd) {
            extendSelection(spannable, offsetToRightOf);
        }
        return true;
    }

    public static final void extendSelection(Spannable spannable, int i2) {
        Object obj = SELECTION_END;
        if (spannable.getSpanStart(obj) != i2) {
            spannable.setSpan(obj, i2, i2, 34);
        }
    }

    public static boolean extendToLeftEdge(Spannable spannable, Layout layout) {
        extendSelection(spannable, findEdge(spannable, layout, -1));
        return true;
    }

    public static boolean extendToRightEdge(Spannable spannable, Layout layout) {
        extendSelection(spannable, findEdge(spannable, layout, 1));
        return true;
    }

    public static boolean extendUp(Spannable spannable, Layout layout) {
        int selectionEnd = getSelectionEnd(spannable);
        int lineForOffset = layout.getLineForOffset(selectionEnd);
        if (lineForOffset <= 0) {
            if (selectionEnd != 0) {
                extendSelection(spannable, 0);
            }
            return true;
        }
        int paragraphDirection = layout.getParagraphDirection(lineForOffset);
        int i2 = lineForOffset - 1;
        extendSelection(spannable, paragraphDirection == layout.getParagraphDirection(i2) ? layout.getOffsetForHorizontal(i2, layout.getPrimaryHorizontal(selectionEnd)) : layout.getLineStart(i2));
        return true;
    }

    private static int findEdge(Spannable spannable, Layout layout, int i2) {
        int lineForOffset = layout.getLineForOffset(getSelectionEnd(spannable));
        if (i2 * layout.getParagraphDirection(lineForOffset) < 0) {
            return layout.getLineStart(lineForOffset);
        }
        int lineEnd = layout.getLineEnd(lineForOffset);
        return lineForOffset == layout.getLineCount() + (-1) ? lineEnd : lineEnd - 1;
    }

    public static final int getSelectionEnd(CharSequence charSequence) {
        if (charSequence instanceof Spanned) {
            return ((Spanned) charSequence).getSpanStart(SELECTION_END);
        }
        return -1;
    }

    public static final int getSelectionStart(CharSequence charSequence) {
        if (charSequence instanceof Spanned) {
            return ((Spanned) charSequence).getSpanStart(SELECTION_START);
        }
        return -1;
    }

    public static boolean moveDown(Spannable spannable, Layout layout) {
        int selectionStart = getSelectionStart(spannable);
        int selectionEnd = getSelectionEnd(spannable);
        if (selectionStart != selectionEnd) {
            int iMin = Math.min(selectionStart, selectionEnd);
            int iMax = Math.max(selectionStart, selectionEnd);
            setSelection(spannable, iMax);
            return (iMin == 0 && iMax == spannable.length()) ? false : true;
        }
        int lineForOffset = layout.getLineForOffset(selectionEnd);
        if (lineForOffset >= layout.getLineCount() - 1) {
            return false;
        }
        int paragraphDirection = layout.getParagraphDirection(lineForOffset);
        int i2 = lineForOffset + 1;
        setSelection(spannable, paragraphDirection == layout.getParagraphDirection(i2) ? layout.getOffsetForHorizontal(i2, layout.getPrimaryHorizontal(selectionEnd)) : layout.getLineStart(i2));
        return true;
    }

    public static boolean moveLeft(Spannable spannable, Layout layout) {
        int selectionStart = getSelectionStart(spannable);
        int selectionEnd = getSelectionEnd(spannable);
        if (selectionStart != selectionEnd) {
            setSelection(spannable, chooseHorizontal(layout, -1, selectionStart, selectionEnd));
            return true;
        }
        int offsetToLeftOf = layout.getOffsetToLeftOf(selectionEnd);
        if (offsetToLeftOf == selectionEnd) {
            return false;
        }
        setSelection(spannable, offsetToLeftOf);
        return true;
    }

    public static boolean moveRight(Spannable spannable, Layout layout) {
        int selectionStart = getSelectionStart(spannable);
        int selectionEnd = getSelectionEnd(spannable);
        if (selectionStart != selectionEnd) {
            setSelection(spannable, chooseHorizontal(layout, 1, selectionStart, selectionEnd));
            return true;
        }
        int offsetToRightOf = layout.getOffsetToRightOf(selectionEnd);
        if (offsetToRightOf == selectionEnd) {
            return false;
        }
        setSelection(spannable, offsetToRightOf);
        return true;
    }

    public static boolean moveToFollowing(Spannable spannable, PositionIterator positionIterator, boolean z2) {
        int iFollowing = positionIterator.following(getSelectionEnd(spannable));
        if (iFollowing == -1) {
            return true;
        }
        if (z2) {
            extendSelection(spannable, iFollowing);
            return true;
        }
        setSelection(spannable, iFollowing);
        return true;
    }

    public static boolean moveToLeftEdge(Spannable spannable, Layout layout) {
        setSelection(spannable, findEdge(spannable, layout, -1));
        return true;
    }

    public static boolean moveToPreceding(Spannable spannable, PositionIterator positionIterator, boolean z2) {
        int iPreceding = positionIterator.preceding(getSelectionEnd(spannable));
        if (iPreceding == -1) {
            return true;
        }
        if (z2) {
            extendSelection(spannable, iPreceding);
            return true;
        }
        setSelection(spannable, iPreceding);
        return true;
    }

    public static boolean moveToRightEdge(Spannable spannable, Layout layout) {
        setSelection(spannable, findEdge(spannable, layout, 1));
        return true;
    }

    public static boolean moveUp(Spannable spannable, Layout layout) {
        int selectionStart = getSelectionStart(spannable);
        int selectionEnd = getSelectionEnd(spannable);
        if (selectionStart != selectionEnd) {
            int iMin = Math.min(selectionStart, selectionEnd);
            int iMax = Math.max(selectionStart, selectionEnd);
            setSelection(spannable, iMin);
            return (iMin == 0 && iMax == spannable.length()) ? false : true;
        }
        int lineForOffset = layout.getLineForOffset(selectionEnd);
        if (lineForOffset <= 0) {
            return false;
        }
        int paragraphDirection = layout.getParagraphDirection(lineForOffset);
        int i2 = lineForOffset - 1;
        setSelection(spannable, paragraphDirection == layout.getParagraphDirection(i2) ? layout.getOffsetForHorizontal(i2, layout.getPrimaryHorizontal(selectionEnd)) : layout.getLineStart(i2));
        return true;
    }

    public static final void removeSelection(Spannable spannable) {
        spannable.removeSpan(SELECTION_START);
        spannable.removeSpan(SELECTION_END);
    }

    public static final void selectAll(Spannable spannable) {
        setSelection(spannable, 0, spannable.length());
    }

    public static void setSelection(Spannable spannable, int i2, int i3) {
        int selectionStart = getSelectionStart(spannable);
        int selectionEnd = getSelectionEnd(spannable);
        if (selectionStart == i2 && selectionEnd == i3) {
            return;
        }
        spannable.setSpan(SELECTION_START, i2, i2, 546);
        spannable.setSpan(SELECTION_END, i3, i3, 34);
    }

    public static final void setSelection(Spannable spannable, int i2) {
        setSelection(spannable, i2, i2);
    }
}
