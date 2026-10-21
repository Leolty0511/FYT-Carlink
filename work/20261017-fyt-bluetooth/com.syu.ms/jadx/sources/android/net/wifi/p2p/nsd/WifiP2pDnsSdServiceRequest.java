package android.net.wifi.p2p.nsd;

/* JADX INFO: loaded from: classes.dex */
public class WifiP2pDnsSdServiceRequest extends WifiP2pServiceRequest {
    private WifiP2pDnsSdServiceRequest(String str) {
        super(1, str);
    }

    public static WifiP2pDnsSdServiceRequest newInstance() {
        return new WifiP2pDnsSdServiceRequest();
    }

    private WifiP2pDnsSdServiceRequest() {
        super(1, null);
    }

    public static WifiP2pDnsSdServiceRequest newInstance(String str) {
        if (str == null) {
            throw new IllegalArgumentException("service type cannot be null");
        }
        return new WifiP2pDnsSdServiceRequest(str + ".local.", 12, 1);
    }

    private WifiP2pDnsSdServiceRequest(String str, int i2, int i3) {
        super(1, WifiP2pDnsSdServiceInfo.createRequest(str, i2, i3));
    }

    public static WifiP2pDnsSdServiceRequest newInstance(String str, String str2) {
        if (str != null && str2 != null) {
            return new WifiP2pDnsSdServiceRequest(str + "." + str2 + ".local.", 16, 1);
        }
        throw new IllegalArgumentException("instance name or service type cannot be null");
    }
}
