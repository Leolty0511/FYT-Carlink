package android.text;

import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes.dex */
public class SpanSet<E> {
    private final Class<? extends E> classType;
    public int numberOfSpans = 0;
    public int[] spanEnds;
    public int[] spanFlags;
    public int[] spanStarts;
    public E[] spans;

    public SpanSet(Class<? extends E> cls) {
        this.classType = cls;
    }

    public int getNextTransition(int i2, int i3) {
        for (int i4 = 0; i4 < this.numberOfSpans; i4++) {
            int i5 = this.spanStarts[i4];
            int i6 = this.spanEnds[i4];
            if (i5 > i2 && i5 < i3) {
                i3 = i5;
            }
            if (i6 > i2 && i6 < i3) {
                i3 = i6;
            }
        }
        return i3;
    }

    public boolean hasSpansIntersecting(int i2, int i3) {
        for (int i4 = 0; i4 < this.numberOfSpans; i4++) {
            if (this.spanStarts[i4] < i3 && this.spanEnds[i4] > i2) {
                return true;
            }
        }
        return false;
    }

    public void init(Spanned spanned, int i2, int i3) {
        E[] eArr;
        Object[] spans = spanned.getSpans(i2, i3, this.classType);
        int length = spans.length;
        if (length > 0 && ((eArr = this.spans) == null || eArr.length < length)) {
            this.spans = (E[]) ((Object[]) Array.newInstance(this.classType, length));
            this.spanStarts = new int[length];
            this.spanEnds = new int[length];
            this.spanFlags = new int[length];
        }
        this.numberOfSpans = 0;
        for (Object obj : spans) {
            int spanStart = spanned.getSpanStart(obj);
            int spanEnd = spanned.getSpanEnd(obj);
            if (spanStart != spanEnd) {
                int spanFlags = spanned.getSpanFlags(obj);
                Object[] objArr = (E[]) this.spans;
                int i4 = this.numberOfSpans;
                objArr[i4] = obj;
                this.spanStarts[i4] = spanStart;
                this.spanEnds[i4] = spanEnd;
                this.spanFlags[i4] = spanFlags;
                this.numberOfSpans = i4 + 1;
            }
        }
    }

    public void recycle() {
        for (int i2 = 0; i2 < this.numberOfSpans; i2++) {
            this.spans[i2] = null;
        }
    }
}
