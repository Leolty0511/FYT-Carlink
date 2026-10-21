package com.sprd.server.wifi;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import com.android.ims.internal.IImsServiceEx;
import com.android.ims.internal.ImsManagerEx;
import com.android.server.wifi.ClientModeManager;
import com.android.server.wifi.SoftApManager;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public class VoWifiAssistor {
    private static final int BASE = 548864;
    private static final int CMD_START_SOFTAP = 548866;
    private static final int CMD_TURN_OFF_WIFI = 548865;
    private static String TAG = "VoWifiAssistor";
    private final AssistorHandler mAssistorHandler;
    private ClientModeManager mClientModeManager;
    private final Context mContext;
    private SoftApManager mSoftApManager;
    private WifiNetworkMonitor mWifiNetworkMonitor;
    private boolean mVerboseLoggingEnabled = false;
    private final AtomicBoolean mIsWifiWaitingForClose = new AtomicBoolean(false);
    private final AtomicBoolean mIsSoftApWaitingForStart = new AtomicBoolean(false);
    private final AtomicBoolean mIsSoftApStarted = new AtomicBoolean(false);
    private IImsServiceEx mIImsServiceEx = ImsManagerEx.getIImsServiceEx();

    public VoWifiAssistor(Context context, Looper looper, WifiNetworkMonitor wifiNetworkMonitor) {
        this.mContext = context;
        this.mAssistorHandler = new AssistorHandler(looper);
        this.mWifiNetworkMonitor = wifiNetworkMonitor;
        IntentFilter filter = new IntentFilter();
        filter.addAction("android.net.wifi.WIFI_AP_STATE_CHANGED");
        this.mContext.registerReceiver(new BroadcastReceiver() { // from class: com.sprd.server.wifi.VoWifiAssistor.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                String action = intent.getAction();
                if (action.equals("android.net.wifi.WIFI_AP_STATE_CHANGED")) {
                    int state = intent.getIntExtra("wifi_state", 14);
                    if (state == 13) {
                        if (VoWifiAssistor.this.mVerboseLoggingEnabled) {
                            Log.d(VoWifiAssistor.TAG, "SoftAP started");
                        }
                        VoWifiAssistor.this.mIsSoftApStarted.set(true);
                    } else if (state == 11) {
                        if (VoWifiAssistor.this.mVerboseLoggingEnabled) {
                            Log.d(VoWifiAssistor.TAG, "SoftAP disabled.");
                        }
                        VoWifiAssistor.this.mIsSoftApStarted.set(false);
                    }
                }
            }
        }, filter);
    }

    public void enableVerboseLogging(int verbose) {
        if (verbose > 0) {
            this.mVerboseLoggingEnabled = true;
        } else {
            this.mVerboseLoggingEnabled = false;
        }
    }

    public void notifyAndCloseWifi() {
        if (this.mVerboseLoggingEnabled) {
            Log.d(TAG, "notifyAndCloseWifi");
        }
        turnOffWifiImmediately();
    }

    public void delayTurnOffWifi(ClientModeManager clientModeManager) {
        if (this.mVerboseLoggingEnabled) {
            Log.d(TAG, "delayTurnOffWifi ");
        }
        this.mWifiNetworkMonitor.notifyWifiStateChange(false);
        this.mClientModeManager = clientModeManager;
        this.mIsWifiWaitingForClose.set(true);
    }

    public boolean isVoWifiRegistered() {
        if (this.mIImsServiceEx == null) {
            this.mIImsServiceEx = ImsManagerEx.getIImsServiceEx();
        }
        IImsServiceEx iImsServiceEx = this.mIImsServiceEx;
        if (iImsServiceEx == null || this.mWifiNetworkMonitor == null) {
            return false;
        }
        try {
            return 2 == iImsServiceEx.getCurrentImsFeature();
        } catch (RemoteException e) {
            Log.e(TAG, "RemoteException: getCurrentImsFeature() failed !");
            return false;
        }
    }

    public boolean isVoWifiAttached() {
        if (this.mIImsServiceEx == null) {
            this.mIImsServiceEx = ImsManagerEx.getIImsServiceEx();
        }
        IImsServiceEx iImsServiceEx = this.mIImsServiceEx;
        if (iImsServiceEx == null || this.mWifiNetworkMonitor == null) {
            return false;
        }
        try {
            return iImsServiceEx.isVoWifiAttached();
        } catch (RemoteException e) {
            Log.e(TAG, "RemoteException: isVoWifiAttached() failed !");
            return false;
        }
    }

    public boolean isSoftApStarted() {
        return this.mIsSoftApStarted.get();
    }

    public void delayStartSoftAP(SoftApManager softApManager) {
        if (this.mVerboseLoggingEnabled) {
            Log.d(TAG, "delayStartSoftAP");
        }
        this.mWifiNetworkMonitor.notifyWifiStateChange(false);
        this.mIsSoftApWaitingForStart.set(true);
        this.mSoftApManager = softApManager;
        AssistorHandler assistorHandler = this.mAssistorHandler;
        assistorHandler.sendMessageDelayed(assistorHandler.obtainMessage(CMD_START_SOFTAP), 500L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void turnOffWifiImmediately() {
        if (this.mVerboseLoggingEnabled) {
            Log.d(TAG, "turnOffWifiImmediately: is waitting =" + this.mIsWifiWaitingForClose.get());
        }
        if (this.mAssistorHandler.hasMessages(CMD_TURN_OFF_WIFI)) {
            if (this.mVerboseLoggingEnabled) {
                Log.d(TAG, "remove turn off message.");
            }
            this.mAssistorHandler.removeMessages(CMD_TURN_OFF_WIFI);
        }
        if (this.mIsWifiWaitingForClose.get()) {
            this.mIsWifiWaitingForClose.set(false);
            if (this.mClientModeManager != null) {
                if (this.mVerboseLoggingEnabled) {
                    Log.d(TAG, "turnOffWifiImmediately: quit client mode now.");
                }
                this.mClientModeManager.stopImmediately();
                this.mClientModeManager = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startSoftApImmediately() {
        if (this.mVerboseLoggingEnabled) {
            Log.d(TAG, "startSoftApImmediately: SoftApWaiting =" + this.mIsSoftApWaitingForStart.get());
        }
        if (this.mAssistorHandler.hasMessages(CMD_START_SOFTAP)) {
            if (this.mVerboseLoggingEnabled) {
                Log.d(TAG, "remove start softAP message.");
            }
            this.mAssistorHandler.removeMessages(CMD_START_SOFTAP);
        }
        if (this.mIsSoftApWaitingForStart.get()) {
            this.mIsSoftApWaitingForStart.set(false);
            if (this.mSoftApManager != null) {
                if (this.mVerboseLoggingEnabled) {
                    Log.d(TAG, "turnOffWifiImmediately: start softAP now.");
                }
                this.mSoftApManager.startImmediately();
                this.mSoftApManager = null;
            }
        }
    }

    private class AssistorHandler extends Handler {
        AssistorHandler(Looper loop) {
            super(loop);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message msg) {
            switch (msg.what) {
                case VoWifiAssistor.CMD_TURN_OFF_WIFI /* 548865 */:
                    if (VoWifiAssistor.this.mVerboseLoggingEnabled) {
                        Log.d(VoWifiAssistor.TAG, "handleMessage: CMD_TURN_OFF_WIFI");
                    }
                    VoWifiAssistor.this.turnOffWifiImmediately();
                    break;
                case VoWifiAssistor.CMD_START_SOFTAP /* 548866 */:
                    if (VoWifiAssistor.this.mVerboseLoggingEnabled) {
                        Log.d(VoWifiAssistor.TAG, "handleMessage: CMD_START_SOFTAP");
                    }
                    VoWifiAssistor.this.startSoftApImmediately();
                    break;
            }
        }
    }
}
