package android.telephony;

import android.os.Binder;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcelable;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.util.SparseArray;
import com.android.internal.telephony.ITelephony;
import com.android.internal.util.Preconditions;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class TelephonyScanManager {
    public static final int CALLBACK_SCAN_COMPLETE = 3;
    public static final int CALLBACK_SCAN_ERROR = 2;
    public static final int CALLBACK_SCAN_RESULTS = 1;
    public static final String SCAN_RESULT_KEY = "scanResult";
    private static final String TAG = "TelephonyScanManager";
    private final Looper mLooper;
    private final Messenger mMessenger;
    private SparseArray<NetworkScanInfo> mScanInfo = new SparseArray<>();

    public static abstract class NetworkScanCallback {
        public void onComplete() {
        }

        public void onError(int i2) {
        }

        public void onResults(List<CellInfo> list) {
        }
    }

    public static class NetworkScanInfo {
        private final NetworkScanCallback mCallback;
        private final NetworkScanRequest mRequest;

        public NetworkScanInfo(NetworkScanRequest networkScanRequest, NetworkScanCallback networkScanCallback) {
            this.mRequest = networkScanRequest;
            this.mCallback = networkScanCallback;
        }
    }

    public TelephonyScanManager() {
        HandlerThread handlerThread = new HandlerThread(TAG);
        handlerThread.start();
        Looper looper = handlerThread.getLooper();
        this.mLooper = looper;
        this.mMessenger = new Messenger(new Handler(looper) { // from class: android.telephony.TelephonyScanManager.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                NetworkScanInfo networkScanInfo;
                Preconditions.checkNotNull(message, "message cannot be null");
                synchronized (TelephonyScanManager.this.mScanInfo) {
                    networkScanInfo = (NetworkScanInfo) TelephonyScanManager.this.mScanInfo.get(message.arg2);
                }
                if (networkScanInfo == null) {
                    throw new RuntimeException("Failed to find NetworkScanInfo with id " + message.arg2);
                }
                NetworkScanCallback networkScanCallback = networkScanInfo.mCallback;
                if (networkScanCallback == null) {
                    throw new RuntimeException("Failed to find NetworkScanCallback with id " + message.arg2);
                }
                int i2 = message.what;
                if (i2 == 1) {
                    try {
                        Parcelable[] parcelableArray = message.getData().getParcelableArray(TelephonyScanManager.SCAN_RESULT_KEY);
                        CellInfo[] cellInfoArr = new CellInfo[parcelableArray.length];
                        for (int i3 = 0; i3 < parcelableArray.length; i3++) {
                            cellInfoArr[i3] = (CellInfo) parcelableArray[i3];
                        }
                        networkScanCallback.onResults(Arrays.asList(cellInfoArr));
                        return;
                    } catch (Exception e2) {
                        Rlog.e(TelephonyScanManager.TAG, "Exception in networkscan callback onResults", e2);
                        return;
                    }
                }
                if (i2 == 2) {
                    try {
                        networkScanCallback.onError(message.arg1);
                        return;
                    } catch (Exception e3) {
                        Rlog.e(TelephonyScanManager.TAG, "Exception in networkscan callback onError", e3);
                        return;
                    }
                }
                if (i2 != 3) {
                    Rlog.e(TelephonyScanManager.TAG, "Unhandled message " + Integer.toHexString(message.what));
                } else {
                    try {
                        networkScanCallback.onComplete();
                        TelephonyScanManager.this.mScanInfo.remove(message.arg2);
                    } catch (Exception e4) {
                        Rlog.e(TelephonyScanManager.TAG, "Exception in networkscan callback onComplete", e4);
                    }
                }
            }
        });
    }

    private ITelephony getITelephony() {
        return ITelephony.Stub.asInterface(ServiceManager.getService("phone"));
    }

    private void saveScanInfo(int i2, NetworkScanRequest networkScanRequest, NetworkScanCallback networkScanCallback) {
        synchronized (this.mScanInfo) {
            this.mScanInfo.put(i2, new NetworkScanInfo(networkScanRequest, networkScanCallback));
        }
    }

    public NetworkScan requestNetworkScan(int i2, NetworkScanRequest networkScanRequest, NetworkScanCallback networkScanCallback) {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony == null) {
                return null;
            }
            int iRequestNetworkScan = iTelephony.requestNetworkScan(i2, networkScanRequest, this.mMessenger, new Binder());
            saveScanInfo(iRequestNetworkScan, networkScanRequest, networkScanCallback);
            return new NetworkScan(iRequestNetworkScan, i2);
        } catch (RemoteException e2) {
            Rlog.e(TAG, "requestNetworkScan RemoteException", e2);
            return null;
        } catch (NullPointerException e3) {
            Rlog.e(TAG, "requestNetworkScan NPE", e3);
            return null;
        }
    }
}
