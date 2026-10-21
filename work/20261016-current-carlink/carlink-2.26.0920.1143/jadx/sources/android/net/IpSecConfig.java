package android.net;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import java.net.InetAddress;
import java.net.UnknownHostException;

/* JADX INFO: loaded from: classes.dex */
public final class IpSecConfig implements Parcelable {
    public static final Parcelable.Creator<IpSecConfig> CREATOR = new Parcelable.Creator<IpSecConfig>() { // from class: android.net.IpSecConfig.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public IpSecConfig createFromParcel(Parcel parcel) {
            return new IpSecConfig(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public IpSecConfig[] newArray(int i2) {
            return new IpSecConfig[i2];
        }
    };
    private static final String TAG = "IpSecConfig";
    int encapLocalPortResourceId;
    int encapRemotePort;
    int encapType;
    Flow[] flow;
    InetAddress localAddress;
    int mode;
    int nattKeepaliveInterval;
    Network network;
    InetAddress remoteAddress;

    public static class Flow {
        IpSecAlgorithm authentication;
        IpSecAlgorithm encryption;
        int spiResourceId;
    }

    private static InetAddress readInetAddressFromParcel(Parcel parcel) {
        String string = parcel.readString();
        if (string == null) {
            return null;
        }
        try {
            return InetAddress.getByName(string);
        } catch (UnknownHostException unused) {
            Log.wtf(TAG, "Invalid IpAddress ".concat(string));
            return null;
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public IpSecAlgorithm getAuthentication(int i2) {
        return this.flow[i2].authentication;
    }

    public int getEncapLocalResourceId() {
        return this.encapLocalPortResourceId;
    }

    public int getEncapRemotePort() {
        return this.encapRemotePort;
    }

    public int getEncapType() {
        return this.encapType;
    }

    public IpSecAlgorithm getEncryption(int i2) {
        return this.flow[i2].encryption;
    }

    public InetAddress getLocalAddress() {
        return this.localAddress;
    }

    public int getMode() {
        return this.mode;
    }

    public int getNattKeepaliveInterval() {
        return this.nattKeepaliveInterval;
    }

    public Network getNetwork() {
        return this.network;
    }

    public InetAddress getRemoteAddress() {
        return this.remoteAddress;
    }

    public int getSpiResourceId(int i2) {
        return this.flow[i2].spiResourceId;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        InetAddress inetAddress = this.localAddress;
        parcel.writeString(inetAddress != null ? inetAddress.getHostAddress() : null);
        InetAddress inetAddress2 = this.remoteAddress;
        parcel.writeString(inetAddress2 != null ? inetAddress2.getHostAddress() : null);
        parcel.writeParcelable(this.network, i2);
        parcel.writeInt(this.flow[0].spiResourceId);
        parcel.writeParcelable(this.flow[0].encryption, i2);
        parcel.writeParcelable(this.flow[0].authentication, i2);
        parcel.writeInt(this.flow[1].spiResourceId);
        parcel.writeParcelable(this.flow[1].encryption, i2);
        parcel.writeParcelable(this.flow[1].authentication, i2);
        parcel.writeInt(this.encapType);
        parcel.writeInt(this.encapLocalPortResourceId);
        parcel.writeInt(this.encapRemotePort);
    }

    public IpSecConfig() {
        this.flow = new Flow[]{new Flow(), new Flow()};
    }

    private IpSecConfig(Parcel parcel) {
        this.flow = new Flow[]{new Flow(), new Flow()};
        this.localAddress = readInetAddressFromParcel(parcel);
        this.remoteAddress = readInetAddressFromParcel(parcel);
        this.network = (Network) parcel.readParcelable(Network.class.getClassLoader());
        this.flow[0].spiResourceId = parcel.readInt();
        this.flow[0].encryption = (IpSecAlgorithm) parcel.readParcelable(IpSecAlgorithm.class.getClassLoader());
        this.flow[0].authentication = (IpSecAlgorithm) parcel.readParcelable(IpSecAlgorithm.class.getClassLoader());
        this.flow[1].spiResourceId = parcel.readInt();
        this.flow[1].encryption = (IpSecAlgorithm) parcel.readParcelable(IpSecAlgorithm.class.getClassLoader());
        this.flow[1].authentication = (IpSecAlgorithm) parcel.readParcelable(IpSecAlgorithm.class.getClassLoader());
        this.encapType = parcel.readInt();
        this.encapLocalPortResourceId = parcel.readInt();
        this.encapRemotePort = parcel.readInt();
    }
}
