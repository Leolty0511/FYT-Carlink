package com.android.server.wifi;

import android.net.wifi.ITrafficStateCallback;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import com.android.server.wifi.util.ExternalCallbackTracker;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* JADX INFO: loaded from: classes.dex */
public class WifiTrafficPoller {
    private static final String TAG = "WifiTrafficPoller";
    private int mDataActivity;
    private final ExternalCallbackTracker<ITrafficStateCallback> mRegisteredCallbacks;
    private long mRxPkts;
    private long mTxPkts;

    WifiTrafficPoller(Looper looper) {
        this.mRegisteredCallbacks = new ExternalCallbackTracker<>(new Handler(looper));
    }

    public void addCallback(IBinder binder, ITrafficStateCallback callback, int callbackIdentifier) {
        if (!this.mRegisteredCallbacks.add(binder, callback, callbackIdentifier)) {
            Log.e(TAG, "Failed to add callback");
        }
    }

    public void removeCallback(int callbackIdentifier) {
        this.mRegisteredCallbacks.remove(callbackIdentifier);
    }

    void notifyOnDataActivity(long txPkts, long rxPkts) {
        int dataActivity;
        long preTxPkts = this.mTxPkts;
        long preRxPkts = this.mRxPkts;
        int dataActivity2 = 0;
        this.mTxPkts = txPkts;
        this.mRxPkts = rxPkts;
        if (preTxPkts > 0 || preRxPkts > 0) {
            long sent = this.mTxPkts - preTxPkts;
            long received = this.mRxPkts - preRxPkts;
            if (sent > 0) {
                dataActivity2 = 0 | 2;
            }
            if (received <= 0) {
                dataActivity = dataActivity2;
            } else {
                dataActivity = dataActivity2 | 1;
            }
            int dataActivity3 = this.mDataActivity;
            if (dataActivity != dataActivity3) {
                this.mDataActivity = dataActivity;
                for (ITrafficStateCallback callback : this.mRegisteredCallbacks.getCallbacks()) {
                    long preTxPkts2 = preTxPkts;
                    try {
                        callback.onStateChanged(this.mDataActivity);
                    } catch (RemoteException e) {
                    }
                    preTxPkts = preTxPkts2;
                }
            }
        }
    }

    public void dump(FileDescriptor fd, PrintWriter pw, String[] args) {
        pw.println("mTxPkts " + this.mTxPkts);
        pw.println("mRxPkts " + this.mRxPkts);
        pw.println("mDataActivity " + this.mDataActivity);
        pw.println("mRegisteredCallbacks " + this.mRegisteredCallbacks.getNumCallbacks());
    }
}
