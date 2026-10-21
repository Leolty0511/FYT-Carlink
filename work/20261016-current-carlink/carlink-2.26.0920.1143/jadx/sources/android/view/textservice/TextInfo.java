package android.view.textservice;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.SpellCheckSpan;

/* JADX INFO: loaded from: classes2.dex */
public final class TextInfo implements Parcelable {
    public static final Parcelable.Creator<TextInfo> CREATOR = new Parcelable.Creator<TextInfo>() { // from class: android.view.textservice.TextInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TextInfo createFromParcel(Parcel parcel) {
            return new TextInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TextInfo[] newArray(int i2) {
            return new TextInfo[i2];
        }
    };
    private static final int DEFAULT_COOKIE = 0;
    private static final int DEFAULT_SEQUENCE_NUMBER = 0;
    private final CharSequence mCharSequence;
    private final int mCookie;
    private final int mSequenceNumber;

    public TextInfo(String str) {
        this(str, 0, getStringLengthOrZero(str), 0, 0);
    }

    private static int getStringLengthOrZero(String str) {
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        return str.length();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public CharSequence getCharSequence() {
        return this.mCharSequence;
    }

    public int getCookie() {
        return this.mCookie;
    }

    public int getSequence() {
        return this.mSequenceNumber;
    }

    public String getText() {
        CharSequence charSequence = this.mCharSequence;
        if (charSequence == null) {
            return null;
        }
        return charSequence.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        TextUtils.writeToParcel(this.mCharSequence, parcel, i2);
        parcel.writeInt(this.mCookie);
        parcel.writeInt(this.mSequenceNumber);
    }

    public TextInfo(String str, int i2, int i3) {
        this(str, 0, getStringLengthOrZero(str), i2, i3);
    }

    public TextInfo(CharSequence charSequence, int i2, int i3, int i4, int i5) {
        if (!TextUtils.isEmpty(charSequence)) {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(charSequence, i2, i3);
            for (SpellCheckSpan spellCheckSpan : (SpellCheckSpan[]) spannableStringBuilder.getSpans(0, spannableStringBuilder.length(), SpellCheckSpan.class)) {
                spannableStringBuilder.removeSpan(spellCheckSpan);
            }
            this.mCharSequence = spannableStringBuilder;
            this.mCookie = i4;
            this.mSequenceNumber = i5;
            return;
        }
        throw new IllegalArgumentException("charSequence is empty");
    }

    public TextInfo(Parcel parcel) {
        this.mCharSequence = TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.mCookie = parcel.readInt();
        this.mSequenceNumber = parcel.readInt();
    }
}
