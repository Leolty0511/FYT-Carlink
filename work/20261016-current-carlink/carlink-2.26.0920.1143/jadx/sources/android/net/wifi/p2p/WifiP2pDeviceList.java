package android.net.wifi.p2p;

import android.accessibilityservice.c;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class WifiP2pDeviceList implements Parcelable {
    public static final Parcelable.Creator<WifiP2pDeviceList> CREATOR = new Parcelable.Creator<WifiP2pDeviceList>() { // from class: android.net.wifi.p2p.WifiP2pDeviceList.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public WifiP2pDeviceList createFromParcel(Parcel parcel) {
            WifiP2pDeviceList wifiP2pDeviceList = new WifiP2pDeviceList();
            int i2 = parcel.readInt();
            for (int i3 = 0; i3 < i2; i3++) {
                wifiP2pDeviceList.update((WifiP2pDevice) parcel.readParcelable(null));
            }
            return wifiP2pDeviceList;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public WifiP2pDeviceList[] newArray(int i2) {
            return new WifiP2pDeviceList[i2];
        }
    };
    private final HashMap<String, WifiP2pDevice> mDevices = new HashMap<>();

    public WifiP2pDeviceList() {
    }

    private void validateDevice(WifiP2pDevice wifiP2pDevice) {
        if (wifiP2pDevice == null) {
            throw new IllegalArgumentException("Null device");
        }
        if (TextUtils.isEmpty(wifiP2pDevice.deviceAddress)) {
            throw new IllegalArgumentException("Empty deviceAddress");
        }
    }

    private void validateDeviceAddress(String str) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Empty deviceAddress");
        }
    }

    public boolean clear() {
        if (this.mDevices.isEmpty()) {
            return false;
        }
        this.mDevices.clear();
        return true;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public WifiP2pDevice get(String str) {
        validateDeviceAddress(str);
        return this.mDevices.get(str);
    }

    public Collection<WifiP2pDevice> getDeviceList() {
        return Collections.unmodifiableCollection(this.mDevices.values());
    }

    public boolean isGroupOwner(String str) {
        validateDeviceAddress(str);
        WifiP2pDevice wifiP2pDevice = this.mDevices.get(str);
        if (wifiP2pDevice != null) {
            return wifiP2pDevice.isGroupOwner();
        }
        throw new IllegalArgumentException(c.j("Device not found ", str));
    }

    public boolean remove(WifiP2pDevice wifiP2pDevice) {
        validateDevice(wifiP2pDevice);
        return this.mDevices.remove(wifiP2pDevice.deviceAddress) != null;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        for (WifiP2pDevice wifiP2pDevice : this.mDevices.values()) {
            stringBuffer.append("\n");
            stringBuffer.append(wifiP2pDevice);
        }
        return stringBuffer.toString();
    }

    public void update(WifiP2pDevice wifiP2pDevice) {
        updateSupplicantDetails(wifiP2pDevice);
        this.mDevices.get(wifiP2pDevice.deviceAddress).status = wifiP2pDevice.status;
    }

    public void updateGroupCapability(String str, int i2) {
        validateDeviceAddress(str);
        WifiP2pDevice wifiP2pDevice = this.mDevices.get(str);
        if (wifiP2pDevice != null) {
            wifiP2pDevice.groupCapability = i2;
        }
    }

    public void updateStatus(String str, int i2) {
        validateDeviceAddress(str);
        WifiP2pDevice wifiP2pDevice = this.mDevices.get(str);
        if (wifiP2pDevice != null) {
            wifiP2pDevice.status = i2;
        }
    }

    public void updateSupplicantDetails(WifiP2pDevice wifiP2pDevice) {
        validateDevice(wifiP2pDevice);
        WifiP2pDevice wifiP2pDevice2 = this.mDevices.get(wifiP2pDevice.deviceAddress);
        if (wifiP2pDevice2 == null) {
            this.mDevices.put(wifiP2pDevice.deviceAddress, wifiP2pDevice);
            return;
        }
        wifiP2pDevice2.deviceName = wifiP2pDevice.deviceName;
        wifiP2pDevice2.primaryDeviceType = wifiP2pDevice.primaryDeviceType;
        wifiP2pDevice2.secondaryDeviceType = wifiP2pDevice.secondaryDeviceType;
        wifiP2pDevice2.wpsConfigMethodsSupported = wifiP2pDevice.wpsConfigMethodsSupported;
        wifiP2pDevice2.deviceCapability = wifiP2pDevice.deviceCapability;
        wifiP2pDevice2.groupCapability = wifiP2pDevice.groupCapability;
        wifiP2pDevice2.wfdInfo = wifiP2pDevice.wfdInfo;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mDevices.size());
        Iterator<WifiP2pDevice> it = this.mDevices.values().iterator();
        while (it.hasNext()) {
            parcel.writeParcelable(it.next(), i2);
        }
    }

    public WifiP2pDeviceList(WifiP2pDeviceList wifiP2pDeviceList) {
        if (wifiP2pDeviceList != null) {
            for (WifiP2pDevice wifiP2pDevice : wifiP2pDeviceList.getDeviceList()) {
                this.mDevices.put(wifiP2pDevice.deviceAddress, new WifiP2pDevice(wifiP2pDevice));
            }
        }
    }

    public WifiP2pDevice remove(String str) {
        validateDeviceAddress(str);
        return this.mDevices.remove(str);
    }

    public boolean remove(WifiP2pDeviceList wifiP2pDeviceList) {
        Iterator<WifiP2pDevice> it = wifiP2pDeviceList.mDevices.values().iterator();
        boolean z2 = false;
        while (it.hasNext()) {
            if (remove(it.next())) {
                z2 = true;
            }
        }
        return z2;
    }

    public WifiP2pDeviceList(ArrayList<WifiP2pDevice> arrayList) {
        for (WifiP2pDevice wifiP2pDevice : arrayList) {
            String str = wifiP2pDevice.deviceAddress;
            if (str != null) {
                this.mDevices.put(str, new WifiP2pDevice(wifiP2pDevice));
            }
        }
    }
}
