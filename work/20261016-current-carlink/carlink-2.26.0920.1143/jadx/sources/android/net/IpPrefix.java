package android.net;

import android.accessibilityservice.c;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Pair;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class IpPrefix implements Parcelable {
    public static final Parcelable.Creator<IpPrefix> CREATOR = new Parcelable.Creator<IpPrefix>() { // from class: android.net.IpPrefix.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public IpPrefix createFromParcel(Parcel parcel) {
            return new IpPrefix(parcel.createByteArray(), parcel.readInt());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public IpPrefix[] newArray(int i2) {
            return new IpPrefix[i2];
        }
    };
    private final byte[] address;
    private final int prefixLength;

    public IpPrefix(byte[] bArr, int i2) {
        this.address = (byte[]) bArr.clone();
        this.prefixLength = i2;
        checkAndMaskAddressAndPrefixLength();
    }

    private void checkAndMaskAddressAndPrefixLength() {
        byte[] bArr = this.address;
        if (bArr.length != 4 && bArr.length != 16) {
            throw new IllegalArgumentException(c.m(new StringBuilder("IpPrefix has "), this.address.length, " bytes which is neither 4 nor 16"));
        }
        NetworkUtils.maskRawAddress(bArr, this.prefixLength);
    }

    public boolean contains(InetAddress inetAddress) {
        byte[] address = inetAddress == null ? null : inetAddress.getAddress();
        if (address == null || address.length != this.address.length) {
            return false;
        }
        NetworkUtils.maskRawAddress(address, this.prefixLength);
        return Arrays.equals(this.address, address);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof IpPrefix)) {
            return false;
        }
        IpPrefix ipPrefix = (IpPrefix) obj;
        return Arrays.equals(this.address, ipPrefix.address) && this.prefixLength == ipPrefix.prefixLength;
    }

    public InetAddress getAddress() {
        try {
            return InetAddress.getByAddress(this.address);
        } catch (UnknownHostException unused) {
            return null;
        }
    }

    public int getPrefixLength() {
        return this.prefixLength;
    }

    public byte[] getRawAddress() {
        return (byte[]) this.address.clone();
    }

    public int hashCode() {
        return (this.prefixLength * 11) + Arrays.hashCode(this.address);
    }

    public boolean isIPv4() {
        return getAddress() instanceof Inet4Address;
    }

    public boolean isIPv6() {
        return getAddress() instanceof Inet6Address;
    }

    public String toString() {
        try {
            return InetAddress.getByAddress(this.address).getHostAddress() + "/" + this.prefixLength;
        } catch (UnknownHostException e2) {
            throw new IllegalStateException("IpPrefix with invalid address! Shouldn't happen.", e2);
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeByteArray(this.address);
        parcel.writeInt(this.prefixLength);
    }

    public IpPrefix(InetAddress inetAddress, int i2) {
        this.address = inetAddress.getAddress();
        this.prefixLength = i2;
        checkAndMaskAddressAndPrefixLength();
    }

    public IpPrefix(String str) {
        Pair<InetAddress, Integer> ipAndMask = NetworkUtils.parseIpAndMask(str);
        this.address = ipAndMask.first.getAddress();
        this.prefixLength = ipAndMask.second.intValue();
        checkAndMaskAddressAndPrefixLength();
    }
}
