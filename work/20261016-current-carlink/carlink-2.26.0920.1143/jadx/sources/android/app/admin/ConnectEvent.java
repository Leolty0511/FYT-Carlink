package android.app.admin;

import android.os.Parcel;
import android.os.Parcelable;
import java.net.InetAddress;
import java.net.UnknownHostException;

/* JADX INFO: loaded from: classes.dex */
public final class ConnectEvent extends NetworkEvent {
    public static final Parcelable.Creator<ConnectEvent> CREATOR = new Parcelable.Creator<ConnectEvent>() { // from class: android.app.admin.ConnectEvent.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ConnectEvent createFromParcel(Parcel parcel) {
            if (parcel.readInt() != 2) {
                return null;
            }
            return new ConnectEvent(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ConnectEvent[] newArray(int i2) {
            return new ConnectEvent[i2];
        }
    };
    private final String ipAddress;
    private final int port;

    @Override // android.app.admin.NetworkEvent, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public InetAddress getInetAddress() {
        try {
            return InetAddress.getByName(this.ipAddress);
        } catch (UnknownHostException unused) {
            return InetAddress.getLoopbackAddress();
        }
    }

    public int getPort() {
        return this.port;
    }

    public String toString() {
        return String.format("ConnectEvent(%s, %d, %d, %s)", this.ipAddress, Integer.valueOf(this.port), Long.valueOf(this.timestamp), this.packageName);
    }

    @Override // android.app.admin.NetworkEvent, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(2);
        parcel.writeString(this.ipAddress);
        parcel.writeInt(this.port);
        parcel.writeString(this.packageName);
        parcel.writeLong(this.timestamp);
    }

    public ConnectEvent(String str, int i2, String str2, long j2) {
        super(str2, j2);
        this.ipAddress = str;
        this.port = i2;
    }

    private ConnectEvent(Parcel parcel) {
        this.ipAddress = parcel.readString();
        this.port = parcel.readInt();
        this.packageName = parcel.readString();
        this.timestamp = parcel.readLong();
    }
}
