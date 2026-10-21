package android.text;

/* JADX INFO: loaded from: classes2.dex */
public class SpannableString extends SpannableStringInternal implements CharSequence, GetChars, Spannable {
    public SpannableString(CharSequence charSequence) {
        super(charSequence, 0, charSequence.length());
    }

    public static SpannableString valueOf(CharSequence charSequence) {
        return charSequence instanceof SpannableString ? (SpannableString) charSequence : new SpannableString(charSequence);
    }

    @Override // android.text.SpannableStringInternal
    public /* bridge */ /* synthetic */ boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override // android.text.SpannableStringInternal, android.text.Spanned
    public /* bridge */ /* synthetic */ int getSpanEnd(Object obj) {
        return super.getSpanEnd(obj);
    }

    @Override // android.text.SpannableStringInternal, android.text.Spanned
    public /* bridge */ /* synthetic */ int getSpanFlags(Object obj) {
        return super.getSpanFlags(obj);
    }

    @Override // android.text.SpannableStringInternal, android.text.Spanned
    public /* bridge */ /* synthetic */ int getSpanStart(Object obj) {
        return super.getSpanStart(obj);
    }

    @Override // android.text.SpannableStringInternal, android.text.Spanned
    public /* bridge */ /* synthetic */ Object[] getSpans(int i2, int i3, Class cls) {
        return super.getSpans(i2, i3, cls);
    }

    @Override // android.text.SpannableStringInternal
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // android.text.SpannableStringInternal, android.text.Spanned
    public /* bridge */ /* synthetic */ int nextSpanTransition(int i2, int i3, Class cls) {
        return super.nextSpanTransition(i2, i3, cls);
    }

    @Override // android.text.SpannableStringInternal, android.text.Spannable
    public void removeSpan(Object obj) {
        super.removeSpan(obj);
    }

    @Override // android.text.SpannableStringInternal, android.text.Spannable
    public void setSpan(Object obj, int i2, int i3, int i4) {
        super.setSpan(obj, i2, i3, i4);
    }

    @Override // java.lang.CharSequence
    public final CharSequence subSequence(int i2, int i3) {
        return new SpannableString(this, i2, i3);
    }

    private SpannableString(CharSequence charSequence, int i2, int i3) {
        super(charSequence, i2, i3);
    }
}
