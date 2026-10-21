package android.net;

import android.os.Parcel;
import android.os.Parcelable;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.InterfaceAddress;
import java.net.UnknownHostException;

/* JADX INFO: loaded from: classes.dex */
public class LinkAddress implements Parcelable {
    public static final Parcelable.Creator<LinkAddress> CREATOR = new Parcelable.Creator<LinkAddress>() { // from class: android.net.LinkAddress.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LinkAddress createFromParcel(Parcel parcel) {
            InetAddress byAddress = null;
            int i2 = 0;
            if (parcel.readByte() == 1) {
                try {
                    byAddress = InetAddress.getByAddress(parcel.createByteArray());
                    i2 = parcel.readInt();
                } catch (UnknownHostException unused) {
                }
            }
            return new LinkAddress(byAddress, i2);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LinkAddress[] newArray(int i2) {
            return new LinkAddress[i2];
        }
    };
    private InetAddress address;
    private int prefixLength;

    public LinkAddress(InetAddress inetAddress, int i2) {
        init(inetAddress, i2);
    }

    private void init(InetAddress inetAddress, int i2) {
        if (inetAddress != null && i2 >= 0 && ((!(inetAddress instanceof Inet4Address) || i2 <= 32) && i2 <= 128)) {
            this.address = inetAddress;
            this.prefixLength = i2;
            return;
        }
        throw new IllegalArgumentException("Bad LinkAddress params " + inetAddress + "/" + i2);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof LinkAddress)) {
            return false;
        }
        LinkAddress linkAddress = (LinkAddress) obj;
        return this.address.equals(linkAddress.address) && this.prefixLength == linkAddress.prefixLength;
    }

    public InetAddress getAddress() {
        return this.address;
    }

    public int getNetworkPrefixLength() {
        return this.prefixLength;
    }

    public int hashCode() {
        InetAddress inetAddress = this.address;
        return (inetAddress == null ? 0 : inetAddress.hashCode()) + this.prefixLength;
    }

    public String toString() {
        if (this.address == null) {
            return ProxyProperties.LOCAL_EXCL_LIST;
        }
        return this.address.getHostAddress() + "/" + this.prefixLength;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        if (this.address == null) {
            parcel.writeByte((byte) 0);
            return;
        }
        parcel.writeByte((byte) 1);
        parcel.writeByteArray(this.address.getAddress());
        parcel.writeInt(this.prefixLength);
    }

    public LinkAddress(InterfaceAddress interfaceAddress) {
        init(interfaceAddress.getAddress(), interfaceAddress.getNetworkPrefixLength());
    }

    public LinkAddress(String str) {
        int i2;
        InetAddress numericAddress = null;
        try {
            String[] strArrSplit = str.split("/", 2);
            i2 = Integer.parseInt(strArrSplit[1]);
            try {
                numericAddress = InetAddress.parseNumericAddress(strArrSplit[0]);
            } catch (ArrayIndexOutOfBoundsException | IllegalArgumentException | NullPointerException | NumberFormatException unused) {
            }
        } catch (ArrayIndexOutOfBoundsException | IllegalArgumentException | NullPointerException | NumberFormatException unused2) {
            i2 = -1;
        }
        if (numericAddress != null && i2 != -1) {
            init(numericAddress, i2);
            return;
        }
        throw new IllegalArgumentException("Bad LinkAddress params " + str);
    }
}
