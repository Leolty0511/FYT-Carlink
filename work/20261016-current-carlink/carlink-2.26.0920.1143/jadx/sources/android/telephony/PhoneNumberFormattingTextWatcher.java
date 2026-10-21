package android.telephony;

import android.text.Editable;
import android.text.Selection;
import android.text.TextWatcher;
import com.android.i18n.phonenumbers.AsYouTypeFormatter;
import com.android.i18n.phonenumbers.PhoneNumberUtil;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public class PhoneNumberFormattingTextWatcher implements TextWatcher {
    private AsYouTypeFormatter mFormatter;
    private boolean mSelfChange;
    private boolean mStopFormatting;

    public PhoneNumberFormattingTextWatcher() {
        this(Locale.getDefault().getCountry());
    }

    private String getFormattedNumber(char c, boolean z2) {
        return z2 ? this.mFormatter.inputDigitAndRememberPosition(c) : this.mFormatter.inputDigit(c);
    }

    private boolean hasSeparator(CharSequence charSequence, int i2, int i3) {
        for (int i4 = i2; i4 < i2 + i3; i4++) {
            if (!PhoneNumberUtils.isNonSeparator(charSequence.charAt(i4))) {
                return true;
            }
        }
        return false;
    }

    private String reformat(CharSequence charSequence, int i2) {
        int i3 = i2 - 1;
        this.mFormatter.clear();
        int length = charSequence.length();
        String formattedNumber = null;
        char c = 0;
        boolean z2 = false;
        for (int i4 = 0; i4 < length; i4++) {
            char cCharAt = charSequence.charAt(i4);
            if (PhoneNumberUtils.isNonSeparator(cCharAt)) {
                if (c != 0) {
                    formattedNumber = getFormattedNumber(c, z2);
                    z2 = false;
                }
                c = cCharAt;
            }
            if (i4 == i3) {
                z2 = true;
            }
        }
        return c != 0 ? getFormattedNumber(c, z2) : formattedNumber;
    }

    private void stopFormatting() {
        this.mStopFormatting = true;
        this.mFormatter.clear();
    }

    @Override // android.text.TextWatcher
    public synchronized void afterTextChanged(Editable editable) {
        boolean z2 = true;
        if (this.mStopFormatting) {
            if (editable.length() == 0) {
                z2 = false;
            }
            this.mStopFormatting = z2;
        } else {
            if (this.mSelfChange) {
                return;
            }
            String strReformat = reformat(editable, Selection.getSelectionEnd(editable));
            if (strReformat != null) {
                int rememberedPosition = this.mFormatter.getRememberedPosition();
                this.mSelfChange = true;
                editable.replace(0, editable.length(), strReformat, 0, strReformat.length());
                if (strReformat.equals(editable.toString())) {
                    Selection.setSelection(editable, rememberedPosition);
                }
                this.mSelfChange = false;
            }
            PhoneNumberUtils.ttsSpanAsPhoneNumber(editable, 0, editable.length());
        }
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
        if (this.mSelfChange || this.mStopFormatting || i3 <= 0 || !hasSeparator(charSequence, i2, i3)) {
            return;
        }
        stopFormatting();
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
        if (this.mSelfChange || this.mStopFormatting || i4 <= 0 || !hasSeparator(charSequence, i2, i4)) {
            return;
        }
        stopFormatting();
    }

    public PhoneNumberFormattingTextWatcher(String str) {
        this.mSelfChange = false;
        if (str == null) {
            throw new IllegalArgumentException();
        }
        this.mFormatter = PhoneNumberUtil.getInstance().getAsYouTypeFormatter(str);
    }
}
