package android.security.keymaster;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public class KeymasterBlob implements Parcelable {
    public static final Parcelable.Creator<KeymasterBlob> CREATOR = new Parcelable.Creator<KeymasterBlob>() { // from class: android.security.keymaster.KeymasterBlob.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public KeymasterBlob createFromParcel(Parcel parcel) {
            return new KeymasterBlob(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public KeymasterBlob[] newArray(int i2) {
            return new KeymasterBlob[i2];
        }
    };
    public byte[] blob;

    public KeymasterBlob(byte[] bArr) {
        this.blob = bArr;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeByteArray(this.blob);
    }

    public KeymasterBlob(Parcel parcel) {
        this.blob = parcel.createByteArray();
    }
}
