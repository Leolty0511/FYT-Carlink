package com.android.server.wifi;

import android.content.Context;
import android.content.Intent;
import android.os.Looper;
import android.os.Message;
import android.os.UserHandle;
import android.text.TextUtils;
import android.util.Log;
import com.android.internal.util.IState;
import com.android.internal.util.State;
import com.android.internal.util.StateMachine;
import com.sprd.server.wifi.VoWifiAssistor;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* JADX INFO: loaded from: classes.dex */
public class ClientModeManager implements ActiveModeManager {
    private static final String TAG = "WifiClientModeManager";
    private String mClientInterfaceName;
    private final ClientModeImpl mClientModeImpl;
    private final Context mContext;
    private final Listener mListener;
    private final ClientModeStateMachine mStateMachine;
    private VoWifiAssistor mVoWifiAssistor;
    private final WifiMetrics mWifiMetrics;
    private final WifiNative mWifiNative;
    private boolean mIfaceIsUp = false;
    private boolean mExpectedStop = false;

    public interface Listener {
        void onStateChanged(int i);
    }

    ClientModeManager(Context context, Looper looper, WifiNative wifiNative, Listener listener, WifiMetrics wifiMetrics, ClientModeImpl clientModeImpl) {
        this.mContext = context;
        this.mWifiNative = wifiNative;
        this.mListener = listener;
        this.mWifiMetrics = wifiMetrics;
        this.mClientModeImpl = clientModeImpl;
        this.mStateMachine = new ClientModeStateMachine(looper);
    }

    ClientModeManager(Context context, Looper looper, WifiNative wifiNative, Listener listener, WifiMetrics wifiMetrics, ClientModeImpl clientModeImpl, VoWifiAssistor voWifiAssistor) {
        this.mContext = context;
        this.mWifiNative = wifiNative;
        this.mListener = listener;
        this.mWifiMetrics = wifiMetrics;
        this.mClientModeImpl = clientModeImpl;
        this.mStateMachine = new ClientModeStateMachine(looper);
        this.mVoWifiAssistor = voWifiAssistor;
    }

    @Override // com.android.server.wifi.ActiveModeManager
    public void start() {
        this.mStateMachine.sendMessage(0);
    }

    @Override // com.android.server.wifi.ActiveModeManager
    public void stop() {
        Log.d(TAG, " currentstate: " + getCurrentStateName());
        this.mExpectedStop = true;
        if (this.mClientInterfaceName != null) {
            if (this.mIfaceIsUp) {
                updateWifiState(0, 3);
            } else {
                updateWifiState(0, 2);
            }
        }
        if (this.mVoWifiAssistor.isVoWifiAttached() && !this.mVoWifiAssistor.isSoftApStarted()) {
            this.mVoWifiAssistor.delayTurnOffWifi(this);
            this.mStateMachine.sendMessageDelayed(1, 500L);
        } else {
            this.mStateMachine.quitNow();
        }
    }

    public void stopImmediately() {
        this.mStateMachine.quitNow();
    }

    @Override // com.android.server.wifi.ActiveModeManager
    public int getScanMode() {
        return 2;
    }

    @Override // com.android.server.wifi.ActiveModeManager
    public void dump(FileDescriptor fd, PrintWriter pw, String[] args) {
        pw.println("--Dump of ClientModeManager--");
        pw.println("current StateMachine mode: " + getCurrentStateName());
        pw.println("mClientInterfaceName: " + this.mClientInterfaceName);
        pw.println("mIfaceIsUp: " + this.mIfaceIsUp);
    }

