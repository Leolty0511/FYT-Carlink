package com.android.internal.net;

import android.accessibilityservice.c;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes2.dex */
public class VpnInfo implements Parcelable {
    public static final Parcelable.Creator<VpnInfo> CREATOR = new Parcelable.Creator<VpnInfo>() { // from class: com.android.internal.net.VpnInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public VpnInfo createFromParcel(Parcel parcel) {
            VpnInfo vpnInfo = new VpnInfo();
            vpnInfo.ownerUid = parcel.readInt();
            vpnInfo.vpnIface = parcel.readString();
            vpnInfo.primaryUnderlyingIface = parcel.readString();
            return vpnInfo;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public VpnInfo[] newArray(int i2) {
            return new VpnInfo[i2];
        }
    };
    public int ownerUid;
    public String primaryUnderlyingIface;
    public String vpnIface;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("VpnInfo{ownerUid=");
        sb.append(this.ownerUid);
        sb.append(", vpnIface='");
        sb.append(this.vpnIface);
        sb.append("', primaryUnderlyingIface='");
        return c.n(sb, this.primaryUnderlyingIface, "'}");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.ownerUid);
        parcel.writeString(this.vpnIface);
        parcel.writeString(this.primaryUnderlyingIface);
    }
}
