package android.text;

/* JADX INFO: loaded from: classes.dex */
public interface TextWatcher extends NoCopySpan {
    void afterTextChanged(Editable editable);

    void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4);

    void onTextChanged(CharSequence charSequence, int i2, int i3, int i4);
}
