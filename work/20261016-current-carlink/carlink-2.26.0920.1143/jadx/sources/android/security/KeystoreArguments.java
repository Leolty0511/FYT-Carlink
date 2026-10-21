package android.security;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public class KeystoreArguments implements Parcelable {
    public static final Parcelable.Creator<KeystoreArguments> CREATOR = new Parcelable.Creator<KeystoreArguments>() { // from class: android.security.KeystoreArguments.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public KeystoreArguments createFromParcel(Parcel parcel) {
            return new KeystoreArguments(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public KeystoreArguments[] newArray(int i2) {
            return new KeystoreArguments[i2];
        }
    };
    public byte[][] args;

    private void readFromParcel(Parcel parcel) {
        int i2 = parcel.readInt();
        this.args = new byte[i2][];
        for (int i3 = 0; i3 < i2; i3++) {
            this.args[i3] = parcel.createByteArray();
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        byte[][] bArr = this.args;
        if (bArr == null) {
            parcel.writeInt(0);
            return;
        }
        parcel.writeInt(bArr.length);
        for (byte[] bArr2 : this.args) {
            parcel.writeByteArray(bArr2);
        }
    }

    public KeystoreArguments() {
        this.args = null;
    }

    public KeystoreArguments(byte[][] bArr) {
        this.args = bArr;
    }

    private KeystoreArguments(Parcel parcel) {
        readFromParcel(parcel);
    }
}
