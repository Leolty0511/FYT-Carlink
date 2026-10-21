package android.view.inputmethod;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes2.dex */
public final class CompletionInfo implements Parcelable {
    public static final Parcelable.Creator<CompletionInfo> CREATOR = new Parcelable.Creator<CompletionInfo>() { // from class: android.view.inputmethod.CompletionInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CompletionInfo createFromParcel(Parcel parcel) {
            return new CompletionInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CompletionInfo[] newArray(int i2) {
            return new CompletionInfo[i2];
        }
    };
    private final long mId;
    private final CharSequence mLabel;
    private final int mPosition;
    private final CharSequence mText;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public long getId() {
        return this.mId;
    }

    public CharSequence getLabel() {
        return this.mLabel;
    }

    public int getPosition() {
        return this.mPosition;
    }

    public CharSequence getText() {
        return this.mText;
    }

    public String toString() {
        return "CompletionInfo{#" + this.mPosition + " \"" + ((Object) this.mText) + "\" id=" + this.mId + " label=" + ((Object) this.mLabel) + "}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeLong(this.mId);
        parcel.writeInt(this.mPosition);
        TextUtils.writeToParcel(this.mText, parcel, i2);
        TextUtils.writeToParcel(this.mLabel, parcel, i2);
    }

    public CompletionInfo(long j2, int i2, CharSequence charSequence) {
        this.mId = j2;
        this.mPosition = i2;
        this.mText = charSequence;
        this.mLabel = null;
    }

    public CompletionInfo(long j2, int i2, CharSequence charSequence, CharSequence charSequence2) {
        this.mId = j2;
        this.mPosition = i2;
        this.mText = charSequence;
        this.mLabel = charSequence2;
    }

    private CompletionInfo(Parcel parcel) {
        this.mId = parcel.readLong();
        this.mPosition = parcel.readInt();
        Parcelable.Creator<CharSequence> creator = TextUtils.CHAR_SEQUENCE_CREATOR;
        this.mText = creator.createFromParcel(parcel);
        this.mLabel = creator.createFromParcel(parcel);
    }
}