    private String getCurrentStateName() {
        IState currentState = this.mStateMachine.getCurrentState();
        if (currentState != null) {
            return currentState.getName();
        }
        return "StateMachine not active";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateWifiState(int newState, int currentState) {
        if (!this.mExpectedStop) {
            this.mListener.onStateChanged(newState);
        } else {
            Log.d(TAG, "expected stop, not triggering callbacks: newState = " + newState);
        }
        if (newState == 4 || newState == 1) {
            this.mExpectedStop = true;
        }
        if (newState == 4) {
            return;
        }
        this.mClientModeImpl.setWifiStateForApiCalls(newState);
        Intent intent = new Intent("android.net.wifi.WIFI_STATE_CHANGED");
        intent.addFlags(67108864);
        intent.putExtra("wifi_state", newState);
        intent.putExtra("previous_wifi_state", currentState);
        this.mContext.sendStickyBroadcastAsUser(intent, UserHandle.ALL);
    }

    private class ClientModeStateMachine extends StateMachine {
        public static final int CMD_INTERFACE_DESTROYED = 4;
        public static final int CMD_INTERFACE_DOWN = 5;
        public static final int CMD_INTERFACE_STATUS_CHANGED = 3;
        public static final int CMD_START = 0;
        public static final int CMD_STOP = 1;
        private final State mIdleState;
        private final State mStartedState;
        private final WifiNative.InterfaceCallback mWifiNativeInterfaceCallback;

        ClientModeStateMachine(Looper looper) {
            super(ClientModeManager.TAG, looper);
            this.mIdleState = new IdleState();
            this.mStartedState = new StartedState();
            this.mWifiNativeInterfaceCallback = new WifiNative.InterfaceCallback() { // from class: com.android.server.wifi.ClientModeManager.ClientModeStateMachine.1
                @Override // com.android.server.wifi.WifiNative.InterfaceCallback
                public void onDestroyed(String ifaceName) {
                    if (ClientModeManager.this.mClientInterfaceName != null && ClientModeManager.this.mClientInterfaceName.equals(ifaceName)) {
                        Log.d(ClientModeManager.TAG, "STA iface " + ifaceName + " was destroyed, stopping client mode");
                        ClientModeManager.this.mClientModeImpl.handleIfaceDestroyed();
                        ClientModeStateMachine.this.sendMessage(4);
                    }
                }

                @Override // com.android.server.wifi.WifiNative.InterfaceCallback
                public void onUp(String ifaceName) {
                    if (ClientModeManager.this.mClientInterfaceName != null && ClientModeManager.this.mClientInterfaceName.equals(ifaceName)) {
                        ClientModeStateMachine.this.sendMessage(3, 1);
                    }
                }

                @Override // com.android.server.wifi.WifiNative.InterfaceCallback
                public void onDown(String ifaceName) {
                    if (ClientModeManager.this.mClientInterfaceName != null && ClientModeManager.this.mClientInterfaceName.equals(ifaceName)) {
                        ClientModeStateMachine.this.sendMessage(3, 0);
                    }
                }
            };
            addState(this.mIdleState);
            addState(this.mStartedState);
            setInitialState(this.mIdleState);
            start();
        }

        private class IdleState extends State {
            private IdleState() {
            }

            public void enter() {
                Log.d(ClientModeManager.TAG, "entering IdleState");
                ClientModeManager.this.mClientInterfaceName = null;
                ClientModeManager.this.mIfaceIsUp = false;
            }

            public boolean processMessage(Message message) {
                if (message.what == 0) {
                    ClientModeManager.this.updateWifiState(2, 1);
                    ClientModeManager.this.mClientInterfaceName = ClientModeManager.this.mWifiNative.setupInterfaceForClientInConnectivityMode(ClientModeStateMachine.this.mWifiNativeInterfaceCallback);
                    if (TextUtils.isEmpty(ClientModeManager.this.mClientInterfaceName)) {
                        Log.e(ClientModeManager.TAG, "Failed to create ClientInterface. Sit in Idle");
                        ClientModeManager.this.updateWifiState(4, 2);
                        ClientModeManager.this.updateWifiState(1, 4);
                    } else {
                        ClientModeStateMachine clientModeStateMachine = ClientModeStateMachine.this;
                        clientModeStateMachine.transitionTo(clientModeStateMachine.mStartedState);
                    }
                    return true;
                }
                Log.d(ClientModeManager.TAG, "received an invalid message: " + message);
                return false;
            }
        }

        private class StartedState extends State {
            private StartedState() {
            }

            private void onUpChanged(boolean isUp) {
                if (isUp != ClientModeManager.this.mIfaceIsUp) {
                    ClientModeManager.this.mIfaceIsUp = isUp;
                    if (!isUp) {
                        if (ClientModeManager.this.mClientModeImpl.isConnectedMacRandomizationEnabled()) {
                            return;
                        }
                        Log.d(ClientModeManager.TAG, "interface down!");
                        ClientModeManager.this.mExpectedStop = true;
                        ClientModeManager.this.updateWifiState(4, 3);
                        ClientModeManager.this.mStateMachine.sendMessage(5);
                        return;
                    }
                    Log.d(ClientModeManager.TAG, "Wifi is ready to use for client mode");
                    ClientModeManager.this.mClientModeImpl.setOperationalMode(1, ClientModeManager.this.mClientInterfaceName);
                    ClientModeManager.this.updateWifiState(3, 2);
                }
            }

            public void enter() {
                Log.d(ClientModeManager.TAG, "entering StartedState");
                ClientModeManager.this.mIfaceIsUp = false;
                onUpChanged(ClientModeManager.this.mWifiNative.isInterfaceUp(ClientModeManager.this.mClientInterfaceName));
            }

            public boolean processMessage(Message message) {
                int i = message.what;
                if (i != 0) {
                    if (i != 1) {
                        if (i == 3) {
                            boolean isUp = message.arg1 == 1;
                            onUpChanged(isUp);
                        } else if (i == 4) {
                            Log.d(ClientModeManager.TAG, "interface destroyed - client mode stopping");
                            ClientModeManager.this.updateWifiState(0, 3);
                            ClientModeManager.this.mClientInterfaceName = null;
                            ClientModeStateMachine clientModeStateMachine = ClientModeStateMachine.this;
                            clientModeStateMachine.transitionTo(clientModeStateMachine.mIdleState);
                        } else {
                            if (i != 5) {
                                return false;
                            }
                            Log.e(ClientModeManager.TAG, "Detected an interface down, reporting failure to SelfRecovery");
                            ClientModeManager.this.mClientModeImpl.failureDetected(2);
                            ClientModeManager.this.updateWifiState(0, 4);
                            ClientModeStateMachine clientModeStateMachine2 = ClientModeStateMachine.this;
                            clientModeStateMachine2.transitionTo(clientModeStateMachine2.mIdleState);
                        }
                    } else {
                        Log.d(ClientModeManager.TAG, "CMD_STOP - quitNow");
                        ClientModeManager.this.mStateMachine.quitNow();
                    }
                }
                return true;
            }

            public void exit() {
                ClientModeManager.this.mClientModeImpl.setOperationalMode(4, null);
                if (ClientModeManager.this.mClientInterfaceName != null) {
                    ClientModeManager.this.mWifiNative.teardownInterface(ClientModeManager.this.mClientInterfaceName);
                    ClientModeManager.this.mClientInterfaceName = null;
                    ClientModeManager.this.mIfaceIsUp = false;
                }
                ClientModeManager.this.updateWifiState(1, 0);
                ClientModeManager.this.mStateMachine.quitNow();
            }
        }
    }
}
