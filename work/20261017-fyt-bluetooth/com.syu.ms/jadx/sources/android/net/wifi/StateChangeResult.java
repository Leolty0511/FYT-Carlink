package android.net.wifi;

/* JADX INFO: loaded from: classes.dex */
public class StateChangeResult {
    public String BSSID;
    public int networkId;
    public SupplicantState state;
    public WifiSsid wifiSsid;

    public StateChangeResult(int i2, WifiSsid wifiSsid, String str, SupplicantState supplicantState) {
        this.state = supplicantState;
        this.wifiSsid = wifiSsid;
        this.BSSID = str;
        this.networkId = i2;
    }
}
