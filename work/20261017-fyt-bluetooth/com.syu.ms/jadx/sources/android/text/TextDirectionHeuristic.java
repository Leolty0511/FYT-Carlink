package android.text;

/* JADX INFO: loaded from: classes.dex */
public interface TextDirectionHeuristic {
    boolean isRtl(CharSequence charSequence, int i2, int i3);

    boolean isRtl(char[] cArr, int i2, int i3);
}
