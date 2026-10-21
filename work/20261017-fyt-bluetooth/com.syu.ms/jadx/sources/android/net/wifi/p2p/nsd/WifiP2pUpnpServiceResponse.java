package android.net.wifi.p2p.nsd;

import android.net.wifi.p2p.WifiP2pDevice;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class WifiP2pUpnpServiceResponse extends WifiP2pServiceResponse {
    private List<String> mUniqueServiceNames;
    private int mVersion;

    public WifiP2pUpnpServiceResponse(int i2, int i3, WifiP2pDevice wifiP2pDevice, byte[] bArr) {
        super(2, i2, i3, wifiP2pDevice, bArr);
        if (!parse()) {
            throw new IllegalArgumentException("Malformed upnp service response");
        }
    }

    public static WifiP2pUpnpServiceResponse newInstance(int i2, int i3, WifiP2pDevice wifiP2pDevice, byte[] bArr) {
        if (i2 != 0) {
            return new WifiP2pUpnpServiceResponse(i2, i3, wifiP2pDevice, null);
        }
        try {
            return new WifiP2pUpnpServiceResponse(i2, i3, wifiP2pDevice, bArr);
        } catch (IllegalArgumentException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    private boolean parse() {
        byte[] bArr = this.mData;
        if (bArr == null) {
            return true;
        }
        if (bArr.length < 1) {
            return false;
        }
        this.mVersion = bArr[0] & 255;
        String[] strArrSplit = new String(bArr, 1, bArr.length - 1).split(",");
        this.mUniqueServiceNames = new ArrayList();
        for (String str : strArrSplit) {
            this.mUniqueServiceNames.add(str);
        }
        return true;
    }

    public List<String> getUniqueServiceNames() {
        return this.mUniqueServiceNames;
    }

    public int getVersion() {
        return this.mVersion;
    }

    @Override // android.net.wifi.p2p.nsd.WifiP2pServiceResponse
    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("serviceType:UPnP(");
        stringBuffer.append(this.mServiceType);
        stringBuffer.append(")");
        stringBuffer.append(" status:");
        stringBuffer.append(WifiP2pServiceResponse.Status.toString(this.mStatus));
        stringBuffer.append(" srcAddr:");
        stringBuffer.append(this.mDevice.deviceAddress);
        stringBuffer.append(" version:");
        stringBuffer.append(String.format("%02x", Integer.valueOf(this.mVersion)));
        List<String> list = this.mUniqueServiceNames;
        if (list != null) {
            for (String str : list) {
                stringBuffer.append(" usn:");
                stringBuffer.append(str);
            }
        }
        return stringBuffer.toString();
    }
}
