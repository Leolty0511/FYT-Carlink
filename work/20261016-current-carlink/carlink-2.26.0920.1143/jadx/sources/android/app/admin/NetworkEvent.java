package android.app.admin;

import android.accessibilityservice.c;
import android.os.Parcel;
import android.os.ParcelFormatException;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public abstract class NetworkEvent implements Parcelable {
    public static final Parcelable.Creator<NetworkEvent> CREATOR = new Parcelable.Creator<NetworkEvent>() { // from class: android.app.admin.NetworkEvent.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NetworkEvent createFromParcel(Parcel parcel) {
            int iDataPosition = parcel.dataPosition();
            int i2 = parcel.readInt();
            parcel.setDataPosition(iDataPosition);
            if (i2 == 1) {
                return DnsEvent.CREATOR.createFromParcel(parcel);
            }
            if (i2 == 2) {
                return ConnectEvent.CREATOR.createFromParcel(parcel);
            }
            throw new ParcelFormatException(c.d("Unexpected NetworkEvent token in parcel: ", i2));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NetworkEvent[] newArray(int i2) {
            return new NetworkEvent[i2];
        }
    };
    static final int PARCEL_TOKEN_CONNECT_EVENT = 2;
    static final int PARCEL_TOKEN_DNS_EVENT = 1;
    String packageName;
    long timestamp;

    public NetworkEvent() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getPackageName() {
        return this.packageName;
    }

    public long getTimestamp() {
        return this.timestamp;
    }

    @Override // android.os.Parcelable
    public abstract void writeToParcel(Parcel parcel, int i2);

    public NetworkEvent(String str, long j2) {
        this.packageName = str;
        this.timestamp = j2;
    }
}
