package android.view.textservice;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes.dex */
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
    private final int mCookie;
    private final int mSequence;
    private final String mText;

    public TextInfo(String str) {
        this(str, 0, 0);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getCookie() {
        return this.mCookie;
    }

    public int getSequence() {
        return this.mSequence;
    }

    public String getText() {
        return this.mText;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.mText);
        parcel.writeInt(this.mCookie);
        parcel.writeInt(this.mSequence);
    }

    public TextInfo(String str, int i2, int i3) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException(str);
        }
        this.mText = str;
        this.mCookie = i2;
        this.mSequence = i3;
    }

    public TextInfo(Parcel parcel) {
        this.mText = parcel.readString();
        this.mCookie = parcel.readInt();
        this.mSequence = parcel.readInt();
    }
}
