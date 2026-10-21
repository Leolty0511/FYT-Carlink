package android.text;

/* JADX INFO: loaded from: classes.dex */
public interface SpanWatcher extends NoCopySpan {
    void onSpanAdded(Spannable spannable, Object obj, int i2, int i3);

    void onSpanChanged(Spannable spannable, Object obj, int i2, int i3, int i4, int i5);

    void onSpanRemoved(Spannable spannable, Object obj, int i2, int i3);
}
