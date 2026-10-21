package android.view.inputmethod;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes2.dex */
public final class CorrectionInfo implements Parcelable {
    public static final Parcelable.Creator<CorrectionInfo> CREATOR = new Parcelable.Creator<CorrectionInfo>() { // from class: android.view.inputmethod.CorrectionInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CorrectionInfo createFromParcel(Parcel parcel) {
            return new CorrectionInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CorrectionInfo[] newArray(int i2) {
            return new CorrectionInfo[i2];
        }
    };
    private final CharSequence mNewText;
    private final int mOffset;
    private final CharSequence mOldText;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public CharSequence getNewText() {
        return this.mNewText;
    }

    public int getOffset() {
        return this.mOffset;
    }

    public CharSequence getOldText() {
        return this.mOldText;
    }

    public String toString() {
        return "CorrectionInfo{#" + this.mOffset + " \"" + ((Object) this.mOldText) + "\" -> \"" + ((Object) this.mNewText) + "\"}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mOffset);
        TextUtils.writeToParcel(this.mOldText, parcel, i2);
        TextUtils.writeToParcel(this.mNewText, parcel, i2);
    }

    public CorrectionInfo(int i2, CharSequence charSequence, CharSequence charSequence2) {
        this.mOffset = i2;
        this.mOldText = charSequence;
        this.mNewText = charSequence2;
    }

    private CorrectionInfo(Parcel parcel) {
        this.mOffset = parcel.readInt();
        Parcelable.Creator<CharSequence> creator = TextUtils.CHAR_SEQUENCE_CREATOR;
        this.mOldText = creator.createFromParcel(parcel);
        this.mNewText = creator.createFromParcel(parcel);
    }
}
