package android.net.wifi;

import android.accessibilityservice.c;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public class WifiWakeReasonAndCounts implements Parcelable {
    public static final Parcelable.Creator<WifiWakeReasonAndCounts> CREATOR = new Parcelable.Creator<WifiWakeReasonAndCounts>() { // from class: android.net.wifi.WifiWakeReasonAndCounts.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public WifiWakeReasonAndCounts createFromParcel(Parcel parcel) {
            WifiWakeReasonAndCounts wifiWakeReasonAndCounts = new WifiWakeReasonAndCounts();
            wifiWakeReasonAndCounts.totalCmdEventWake = parcel.readInt();
            wifiWakeReasonAndCounts.totalDriverFwLocalWake = parcel.readInt();
            wifiWakeReasonAndCounts.totalRxDataWake = parcel.readInt();
            wifiWakeReasonAndCounts.rxUnicast = parcel.readInt();
            wifiWakeReasonAndCounts.rxMulticast = parcel.readInt();
            wifiWakeReasonAndCounts.rxBroadcast = parcel.readInt();
            wifiWakeReasonAndCounts.icmp = parcel.readInt();
            wifiWakeReasonAndCounts.icmp6 = parcel.readInt();
            wifiWakeReasonAndCounts.icmp6Ra = parcel.readInt();
            wifiWakeReasonAndCounts.icmp6Na = parcel.readInt();
            wifiWakeReasonAndCounts.icmp6Ns = parcel.readInt();
            wifiWakeReasonAndCounts.ipv4RxMulticast = parcel.readInt();
            wifiWakeReasonAndCounts.ipv6Multicast = parcel.readInt();
            wifiWakeReasonAndCounts.otherRxMulticast = parcel.readInt();
            parcel.readIntArray(wifiWakeReasonAndCounts.cmdEventWakeCntArray);
            parcel.readIntArray(wifiWakeReasonAndCounts.driverFWLocalWakeCntArray);
            return wifiWakeReasonAndCounts;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public WifiWakeReasonAndCounts[] newArray(int i2) {
            return new WifiWakeReasonAndCounts[i2];
        }
    };
    private static final String TAG = "WifiWakeReasonAndCounts";
    public int[] cmdEventWakeCntArray;
    public int[] driverFWLocalWakeCntArray;
    public int icmp;
    public int icmp6;
    public int icmp6Na;
    public int icmp6Ns;
    public int icmp6Ra;
    public int ipv4RxMulticast;
    public int ipv6Multicast;
    public int otherRxMulticast;
    public int rxBroadcast;
    public int rxMulticast;
    public int rxUnicast;
    public int totalCmdEventWake;
    public int totalDriverFwLocalWake;
    public int totalRxDataWake;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer(" totalCmdEventWake ");
        stringBuffer.append(this.totalCmdEventWake);
        stringBuffer.append(" totalDriverFwLocalWake ");
        stringBuffer.append(this.totalDriverFwLocalWake);
        stringBuffer.append(" totalRxDataWake ");
        stringBuffer.append(this.totalRxDataWake);
        stringBuffer.append(" rxUnicast ");
        stringBuffer.append(this.rxUnicast);
        stringBuffer.append(" rxMulticast ");
        stringBuffer.append(this.rxMulticast);
        stringBuffer.append(" rxBroadcast ");
        stringBuffer.append(this.rxBroadcast);
        stringBuffer.append(" icmp ");
        stringBuffer.append(this.icmp);
        stringBuffer.append(" icmp6 ");
        stringBuffer.append(this.icmp6);
        stringBuffer.append(" icmp6Ra ");
        stringBuffer.append(this.icmp6Ra);
        stringBuffer.append(" icmp6Na ");
        stringBuffer.append(this.icmp6Na);
        stringBuffer.append(" icmp6Ns ");
        stringBuffer.append(this.icmp6Ns);
        stringBuffer.append(" ipv4RxMulticast ");
        stringBuffer.append(this.ipv4RxMulticast);
        stringBuffer.append(" ipv6Multicast ");
        stringBuffer.append(this.ipv6Multicast);
        stringBuffer.append(" otherRxMulticast ");
        stringBuffer.append(this.otherRxMulticast);
        for (int i2 = 0; i2 < this.cmdEventWakeCntArray.length; i2++) {
            StringBuilder sbS = c.s(" cmdEventWakeCntArray[", i2, "] ");
            sbS.append(this.cmdEventWakeCntArray[i2]);
            stringBuffer.append(sbS.toString());
        }
        for (int i3 = 0; i3 < this.driverFWLocalWakeCntArray.length; i3++) {
            StringBuilder sbS2 = c.s(" driverFWLocalWakeCntArray[", i3, "] ");
            sbS2.append(this.driverFWLocalWakeCntArray[i3]);
            stringBuffer.append(sbS2.toString());
        }
        return stringBuffer.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.totalCmdEventWake);
        parcel.writeInt(this.totalDriverFwLocalWake);
        parcel.writeInt(this.totalRxDataWake);
        parcel.writeInt(this.rxUnicast);
        parcel.writeInt(this.rxMulticast);
        parcel.writeInt(this.rxBroadcast);
        parcel.writeInt(this.icmp);
        parcel.writeInt(this.icmp6);
        parcel.writeInt(this.icmp6Ra);
        parcel.writeInt(this.icmp6Na);
        parcel.writeInt(this.icmp6Ns);
        parcel.writeInt(this.ipv4RxMulticast);
        parcel.writeInt(this.ipv6Multicast);
        parcel.writeInt(this.otherRxMulticast);
        parcel.writeIntArray(this.cmdEventWakeCntArray);
        parcel.writeIntArray(this.driverFWLocalWakeCntArray);
    }
}
