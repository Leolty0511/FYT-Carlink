package android.net.wifi;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import android.os.Parcelable;
import android.os.UserHandle;
import android.util.Log;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import u.l;
import u.m;

/* JADX INFO: loaded from: classes.dex */
class SupplicantStateTracker extends m {
    private static final boolean DBG = false;
    private static final int MAX_RETRIES_ON_ASSOCIATION_REJECT = 16;
    private static final int MAX_RETRIES_ON_AUTHENTICATION_FAILURE = 2;
    private static final String TAG = "SupplicantStateTracker";
    private int mAssociationRejectCount;
    private boolean mAuthFailureInSupplicantBroadcast;
    private int mAuthenticationFailuresCount;
    private l mCompletedState;
    private Context mContext;
    private l mDefaultState;
    private l mDisconnectState;
    private l mDormantState;
    private l mHandshakeState;
    private l mInactiveState;
    private boolean mNetworksDisabledDuringConnect;
    private l mScanState;
    private l mUninitializedState;
    private WifiConfigStore mWifiConfigStore;
    private WifiStateMachine mWifiStateMachine;

    /* JADX INFO: renamed from: android.net.wifi.SupplicantStateTracker$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$android$net$wifi$SupplicantState;

        static {
            int[] iArr = new int[SupplicantState.values().length];
            $SwitchMap$android$net$wifi$SupplicantState = iArr;
            try {
                iArr[SupplicantState.DISCONNECTED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$android$net$wifi$SupplicantState[SupplicantState.INTERFACE_DISABLED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$android$net$wifi$SupplicantState[SupplicantState.SCANNING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$android$net$wifi$SupplicantState[SupplicantState.AUTHENTICATING.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$android$net$wifi$SupplicantState[SupplicantState.ASSOCIATING.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$android$net$wifi$SupplicantState[SupplicantState.ASSOCIATED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$android$net$wifi$SupplicantState[SupplicantState.FOUR_WAY_HANDSHAKE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$android$net$wifi$SupplicantState[SupplicantState.GROUP_HANDSHAKE.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$android$net$wifi$SupplicantState[SupplicantState.COMPLETED.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$android$net$wifi$SupplicantState[SupplicantState.DORMANT.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$android$net$wifi$SupplicantState[SupplicantState.INACTIVE.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$android$net$wifi$SupplicantState[SupplicantState.UNINITIALIZED.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$android$net$wifi$SupplicantState[SupplicantState.INVALID.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
        }
    }

    public class CompletedState extends l {
        public CompletedState() {
        }

        @Override // u.l
        public void enter() {
            SupplicantStateTracker.this.mAuthenticationFailuresCount = 0;
            SupplicantStateTracker.this.mAssociationRejectCount = 0;
            if (SupplicantStateTracker.this.mNetworksDisabledDuringConnect) {
                SupplicantStateTracker.this.mWifiConfigStore.enableAllNetworks();
                SupplicantStateTracker.this.mNetworksDisabledDuringConnect = false;
            }
        }

        @Override // u.l
        public boolean processMessage(Message message) {
            int i2 = message.what;
            if (i2 == 131183) {
                SupplicantStateTracker.this.sendSupplicantStateChangedBroadcast(SupplicantState.DISCONNECTED, false);
                SupplicantStateTracker supplicantStateTracker = SupplicantStateTracker.this;
                supplicantStateTracker.transitionTo(supplicantStateTracker.mUninitializedState);
                return true;
            }
            if (i2 != 147462) {
                return false;
            }
            StateChangeResult stateChangeResult = (StateChangeResult) message.obj;
            SupplicantState supplicantState = stateChangeResult.state;
            SupplicantStateTracker supplicantStateTracker2 = SupplicantStateTracker.this;
            supplicantStateTracker2.sendSupplicantStateChangedBroadcast(supplicantState, supplicantStateTracker2.mAuthFailureInSupplicantBroadcast);
            if (SupplicantState.isConnecting(supplicantState)) {
                return true;
            }
            SupplicantStateTracker.this.transitionOnSupplicantStateChange(stateChangeResult);
            return true;
        }
    }

    public class DefaultState extends l {
        public DefaultState() {
        }

        @Override // u.l
        public void enter() {
        }

        @Override // u.l
        public boolean processMessage(Message message) {
            switch (message.what) {
                case WifiStateMachine.CMD_RESET_SUPPLICANT_STATE /* 131183 */:
                    SupplicantStateTracker supplicantStateTracker = SupplicantStateTracker.this;
                    supplicantStateTracker.transitionTo(supplicantStateTracker.mUninitializedState);
                    return true;
                case WifiMonitor.SUPPLICANT_STATE_CHANGE_EVENT /* 147462 */:
                    StateChangeResult stateChangeResult = (StateChangeResult) message.obj;
                    SupplicantState supplicantState = stateChangeResult.state;
                    SupplicantStateTracker supplicantStateTracker2 = SupplicantStateTracker.this;
                    supplicantStateTracker2.sendSupplicantStateChangedBroadcast(supplicantState, supplicantStateTracker2.mAuthFailureInSupplicantBroadcast);
                    SupplicantStateTracker.this.mAuthFailureInSupplicantBroadcast = false;
                    SupplicantStateTracker.this.transitionOnSupplicantStateChange(stateChangeResult);
                    return true;
                case WifiMonitor.AUTHENTICATION_FAILURE_EVENT /* 147463 */:
                    SupplicantStateTracker.access$008(SupplicantStateTracker.this);
                    SupplicantStateTracker.this.mAuthFailureInSupplicantBroadcast = true;
                    return true;
                case WifiMonitor.ASSOCIATION_REJECTION_EVENT /* 147499 */:
                    SupplicantStateTracker.access$708(SupplicantStateTracker.this);
                    return true;
                case WifiManager.CONNECT_NETWORK /* 151553 */:
                    SupplicantStateTracker.this.mNetworksDisabledDuringConnect = true;
                    SupplicantStateTracker.this.mAssociationRejectCount = 0;
                    return true;
                default:
                    Log.e(SupplicantStateTracker.TAG, "Ignoring " + message);
                    return true;
            }
        }
    }

    public class DisconnectedState extends l {
        public DisconnectedState() {
        }

        @Override // u.l
        public void enter() {
            StateChangeResult stateChangeResult = (StateChangeResult) SupplicantStateTracker.this.getCurrentMessage().obj;
            if (SupplicantStateTracker.this.mAuthenticationFailuresCount >= 2) {
                Log.d(SupplicantStateTracker.TAG, "Failed to authenticate, disabling network " + stateChangeResult.networkId);
                SupplicantStateTracker.this.handleNetworkConnectionFailure(stateChangeResult.networkId, 3);
                SupplicantStateTracker.this.mAuthenticationFailuresCount = 0;
                return;
            }
            if (SupplicantStateTracker.this.mAssociationRejectCount >= 16) {
                Log.d(SupplicantStateTracker.TAG, "Association getting rejected, disabling network " + stateChangeResult.networkId);
                SupplicantStateTracker.this.handleNetworkConnectionFailure(stateChangeResult.networkId, 4);
                SupplicantStateTracker.this.mAssociationRejectCount = 0;
            }
        }
    }

    public class DormantState extends l {
        public DormantState() {
        }

        @Override // u.l
        public void enter() {
        }
    }

    public class HandshakeState extends l {
        private static final int MAX_SUPPLICANT_LOOP_ITERATIONS = 4;
        private int mLoopDetectCount;
        private int mLoopDetectIndex;

        public HandshakeState() {
        }

        @Override // u.l
        public void enter() {
            this.mLoopDetectIndex = 0;
            this.mLoopDetectCount = 0;
        }

        @Override // u.l
        public boolean processMessage(Message message) {
            if (message.what != 147462) {
                return false;
            }
            StateChangeResult stateChangeResult = (StateChangeResult) message.obj;
            SupplicantState supplicantState = stateChangeResult.state;
            if (!SupplicantState.isHandshakeState(supplicantState)) {
                return false;
            }
            if (this.mLoopDetectIndex > supplicantState.ordinal()) {
                this.mLoopDetectCount++;
            }
            if (this.mLoopDetectCount > 4) {
                Log.d(SupplicantStateTracker.TAG, "Supplicant loop detected, disabling network " + stateChangeResult.networkId);
                SupplicantStateTracker.this.handleNetworkConnectionFailure(stateChangeResult.networkId, 3);
            }
            this.mLoopDetectIndex = supplicantState.ordinal();
            SupplicantStateTracker supplicantStateTracker = SupplicantStateTracker.this;
            supplicantStateTracker.sendSupplicantStateChangedBroadcast(supplicantState, supplicantStateTracker.mAuthFailureInSupplicantBroadcast);
            return true;
        }
    }

    public class InactiveState extends l {
        public InactiveState() {
        }

        @Override // u.l
        public void enter() {
        }
    }

    public class ScanState extends l {
        public ScanState() {
        }

        @Override // u.l
        public void enter() {
        }
    }

    public class UninitializedState extends l {
        public UninitializedState() {
        }

        @Override // u.l
        public void enter() {
        }
    }

    public SupplicantStateTracker(Context context, WifiStateMachine wifiStateMachine, WifiConfigStore wifiConfigStore, Handler handler) {
        super(TAG, handler.getLooper());
        this.mAuthenticationFailuresCount = 0;
        this.mAssociationRejectCount = 0;
        this.mAuthFailureInSupplicantBroadcast = false;
        this.mNetworksDisabledDuringConnect = false;
        this.mUninitializedState = new UninitializedState();
        this.mDefaultState = new DefaultState();
        this.mInactiveState = new InactiveState();
        this.mDisconnectState = new DisconnectedState();
        this.mScanState = new ScanState();
        this.mHandshakeState = new HandshakeState();
        this.mCompletedState = new CompletedState();
        this.mDormantState = new DormantState();
        this.mContext = context;
        this.mWifiStateMachine = wifiStateMachine;
        this.mWifiConfigStore = wifiConfigStore;
        addState(this.mDefaultState);
        addState(this.mUninitializedState, this.mDefaultState);
        addState(this.mInactiveState, this.mDefaultState);
        addState(this.mDisconnectState, this.mDefaultState);
        addState(this.mScanState, this.mDefaultState);
        addState(this.mHandshakeState, this.mDefaultState);
        addState(this.mCompletedState, this.mDefaultState);
        addState(this.mDormantState, this.mDefaultState);
        setInitialState(this.mUninitializedState);
        setLogRecSize(50);
        setLogOnlyTransitions(true);
        start();
    }

    public static /* synthetic */ int access$008(SupplicantStateTracker supplicantStateTracker) {
        int i2 = supplicantStateTracker.mAuthenticationFailuresCount;
        supplicantStateTracker.mAuthenticationFailuresCount = i2 + 1;
        return i2;
    }

    public static /* synthetic */ int access$708(SupplicantStateTracker supplicantStateTracker) {
        int i2 = supplicantStateTracker.mAssociationRejectCount;
        supplicantStateTracker.mAssociationRejectCount = i2 + 1;
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleNetworkConnectionFailure(int i2, int i3) {
        if (this.mNetworksDisabledDuringConnect) {
            this.mWifiConfigStore.enableAllNetworks();
            this.mNetworksDisabledDuringConnect = false;
        }
        this.mWifiConfigStore.disableNetwork(i2, i3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendSupplicantStateChangedBroadcast(SupplicantState supplicantState, boolean z2) {
        Intent intent = new Intent(WifiManager.SUPPLICANT_STATE_CHANGED_ACTION);
        intent.addFlags(603979776);
        intent.putExtra(WifiManager.EXTRA_NEW_STATE, (Parcelable) supplicantState);
        if (z2) {
            intent.putExtra(WifiManager.EXTRA_SUPPLICANT_ERROR, 1);
        }
        this.mContext.sendStickyBroadcastAsUser(intent, UserHandle.ALL);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void transitionOnSupplicantStateChange(StateChangeResult stateChangeResult) {
        SupplicantState supplicantState = stateChangeResult.state;
        switch (AnonymousClass1.$SwitchMap$android$net$wifi$SupplicantState[supplicantState.ordinal()]) {
            case 1:
                transitionTo(this.mDisconnectState);
                break;
            case 2:
                break;
            case 3:
                transitionTo(this.mScanState);
                break;
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
                transitionTo(this.mHandshakeState);
                break;
            case 9:
                transitionTo(this.mCompletedState);
                break;
            case 10:
                transitionTo(this.mDormantState);
                break;
            case 11:
                transitionTo(this.mInactiveState);
                break;
            case 12:
            case 13:
                transitionTo(this.mUninitializedState);
                break;
            default:
                Log.e(TAG, "Unknown supplicant state " + supplicantState);
                break;
        }
    }

    @Override // u.m
    public void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(fileDescriptor, printWriter, strArr);
        printWriter.println("mAuthenticationFailuresCount " + this.mAuthenticationFailuresCount);
        printWriter.println("mAuthFailureInSupplicantBroadcast " + this.mAuthFailureInSupplicantBroadcast);
        printWriter.println("mNetworksDisabledDuringConnect " + this.mNetworksDisabledDuringConnect);
        printWriter.println();
    }
}
