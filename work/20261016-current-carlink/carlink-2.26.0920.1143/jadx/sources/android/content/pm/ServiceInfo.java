package android.content.pm;

import android.accessibilityservice.c;
import android.net.wifi.WifiEnterpriseConfig;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Printer;

/* JADX INFO: loaded from: classes.dex */
public class ServiceInfo extends ComponentInfo implements Parcelable {
    public static final Parcelable.Creator<ServiceInfo> CREATOR = new Parcelable.Creator<ServiceInfo>() { // from class: android.content.pm.ServiceInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ServiceInfo createFromParcel(Parcel parcel) {
            return new ServiceInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ServiceInfo[] newArray(int i2) {
            return new ServiceInfo[i2];
        }
    };
    public static final int FLAG_EXTERNAL_SERVICE = 4;
    public static final int FLAG_ISOLATED_PROCESS = 2;
    public static final int FLAG_SINGLE_USER = 1073741824;
    public static final int FLAG_STOP_WITH_TASK = 1;
    public static final int FLAG_VISIBLE_TO_INSTANT_APP = 1048576;
    public int flags;
    public String permission;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public void dump(Printer printer, String str) {
        dump(printer, str, 3);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ServiceInfo{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
        return c.n(sb, this.name, "}");
    }

    @Override // android.content.pm.ComponentInfo, android.content.pm.PackageItemInfo, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        super.writeToParcel(parcel, i2);
        parcel.writeString(this.permission);
        parcel.writeInt(this.flags);
    }

    public ServiceInfo() {
    }

    public void dump(Printer printer, String str, int i2) {
        super.dumpFront(printer, str);
        StringBuilder sbU = c.u(str, "permission=");
        sbU.append(this.permission);
        printer.println(sbU.toString());
        printer.println(str + "flags=0x" + Integer.toHexString(this.flags));
        super.dumpBack(printer, str, i2);
    }

    public ServiceInfo(ServiceInfo serviceInfo) {
        super(serviceInfo);
        this.permission = serviceInfo.permission;
        this.flags = serviceInfo.flags;
    }

    private ServiceInfo(Parcel parcel) {
        super(parcel);
        this.permission = parcel.readString();
        this.flags = parcel.readInt();
    }
}
