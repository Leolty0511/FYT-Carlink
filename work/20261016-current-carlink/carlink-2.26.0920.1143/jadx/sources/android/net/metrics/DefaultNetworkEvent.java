package android.net.metrics;

import android.accessibilityservice.c;
import android.net.NetworkCapabilities;
import android.os.Parcel;
import android.os.Parcelable;
import android.provider.SettingsStringUtil;
import android.security.keystore.KeyProperties;

/* JADX INFO: loaded from: classes.dex */
public final class DefaultNetworkEvent implements Parcelable {
    public static final Parcelable.Creator<DefaultNetworkEvent> CREATOR = new Parcelable.Creator<DefaultNetworkEvent>() { // from class: android.net.metrics.DefaultNetworkEvent.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DefaultNetworkEvent createFromParcel(Parcel parcel) {
            return new DefaultNetworkEvent(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DefaultNetworkEvent[] newArray(int i2) {
            return new DefaultNetworkEvent[i2];
        }
    };
    public final int netId;
    public final boolean prevIPv4;
    public final boolean prevIPv6;
    public final int prevNetId;
    public final int[] transportTypes;

    private String ipSupport() {
        boolean z2 = this.prevIPv4;
        if (z2 && this.prevIPv6) {
            return "DUAL";
        }
        if (this.prevIPv6) {
            return "IPv6";
        }
        return z2 ? "IPv4" : KeyProperties.DIGEST_NONE;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        String strValueOf = String.valueOf(this.prevNetId);
        String strValueOf2 = String.valueOf(this.netId);
        if (this.prevNetId != 0) {
            StringBuilder sbU = c.u(strValueOf, SettingsStringUtil.DELIMITER);
            sbU.append(ipSupport());
            strValueOf = sbU.toString();
        }
        if (this.netId != 0) {
            StringBuilder sbU2 = c.u(strValueOf2, SettingsStringUtil.DELIMITER);
            sbU2.append(NetworkCapabilities.transportNamesOf(this.transportTypes));
            strValueOf2 = sbU2.toString();
        }
        return String.format("DefaultNetworkEvent(%s -> %s)", strValueOf, strValueOf2);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.netId);
        parcel.writeIntArray(this.transportTypes);
        parcel.writeInt(this.prevNetId);
        parcel.writeByte(this.prevIPv4 ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.prevIPv6 ? (byte) 1 : (byte) 0);
    }

    public DefaultNetworkEvent(int i2, int[] iArr, int i3, boolean z2, boolean z3) {
        this.netId = i2;
        this.transportTypes = iArr;
        this.prevNetId = i3;
        this.prevIPv4 = z2;
        this.prevIPv6 = z3;
    }

    private DefaultNetworkEvent(Parcel parcel) {
        this.netId = parcel.readInt();
        this.transportTypes = parcel.createIntArray();
        this.prevNetId = parcel.readInt();
        this.prevIPv4 = parcel.readByte() > 0;
        this.prevIPv6 = parcel.readByte() > 0;
    }
}
