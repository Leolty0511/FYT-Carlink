package android.text;

/* JADX INFO: loaded from: classes.dex */
public interface Editable extends CharSequence, GetChars, Spannable, Appendable {

    public static class Factory {
        private static Factory sInstance = new Factory();

        public static Factory getInstance() {
            return sInstance;
        }

        public Editable newEditable(CharSequence charSequence) {
            return new SpannableStringBuilder(charSequence);
        }
    }

    @Override // java.lang.Appendable
    Editable append(char c2);

    @Override // java.lang.Appendable
    Editable append(CharSequence charSequence);

    @Override // java.lang.Appendable
    Editable append(CharSequence charSequence, int i2, int i3);

    void clear();

    void clearSpans();

    Editable delete(int i2, int i3);

    InputFilter[] getFilters();

    Editable insert(int i2, CharSequence charSequence);

    Editable insert(int i2, CharSequence charSequence, int i3, int i4);

    Editable replace(int i2, int i3, CharSequence charSequence);

    Editable replace(int i2, int i3, CharSequence charSequence, int i4, int i5);

    void setFilters(InputFilter[] inputFilterArr);
}
