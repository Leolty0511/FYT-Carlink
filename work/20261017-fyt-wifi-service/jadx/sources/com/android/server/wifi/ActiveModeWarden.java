package com.android.server.wifi;

import android.content.Context;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiManager;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.util.ArraySet;
import android.util.Log;
import com.android.internal.app.IBatteryStats;
import com.android.internal.util.State;
import com.android.internal.util.StateMachine;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class ActiveModeWarden {
    static final int BASE = 131072;
    static final int CMD_AP_STOPPED = 131096;
    static final int CMD_CLIENT_MODE_FAILED = 131376;
    static final int CMD_CLIENT_MODE_STOPPED = 131375;
    static final int CMD_SCAN_ONLY_MODE_FAILED = 131276;
    static final int CMD_SCAN_ONLY_MODE_STOPPED = 131275;
    static final int CMD_START_AP = 131093;
    static final int CMD_START_AP_FAILURE = 131094;
    static final int CMD_START_CLIENT_MODE = 131372;
    static final int CMD_START_CLIENT_MODE_FAILURE = 131373;
    static final int CMD_START_SCAN_ONLY_MODE = 131272;
    static final int CMD_START_SCAN_ONLY_MODE_FAILURE = 131273;
    static final int CMD_STOP_AP = 131095;
    static final int CMD_STOP_CLIENT_MODE = 131374;
    static final int CMD_STOP_SCAN_ONLY_MODE = 131274;
    private static final String TAG = "WifiActiveModeWarden";
    private final IBatteryStats mBatteryStats;
    private ClientModeManager.Listener mClientModeCallback;
    private final Context mContext;
    private DefaultModeManager mDefaultModeManager;
    private final Handler mHandler;
    private final Looper mLooper;
    private ScanOnlyModeManager.Listener mScanOnlyCallback;
    private final ScanRequestProxy mScanRequestProxy;
    private final SelfRecovery mSelfRecovery;
    private WifiManager.SoftApCallback mSoftApCallback;
    private BaseWifiDiagnostics mWifiDiagnostics;
    private final WifiInjector mWifiInjector;
    private final WifiNative mWifiNative;
    private final ArraySet<ActiveModeManager> mActiveModeManagers = new ArraySet<>();
    private ModeStateMachine mModeStateMachine = new ModeStateMachine();
    private WifiNative.StatusListener mWifiNativeStatusListener = new WifiNativeStatusListener();

    public void registerSoftApCallback(WifiManager.SoftApCallback callback) {
        this.mSoftApCallback = callback;
    }

    public void registerScanOnlyCallback(ScanOnlyModeManager.Listener callback) {
        this.mScanOnlyCallback = callback;
    }

    public void registerClientModeCallback(ClientModeManager.Listener callback) {
        this.mClientModeCallback = callback;
    }

    ActiveModeWarden(WifiInjector wifiInjector, Context context, Looper looper, WifiNative wifiNative, DefaultModeManager defaultModeManager, IBatteryStats batteryStats) {
        this.mWifiInjector = wifiInjector;
        this.mContext = context;
        this.mLooper = looper;
        this.mHandler = new Handler(looper);
        this.mWifiNative = wifiNative;
        this.mDefaultModeManager = defaultModeManager;
        this.mBatteryStats = batteryStats;
        this.mSelfRecovery = this.mWifiInjector.getSelfRecovery();
        this.mWifiDiagnostics = this.mWifiInjector.getWifiDiagnostics();
        this.mScanRequestProxy = this.mWifiInjector.getScanRequestProxy();
        this.mWifiNative.registerStatusListener(this.mWifiNativeStatusListener);
    }

    public void enterClientMode() {
        changeMode(0);
    }

    public void enterScanOnlyMode() {
        changeMode(1);
    }

    public void enterSoftAPMode(final SoftApModeConfiguration wifiConfig) {
        this.mHandler.post(new Runnable() { // from class: com.android.server.wifi.-$$Lambda$ActiveModeWarden$QAJ4pfaYdUiVIU6ABf9wXsz3tAY
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$enterSoftAPMode$0$ActiveModeWarden(wifiConfig);
            }
        });
    }

    public void stopSoftAPMode(final int mode) {
        this.mHandler.post(new Runnable() { // from class: com.android.server.wifi.-$$Lambda$ActiveModeWarden$_fzp9cs5EtNxYeezL3OcIFJlBbY
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$stopSoftAPMode$1$ActiveModeWarden(mode);
            }
        });
    }

    public /* synthetic */ void lambda$stopSoftAPMode$1$ActiveModeWarden(int mode) {
        for (ActiveModeManager manager : this.mActiveModeManagers) {
            if (manager instanceof SoftApManager) {
                SoftApManager softApManager = (SoftApManager) manager;
                if (mode == -1 || mode == softApManager.getIpMode()) {
                    softApManager.stop();
                }
            }
        }
        updateBatteryStatsWifiState(false);
    }

    public void disableWifi() {
        changeMode(3);
    }

    public void shutdownWifi() {
        this.mHandler.post(new Runnable() { // from class: com.android.server.wifi.-$$Lambda$ActiveModeWarden$skZnlQA_XNfzO7bzN0K-gj2qgLA
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$shutdownWifi$2$ActiveModeWarden();
            }
        });
    }

    public /* synthetic */ void lambda$shutdownWifi$2$ActiveModeWarden() {
        for (ActiveModeManager manager : this.mActiveModeManagers) {
            manager.stop();
        }
        updateBatteryStatsWifiState(false);
    }

    public void dump(FileDescriptor fd, PrintWriter pw, String[] args) {
        pw.println("Dump of WifiActiveModeWarden");
        pw.println("Current wifi mode: " + getCurrentMode());
        pw.println("NumActiveModeManagers: " + this.mActiveModeManagers.size());
        for (ActiveModeManager manager : this.mActiveModeManagers) {
            manager.dump(fd, pw, args);
        }
    }

    protected String getCurrentMode() {
        return this.mModeStateMachine.getCurrentMode();
    }

    private void changeMode(int newMode) {
        this.mModeStateMachine.sendMessage(newMode);
    }

    private class ModeCallback {
        ActiveModeManager mActiveManager;

        private ModeCallback() {
        }

        void setActiveModeManager(ActiveModeManager manager) {
            this.mActiveManager = manager;
        }

        ActiveModeManager getActiveModeManager() {
            return this.mActiveManager;
        }
    }

    private class ModeStateMachine extends StateMachine {
        public static final int CMD_DISABLE_WIFI = 3;
        public static final int CMD_START_CLIENT_MODE = 0;
        public static final int CMD_START_SCAN_ONLY_MODE = 1;
        private final State mClientModeActiveState;
        private final State mScanOnlyModeActiveState;
        private final State mWifiDisabledState;

        ModeStateMachine() {
            super(ActiveModeWarden.TAG, ActiveModeWarden.this.mLooper);
            this.mWifiDisabledState = new WifiDisabledState();
            this.mClientModeActiveState = new ClientModeActiveState();
            this.mScanOnlyModeActiveState = new ScanOnlyModeActiveState();
            addState(this.mClientModeActiveState);
            addState(this.mScanOnlyModeActiveState);
            addState(this.mWifiDisabledState);
            Log.d(ActiveModeWarden.TAG, "Starting Wifi in WifiDisabledState");
            setInitialState(this.mWifiDisabledState);
            start();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public String getCurrentMode() {
            return getCurrentState().getName();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean checkForAndHandleModeChange(Message message) {
            int i = message.what;
            if (i == 0) {
                Log.d(ActiveModeWarden.TAG, "Switching from " + getCurrentMode() + " to ClientMode");
                ActiveModeWarden.this.mModeStateMachine.transitionTo(this.mClientModeActiveState);
            } else if (i == 1) {
                Log.d(ActiveModeWarden.TAG, "Switching from " + getCurrentMode() + " to ScanOnlyMode");
                ActiveModeWarden.this.mModeStateMachine.transitionTo(this.mScanOnlyModeActiveState);
            } else if (i == 3) {
                Log.d(ActiveModeWarden.TAG, "Switching from " + getCurrentMode() + " to WifiDisabled");
                ActiveModeWarden.this.mModeStateMachine.transitionTo(this.mWifiDisabledState);
            } else {
                return false;
            }
            return true;
        }

        class ModeActiveState extends State {
            ActiveModeManager mManager;

            ModeActiveState() {
            }

            public boolean processMessage(Message message) {
                return false;
            }

            public void exit() {
                ActiveModeManager activeModeManager = this.mManager;
                if (activeModeManager != null) {
                    activeModeManager.stop();
                    ActiveModeWarden.this.mActiveModeManagers.remove(this.mManager);
                    updateScanMode();
                }
                ActiveModeWarden.this.updateBatteryStatsWifiState(false);
            }

            public void onModeActivationComplete() {
                updateScanMode();
            }

            private void updateScanMode() {
                boolean scanEnabled = false;
                boolean scanningForHiddenNetworksEnabled = false;
                for (ActiveModeManager modeManager : ActiveModeWarden.this.mActiveModeManagers) {
                    int scanState = modeManager.getScanMode();
                    if (scanState != 0) {
                        if (scanState == 1) {
                            scanEnabled = true;
                        } else if (scanState == 2) {
                            scanEnabled = true;
                            scanningForHiddenNetworksEnabled = true;
                        }
                    }
                }
                ActiveModeWarden.this.mScanRequestProxy.enableScanning(scanEnabled, scanningForHiddenNetworksEnabled);
            }
        }

        class WifiDisabledState extends ModeActiveState {
            WifiDisabledState() {
                super();
            }

            public void enter() {
                Log.d(ActiveModeWarden.TAG, "Entering WifiDisabledState");
            }

            @Override // com.android.server.wifi.ActiveModeWarden.ModeStateMachine.ModeActiveState
            public boolean processMessage(Message message) {
                Log.d(ActiveModeWarden.TAG, "received a message in WifiDisabledState: " + message);
                if (ModeStateMachine.this.checkForAndHandleModeChange(message)) {
                    return true;
                }
                return false;
            }

            @Override // com.android.server.wifi.ActiveModeWarden.ModeStateMachine.ModeActiveState
            public void exit() {
            }
        }

        class ClientModeActiveState extends ModeActiveState {
            ClientListener mListener;

            ClientModeActiveState() {
                super();
            }

            private class ClientListener implements ClientModeManager.Listener {
                private ClientListener() {
                }

                @Override // com.android.server.wifi.ClientModeManager.Listener
                public void onStateChanged(int state) {
                    if (this != ClientModeActiveState.this.mListener) {
                        Log.d(ActiveModeWarden.TAG, "Client mode state change from previous manager");
                        return;
                    }
                    Log.d(ActiveModeWarden.TAG, "State changed from client mode. state = " + state);
                    if (state == 4) {
                        ActiveModeWarden.this.mModeStateMachine.sendMessage(ActiveModeWarden.CMD_CLIENT_MODE_FAILED, this);
                        return;
                    }
                    if (state == 1) {
                        ActiveModeWarden.this.mModeStateMachine.sendMessage(ActiveModeWarden.CMD_CLIENT_MODE_STOPPED, this);
                    } else if (state == 3) {
                        Log.d(ActiveModeWarden.TAG, "client mode active");
                        ClientModeActiveState.this.onModeActivationComplete();
                    }
                }
            }

            public void enter() {
                Log.d(ActiveModeWarden.TAG, "Entering ClientModeActiveState");
                this.mListener = new ClientListener();
                this.mManager = ActiveModeWarden.this.mWifiInjector.makeClientModeManager(this.mListener);
                this.mManager.start();
                ActiveModeWarden.this.mActiveModeManagers.add(this.mManager);
                ActiveModeWarden.this.updateBatteryStatsWifiState(true);
            }

            @Override // com.android.server.wifi.ActiveModeWarden.ModeStateMachine.ModeActiveState
            public void exit() {
                super.exit();
                this.mListener = null;
            }

            @Override // com.android.server.wifi.ActiveModeWarden.ModeStateMachine.ModeActiveState
            public boolean processMessage(Message message) {
                if (ModeStateMachine.this.checkForAndHandleModeChange(message)) {
                    return true;
                }
                int i = message.what;
                if (i == 0) {
                    Log.d(ActiveModeWarden.TAG, "Received CMD_START_CLIENT_MODE when active - drop");
                } else {
                    switch (i) {
                        case ActiveModeWarden.CMD_CLIENT_MODE_STOPPED /* 131375 */:
                            if (this.mListener != message.obj) {
                                Log.d(ActiveModeWarden.TAG, "Client mode state change from previous manager");
                                return true;
                            }
                            Log.d(ActiveModeWarden.TAG, "ClientMode stopped, return to WifiDisabledState.");
                            ActiveModeWarden.this.mClientModeCallback.onStateChanged(1);
                            ActiveModeWarden.this.mModeStateMachine.transitionTo(ModeStateMachine.this.mWifiDisabledState);
                            break;
                            break;
                        case ActiveModeWarden.CMD_CLIENT_MODE_FAILED /* 131376 */:
                            if (this.mListener != message.obj) {
                                Log.d(ActiveModeWarden.TAG, "Client mode state change from previous manager");
                                return true;
                            }
                            Log.d(ActiveModeWarden.TAG, "ClientMode failed, return to WifiDisabledState.");
                            ActiveModeWarden.this.mClientModeCallback.onStateChanged(4);
                            ActiveModeWarden.this.mModeStateMachine.transitionTo(ModeStateMachine.this.mWifiDisabledState);
                            break;
                            break;
                        default:
                            return false;
                    }
                }
                return false;
            }
        }

        class ScanOnlyModeActiveState extends ModeActiveState {
            ScanOnlyListener mListener;

            ScanOnlyModeActiveState() {
                super();
            }

            private class ScanOnlyListener implements ScanOnlyModeManager.Listener {
                private ScanOnlyListener() {
                }

                @Override // com.android.server.wifi.ScanOnlyModeManager.Listener
                public void onStateChanged(int state) {
                    if (this != ScanOnlyModeActiveState.this.mListener) {
                        Log.d(ActiveModeWarden.TAG, "ScanOnly mode state change from previous manager");
                        return;
                    }
                    if (state == 4) {
                        Log.d(ActiveModeWarden.TAG, "ScanOnlyMode mode failed");
                        ActiveModeWarden.this.mModeStateMachine.sendMessage(ActiveModeWarden.CMD_SCAN_ONLY_MODE_FAILED, this);
                        return;
                    }
                    if (state == 1) {
                        Log.d(ActiveModeWarden.TAG, "ScanOnlyMode stopped");
                        ActiveModeWarden.this.mModeStateMachine.sendMessage(ActiveModeWarden.CMD_SCAN_ONLY_MODE_STOPPED, this);
                    } else if (state == 3) {
                        Log.d(ActiveModeWarden.TAG, "scan mode active");
                        ScanOnlyModeActiveState.this.onModeActivationComplete();
                    } else {
                        Log.d(ActiveModeWarden.TAG, "unexpected state update: " + state);
                    }
                }
            }

            public void enter() {
                Log.d(ActiveModeWarden.TAG, "Entering ScanOnlyModeActiveState");
                this.mListener = new ScanOnlyListener();
                this.mManager = ActiveModeWarden.this.mWifiInjector.makeScanOnlyModeManager(this.mListener);
                this.mManager.start();
                ActiveModeWarden.this.mActiveModeManagers.add(this.mManager);
                ActiveModeWarden.this.updateBatteryStatsWifiState(true);
                ActiveModeWarden.this.updateBatteryStatsScanModeActive();
            }

            @Override // com.android.server.wifi.ActiveModeWarden.ModeStateMachine.ModeActiveState
            public void exit() {
                super.exit();
                this.mListener = null;
            }

            @Override // com.android.server.wifi.ActiveModeWarden.ModeStateMachine.ModeActiveState
            public boolean processMessage(Message message) {
                if (ModeStateMachine.this.checkForAndHandleModeChange(message)) {
                    return true;
                }
                int i = message.what;
                if (i == 1) {
                    Log.d(ActiveModeWarden.TAG, "Received CMD_START_SCAN_ONLY_MODE when active - drop");
                } else {
                    switch (i) {
                        case ActiveModeWarden.CMD_SCAN_ONLY_MODE_STOPPED /* 131275 */:
                            if (this.mListener != message.obj) {
                                Log.d(ActiveModeWarden.TAG, "ScanOnly mode state change from previous manager");
                                return true;
                            }
                            Log.d(ActiveModeWarden.TAG, "ScanOnlyMode stopped, return to WifiDisabledState.");
                            ActiveModeWarden.this.mScanOnlyCallback.onStateChanged(1);
                            ActiveModeWarden.this.mModeStateMachine.transitionTo(ModeStateMachine.this.mWifiDisabledState);
                            break;
                            break;
                        case ActiveModeWarden.CMD_SCAN_ONLY_MODE_FAILED /* 131276 */:
                            if (this.mListener != message.obj) {
                                Log.d(ActiveModeWarden.TAG, "ScanOnly mode state change from previous manager");
                                return true;
                            }
                            Log.d(ActiveModeWarden.TAG, "ScanOnlyMode failed, return to WifiDisabledState.");
                            ActiveModeWarden.this.mScanOnlyCallback.onStateChanged(4);
                            ActiveModeWarden.this.mModeStateMachine.transitionTo(ModeStateMachine.this.mWifiDisabledState);
                            break;
                            break;
                        default:
                            return false;
                    }
                }
                return true;
            }
        }
    }

    private class SoftApCallbackImpl extends ModeCallback implements WifiManager.SoftApCallback {
        private int mMode;

        private SoftApCallbackImpl(int mode) {
            super();
            this.mMode = mode;
        }

        public void onStateChanged(int state, int reason) {
            if (state == 11 || state == 14) {
                ActiveModeWarden.this.mActiveModeManagers.remove(getActiveModeManager());
                ActiveModeWarden.this.updateBatteryStatsWifiState(false);
            }
            if (ActiveModeWarden.this.mSoftApCallback != null && this.mMode == 1) {
                ActiveModeWarden.this.mSoftApCallback.onStateChanged(state, reason);
            }
        }

        public void onNumClientsChanged(int numClients) {
            if (ActiveModeWarden.this.mSoftApCallback == null) {
                Log.d(ActiveModeWarden.TAG, "SoftApCallback is null. Dropping NumClientsChanged event.");
            } else if (this.mMode == 1) {
                ActiveModeWarden.this.mSoftApCallback.onNumClientsChanged(numClients);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: startSoftAp, reason: merged with bridge method [inline-methods] */
    public void lambda$enterSoftAPMode$0$ActiveModeWarden(SoftApModeConfiguration softapConfig) {
        Log.d(TAG, "Starting SoftApModeManager");
        Iterator<ActiveModeManager> it = this.mActiveModeManagers.iterator();
        while (it.hasNext()) {
            if (it.next() instanceof SoftApManager) {
                Log.d(TAG, "SoftApModeManager has started, ignore");
                return;
            }
        }
        WifiConfiguration config = softapConfig.getWifiConfiguration();
        if (config != null && config.SSID != null) {
            Log.d(TAG, "Passing config to SoftApManager! " + config);
        }
        SoftApCallbackImpl callback = new SoftApCallbackImpl(softapConfig.getTargetMode());
        ActiveModeManager manager = this.mWifiInjector.makeSoftApManager(callback, softapConfig);
        callback.setActiveModeManager(manager);
        manager.start();
        this.mActiveModeManagers.add(manager);
        updateBatteryStatsWifiState(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateBatteryStatsWifiState(boolean enabled) {
        try {
            if (enabled) {
                if (this.mActiveModeManagers.size() == 1) {
                    this.mBatteryStats.noteWifiOn();
                }
            } else if (this.mActiveModeManagers.size() == 0) {
                this.mBatteryStats.noteWifiOff();
            }
        } catch (RemoteException e) {
            Log.e(TAG, "Failed to note battery stats in wifi");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateBatteryStatsScanModeActive() {
        try {
            this.mBatteryStats.noteWifiState(1, (String) null);
        } catch (RemoteException e) {
            Log.e(TAG, "Failed to note battery stats in wifi");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    final class WifiNativeStatusListener implements WifiNative.StatusListener {
        private WifiNativeStatusListener() {
        }

        @Override // com.android.server.wifi.WifiNative.StatusListener
        public void onStatusChanged(boolean isReady) {
            if (!isReady) {
                ActiveModeWarden.this.mHandler.post(new Runnable() { // from class: com.android.server.wifi.-$$Lambda$ActiveModeWarden$WifiNativeStatusListener$GM1P1m0AypF_lbXV3uLBZPn3XlE
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onStatusChanged$0$ActiveModeWarden$WifiNativeStatusListener();
                    }
                });
            }
        }

        public /* synthetic */ void lambda$onStatusChanged$0$ActiveModeWarden$WifiNativeStatusListener() {
            Log.e(ActiveModeWarden.TAG, "One of the native daemons died. Triggering recovery");
            ActiveModeWarden.this.mWifiDiagnostics.captureBugReportData(8);
            ActiveModeWarden.this.mWifiInjector.getSelfRecovery().trigger(1);
        }
    }
}
