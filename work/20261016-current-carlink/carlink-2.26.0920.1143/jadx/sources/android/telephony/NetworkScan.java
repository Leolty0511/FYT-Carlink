package android.telephony;

import android.os.RemoteException;
import android.os.ServiceManager;
import com.android.internal.telephony.ITelephony;

/* JADX INFO: loaded from: classes2.dex */
public class NetworkScan {
    public static final int ERROR_INTERRUPTED = 10002;
    public static final int ERROR_INVALID_SCAN = 2;
    public static final int ERROR_INVALID_SCANID = 10001;
    public static final int ERROR_MODEM_BUSY = 3;
    public static final int ERROR_MODEM_ERROR = 1;
    public static final int ERROR_RIL_ERROR = 10000;
    public static final int ERROR_UNSUPPORTED = 4;
    public static final int SUCCESS = 0;
    public static final String TAG = "NetworkScan";
    private final int mScanId;
    private final int mSubId;

    public NetworkScan(int i2, int i3) {
        this.mScanId = i2;
        this.mSubId = i3;
    }

    private ITelephony getITelephony() {
        return ITelephony.Stub.asInterface(ServiceManager.getService("phone"));
    }

    public void stop() throws RemoteException {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony == null) {
                throw new RemoteException("Failed to get the ITelephony instance.");
            }
            iTelephony.stopNetworkScan(this.mSubId, this.mScanId);
        } catch (RemoteException e2) {
            Rlog.e(TAG, "stopNetworkScan  RemoteException", e2);
            throw new RemoteException("Failed to stop the network scan with id " + this.mScanId);
        }
    }
}
