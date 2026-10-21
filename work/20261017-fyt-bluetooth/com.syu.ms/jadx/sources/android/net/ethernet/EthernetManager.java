package android.net.ethernet;

import android.os.Handler;
import android.os.RemoteException;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public class EthernetManager {
    public static final boolean DEBUG = true;
    private static final String TAG = "EthernetManager";
    public IEthernetManager mService;

    public EthernetManager(IEthernetManager iEthernetManager, Handler handler) {
        this.mService = iEthernetManager;
    }

    private static void LOG(String str) {
        Log.d(TAG, str);
    }

    public int getEthernetCarrierState() {
        LOG("getEthernetCarrierState() : Entered.");
        try {
            return this.mService.getEthernetCarrierState();
        } catch (RemoteException unused) {
            return 0;
        }
    }

    public int getEthernetConnectState() {
        LOG("getEthernetState() : Entered.");
        try {
            return this.mService.getEthernetConnectState();
        } catch (RemoteException unused) {
            return 0;
        }
    }

    public String getEthernetIfaceName() {
        try {
            return this.mService.getEthernetIfaceName();
        } catch (RemoteException unused) {
            Log.e(TAG, "get ethernet interface name failed");
            return "eth0";
        }
    }

    public int getEthernetIfaceState() {
        LOG("getEthernetIfaceState() : Entered.");
        try {
            return this.mService.getEthernetIfaceState();
        } catch (RemoteException unused) {
            return 0;
        }
    }

    public boolean setEthernetEnabled(boolean z2) {
        try {
            return this.mService.setEthernetEnabled(z2);
        } catch (RemoteException unused) {
            return false;
        }
    }
}
