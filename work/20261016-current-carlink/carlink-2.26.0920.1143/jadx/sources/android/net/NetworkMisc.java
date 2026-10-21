package android.net;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public class NetworkMisc implements Parcelable {
    public static final Parcelable.Creator<NetworkMisc> CREATOR = new Parcelable.Creator<NetworkMisc>() { // from class: android.net.NetworkMisc.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NetworkMisc createFromParcel(Parcel parcel) {
            NetworkMisc networkMisc = new NetworkMisc();
            networkMisc.allowBypass = parcel.readInt() != 0;
            networkMisc.explicitlySelected = parcel.readInt() != 0;
            networkMisc.acceptUnvalidated = parcel.readInt() != 0;
            networkMisc.subscriberId = parcel.readString();
            networkMisc.provisioningNotificationDisabled = parcel.readInt() != 0;
            return networkMisc;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NetworkMisc[] newArray(int i2) {
            return new NetworkMisc[i2];
        }
    };
    public boolean acceptUnvalidated;
    public boolean allowBypass;
    public boolean explicitlySelected;
    public boolean provisioningNotificationDisabled;
    public String subscriberId;

    public NetworkMisc() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.allowBypass ? 1 : 0);
        parcel.writeInt(this.explicitlySelected ? 1 : 0);
        parcel.writeInt(this.acceptUnvalidated ? 1 : 0);
        parcel.writeString(this.subscriberId);
        parcel.writeInt(this.provisioningNotificationDisabled ? 1 : 0);
    }

    public NetworkMisc(NetworkMisc networkMisc) {
        if (networkMisc != null) {
            this.allowBypass = networkMisc.allowBypass;
            this.explicitlySelected = networkMisc.explicitlySelected;
            this.acceptUnvalidated = networkMisc.acceptUnvalidated;
            this.subscriberId = networkMisc.subscriberId;
            this.provisioningNotificationDisabled = networkMisc.provisioningNotificationDisabled;
        }
    }
}
