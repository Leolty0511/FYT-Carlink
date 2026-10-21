package com.sprd.server.wifi;

import android.content.Context;
import android.net.wifi.IWifiRssiLinkSpeedAndFrequencyObserver;
import android.net.wifi.WifiInfo;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public class WifiRssiLinkSpeedAndFrequencyMonitor {
    private static final int EVENT_WIFI_RSSI_LINKSPEED_FREQUENCY_CHANGED = 0;
    private static String TAG = "WifiRssiLinkSpeedAndFrequencyMonitor";
    private final Context mContext;
    private final InternalHandler mHandler;
    private boolean DBG = true;
    private final RemoteCallbackList<IWifiRssiLinkSpeedAndFrequencyObserver> mObservers = new RemoteCallbackList<>();
    private final HandlerThread mHandlerThread = new HandlerThread("WifiRssiLinkSpeedAndFrequencyMonitor");

    public WifiRssiLinkSpeedAndFrequencyMonitor(Context context) {
        this.mContext = context;
        this.mHandlerThread.start();
        this.mHandler = new InternalHandler(this.mHandlerThread.getLooper());
    }

    public void notifyWifiRssiLinkSpeedAndFrequencyChange(WifiInfo wifiInfo) {
        InternalHandler internalHandler = this.mHandler;
        internalHandler.sendMessage(internalHandler.obtainMessage(0, new WifiInfo(wifiInfo)));
    }

    public boolean registerObserver(IWifiRssiLinkSpeedAndFrequencyObserver observer) {
        logd("Register Obervers!!!");
        this.mObservers.register(observer);
        return true;
    }

    public boolean unregisterObserver(IWifiRssiLinkSpeedAndFrequencyObserver observer) {
        this.mObservers.unregister(observer);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyRssiLinkSpeedAndFrequencyUpdated(WifiInfo wifiInfo) {
        int length = this.mObservers.beginBroadcast();
        if (length == 0) {
            logd("Not any Obervers!!!");
        }
        for (int i = 0; i < length; i++) {
            try {
                this.mObservers.getBroadcastItem(i).onWifiRssiLinkSpeedAndFrequencyUpdated(wifiInfo);
            } catch (RemoteException e) {
            } catch (RuntimeException e2) {
            } catch (Throwable th) {
                this.mObservers.finishBroadcast();
                throw th;
            }
        }
        this.mObservers.finishBroadcast();
    }

    private class InternalHandler extends Handler {
        public InternalHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            if (msg.what == 0) {
                WifiRssiLinkSpeedAndFrequencyMonitor.this.logd("EVENT_WIFI_RSSI_LINKSPEED_FREQUENCY_CHANGED");
                WifiInfo wifiInfo = (WifiInfo) msg.obj;
                if (wifiInfo != null) {
                    WifiRssiLinkSpeedAndFrequencyMonitor.this.notifyRssiLinkSpeedAndFrequencyUpdated(wifiInfo);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void logd(String log) {
        if (this.DBG) {
            Log.d(TAG, log);
        }
    }
}
