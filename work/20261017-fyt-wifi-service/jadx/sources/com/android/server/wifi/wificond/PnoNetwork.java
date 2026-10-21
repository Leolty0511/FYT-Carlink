package com.android.server.wifi.wificond;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class PnoNetwork implements Parcelable {
    public static final Parcelable.Creator<PnoNetwork> CREATOR = new Parcelable.Creator<PnoNetwork>() { // from class: com.android.server.wifi.wificond.PnoNetwork.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PnoNetwork createFromParcel(Parcel in) {
            PnoNetwork result = new PnoNetwork();
            result.isHidden = in.readInt() != 0;
            result.ssid = in.createByteArray();
            result.frequencies = in.createIntArray();
            return result;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PnoNetwork[] newArray(int size) {
            return new PnoNetwork[size];
        }
    };
    public int[] frequencies;
    public boolean isHidden;
    public byte[] ssid;

    public boolean equals(Object rhs) {
        if (this == rhs) {
            return true;
        }
        if (!(rhs instanceof PnoNetwork)) {
            return false;
        }
        PnoNetwork network = (PnoNetwork) rhs;
        return Arrays.equals(this.ssid, network.ssid) && Arrays.equals(this.frequencies, network.frequencies) && this.isHidden == network.isHidden;
    }

    public int hashCode() {
        return Objects.hash(Boolean.valueOf(this.isHidden), Integer.valueOf(Arrays.hashCode(this.ssid)), Integer.valueOf(Arrays.hashCode(this.frequencies)));
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.isHidden ? 1 : 0);
        parcel.writeByteArray(this.ssid);
        parcel.writeIntArray(this.frequencies);
    }
}
