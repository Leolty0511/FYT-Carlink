package android.telephony;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class RadioAccessSpecifier implements Parcelable {
    public static final Parcelable.Creator<RadioAccessSpecifier> CREATOR = new Parcelable.Creator<RadioAccessSpecifier>() { // from class: android.telephony.RadioAccessSpecifier.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RadioAccessSpecifier createFromParcel(Parcel parcel) {
            return new RadioAccessSpecifier(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RadioAccessSpecifier[] newArray(int i2) {
            return new RadioAccessSpecifier[i2];
        }
    };
    public int[] bands;
    public int[] channels;
    public int radioAccessNetwork;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        try {
            RadioAccessSpecifier radioAccessSpecifier = (RadioAccessSpecifier) obj;
            return obj != null && this.radioAccessNetwork == radioAccessSpecifier.radioAccessNetwork && Arrays.equals(this.bands, radioAccessSpecifier.bands) && Arrays.equals(this.channels, radioAccessSpecifier.channels);
        } catch (ClassCastException unused) {
            return false;
        }
    }

    public int hashCode() {
        return (Arrays.hashCode(this.channels) * 39) + (Arrays.hashCode(this.bands) * 37) + (this.radioAccessNetwork * 31);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.radioAccessNetwork);
        parcel.writeIntArray(this.bands);
        parcel.writeIntArray(this.channels);
    }

    public RadioAccessSpecifier(int i2, int[] iArr, int[] iArr2) {
        this.radioAccessNetwork = i2;
        this.bands = iArr;
        this.channels = iArr2;
    }

    private RadioAccessSpecifier(Parcel parcel) {
        this.radioAccessNetwork = parcel.readInt();
        this.bands = parcel.createIntArray();
        this.channels = parcel.createIntArray();
    }
}
