package com.android.server.wifi.hotspot2;

import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Icon;
import android.net.Network;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiManager;
import android.net.wifi.WifiSsid;
import android.net.wifi.hotspot2.IProvisioningCallback;
import android.net.wifi.hotspot2.OsuProvider;
import android.net.wifi.hotspot2.PasspointConfiguration;
import android.net.wifi.hotspot2.omadm.PpsMoParser;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.RemoteException;
import android.os.UserHandle;
import android.util.Log;
import com.android.internal.annotations.VisibleForTesting;
import com.android.server.wifi.WifiMetrics;
import com.android.server.wifi.WifiNative;
import com.android.server.wifi.hotspot2.anqp.ANQPElement;
import com.android.server.wifi.hotspot2.anqp.Constants;
import com.android.server.wifi.hotspot2.anqp.HSOsuProvidersElement;
import com.android.server.wifi.hotspot2.anqp.OsuProviderInfo;
import com.android.server.wifi.hotspot2.soap.ExchangeCompleteMessage;
import com.android.server.wifi.hotspot2.soap.PostDevDataMessage;
import com.android.server.wifi.hotspot2.soap.PostDevDataResponse;
import com.android.server.wifi.hotspot2.soap.RedirectListener;
import com.android.server.wifi.hotspot2.soap.SppConstants;
import com.android.server.wifi.hotspot2.soap.SppResponseMessage;
import com.android.server.wifi.hotspot2.soap.UpdateResponseMessage;
import com.android.server.wifi.hotspot2.soap.command.BrowserUri;
import com.android.server.wifi.hotspot2.soap.command.PpsMoData;
import java.net.MalformedURLException;
import java.net.URL;
import java.security.cert.X509Certificate;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.function.Predicate;
import java.util.stream.Collectors;

/* JADX INFO: loaded from: classes.dex */
public class PasspointProvisioner {
    private static final String OSU_APP_PACKAGE = "com.android.hotspot2";
    private static final int PROVISIONING_FAILURE = 1;
    private static final int PROVISIONING_STATUS = 0;
    private static final String TAG = "PasspointProvisioner";
    private static final String TLS_VERSION = "TLSv1";
    private int mCallingUid;
    private final Context mContext;
    private Looper mLooper;
    private final PasspointObjectFactory mObjectFactory;
    private final OsuNetworkConnection mOsuNetworkConnection;
    private final OsuServerConnection mOsuServerConnection;
    private PasspointManager mPasspointManager;
    private final SystemInfo mSystemInfo;
    private final WfaKeyStore mWfaKeyStore;
    private WifiManager mWifiManager;
    private final WifiMetrics mWifiMetrics;
    private int mCurrentSessionId = 0;
    private boolean mVerboseLoggingEnabled = false;
    private final ProvisioningStateMachine mProvisioningStateMachine = new ProvisioningStateMachine();
    private final OsuNetworkCallbacks mOsuNetworkCallbacks = new OsuNetworkCallbacks();

    static /* synthetic */ int access$604(PasspointProvisioner x0) {
        int i = x0.mCurrentSessionId + 1;
        x0.mCurrentSessionId = i;
        return i;
    }

    @VisibleForTesting(visibility = VisibleForTesting.Visibility.PACKAGE)
    public PasspointProvisioner(Context context, WifiNative wifiNative, PasspointObjectFactory objectFactory, PasspointManager passpointManager, WifiMetrics wifiMetrics) {
        this.mContext = context;
        this.mOsuNetworkConnection = objectFactory.makeOsuNetworkConnection(context);
        this.mOsuServerConnection = objectFactory.makeOsuServerConnection();
        this.mWfaKeyStore = objectFactory.makeWfaKeyStore();
        this.mSystemInfo = objectFactory.getSystemInfo(context, wifiNative);
        this.mObjectFactory = objectFactory;
        this.mPasspointManager = passpointManager;
        this.mWifiMetrics = wifiMetrics;
    }

    public void init(Looper looper) {
        this.mLooper = looper;
        this.mWifiManager = (WifiManager) this.mContext.getSystemService("wifi");
        this.mProvisioningStateMachine.start(new Handler(this.mLooper));
        this.mOsuNetworkConnection.init(this.mProvisioningStateMachine.getHandler());
        this.mProvisioningStateMachine.getHandler().post(new Runnable() { // from class: com.android.server.wifi.hotspot2.-$$Lambda$PasspointProvisioner$D6b75X8GL55-AmCExPWESj54yLE
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$init$0$PasspointProvisioner();
            }
        });
    }

    public /* synthetic */ void lambda$init$0$PasspointProvisioner() {
        this.mWfaKeyStore.load();
        this.mOsuServerConnection.init(this.mObjectFactory.getSSLContext(TLS_VERSION), this.mObjectFactory.getTrustManagerImpl(this.mWfaKeyStore.get()));
    }

    public void enableVerboseLogging(int level) {
        this.mVerboseLoggingEnabled = level > 0;
        this.mOsuNetworkConnection.enableVerboseLogging(level);
        this.mOsuServerConnection.enableVerboseLogging(level);
    }

    public boolean startSubscriptionProvisioning(int callingUid, final OsuProvider provider, final IProvisioningCallback callback) {
        this.mCallingUid = callingUid;
        Log.v(TAG, "Provisioning started with " + provider.toString());
        this.mProvisioningStateMachine.getHandler().post(new Runnable() { // from class: com.android.server.wifi.hotspot2.-$$Lambda$PasspointProvisioner$GTqDpkw3tIstQq22m_peruc6pA4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$startSubscriptionProvisioning$1$PasspointProvisioner(provider, callback);
            }
        });
        return true;
    }

    public /* synthetic */ void lambda$startSubscriptionProvisioning$1$PasspointProvisioner(OsuProvider provider, IProvisioningCallback callback) {
        this.mProvisioningStateMachine.startProvisioning(provider, callback);
    }

    class ProvisioningStateMachine {
        static final int STATE_AP_CONNECTING = 2;
        static final int STATE_INIT = 1;
        static final int STATE_OSU_SERVER_CONNECTING = 3;
        static final int STATE_WAITING_FOR_FIRST_SOAP_RESPONSE = 4;
        static final int STATE_WAITING_FOR_REDIRECT_RESPONSE = 5;
        static final int STATE_WAITING_FOR_SECOND_SOAP_RESPONSE = 6;
        static final int STATE_WAITING_FOR_THIRD_SOAP_RESPONSE = 7;
        static final int STATE_WAITING_FOR_TRUST_ROOT_CERTS = 8;
        private static final String TAG = "PasspointProvisioningStateMachine";
        private Handler mHandler;
        private Network mNetwork;
        private OsuProvider mOsuProvider;
        private PasspointConfiguration mPasspointConfiguration;
        private IProvisioningCallback mProvisioningCallback;
        private HandlerThread mRedirectHandlerThread;
        private RedirectListener mRedirectListener;
        private Handler mRedirectStartStopHandler;
        private URL mServerUrl;
        private String mSessionId;
        private int mState = 1;
        private String mWebUrl;

        ProvisioningStateMachine() {
        }

        public void start(Handler handler) {
            this.mHandler = handler;
            if (this.mRedirectHandlerThread == null) {
                this.mRedirectHandlerThread = new HandlerThread("RedirectListenerHandler");
                this.mRedirectHandlerThread.start();
                this.mRedirectStartStopHandler = new Handler(this.mRedirectHandlerThread.getLooper());
            }
        }

        public Handler getHandler() {
            return this.mHandler;
        }

        public void startProvisioning(OsuProvider provider, IProvisioningCallback callback) {
            if (PasspointProvisioner.this.mVerboseLoggingEnabled) {
                Log.v(TAG, "startProvisioning received in state=" + this.mState);
            }
            if (this.mState != 1) {
                if (PasspointProvisioner.this.mVerboseLoggingEnabled) {
                    Log.v(TAG, "State Machine needs to be reset before starting provisioning");
                }
                resetStateMachineForFailure(6);
            }
            this.mProvisioningCallback = callback;
            this.mRedirectListener = RedirectListener.createInstance(PasspointProvisioner.this.mLooper);
            if (this.mRedirectListener != null) {
                if (!PasspointProvisioner.this.mOsuServerConnection.canValidateServer()) {
                    Log.w(TAG, "Provisioning is not possible");
                    resetStateMachineForFailure(7);
                    return;
                }
                try {
                    URL serverUrl = new URL(provider.getServerUri().toString());
                    this.mServerUrl = serverUrl;
                    this.mOsuProvider = provider;
                    if (this.mOsuProvider.getOsuSsid() == null) {
                        List<ScanResult> scanResults = PasspointProvisioner.this.mWifiManager.getScanResults();
                        this.mOsuProvider = getBestMatchingOsuProvider(scanResults, this.mOsuProvider);
                        if (this.mOsuProvider == null) {
                            resetStateMachineForFailure(23);
                            return;
                        }
                    }
                    PasspointProvisioner.this.mOsuNetworkConnection.setEventCallback(PasspointProvisioner.this.mOsuNetworkCallbacks);
                    OsuServerConnection osuServerConnection = PasspointProvisioner.this.mOsuServerConnection;
                    PasspointProvisioner passpointProvisioner = PasspointProvisioner.this;
                    osuServerConnection.setEventCallback(passpointProvisioner.new OsuServerCallbacks(PasspointProvisioner.access$604(passpointProvisioner)));
                    if (!PasspointProvisioner.this.mOsuNetworkConnection.connect(this.mOsuProvider.getOsuSsid(), this.mOsuProvider.getNetworkAccessIdentifier(), this.mOsuProvider.getFriendlyName())) {
                        resetStateMachineForFailure(1);
                        return;
                    } else {
                        invokeProvisioningCallback(0, 1);
                        changeState(2);
                        return;
                    }
                } catch (MalformedURLException e) {
                    Log.e(TAG, "Invalid Server URL");
                    resetStateMachineForFailure(2);
                    return;
                }
            }
            resetStateMachineForFailure(12);
        }

        public void handleWifiDisabled() {
            if (PasspointProvisioner.this.mVerboseLoggingEnabled) {
                Log.v(TAG, "Wifi Disabled in state=" + this.mState);
            }
            if (this.mState == 1) {
                Log.w(TAG, "Wifi Disable unhandled in state=" + this.mState);
                return;
            }
            resetStateMachineForFailure(1);
        }

        public void handleServerConnectionStatus(int sessionId, boolean succeeded) {
            if (PasspointProvisioner.this.mVerboseLoggingEnabled) {
                Log.v(TAG, "Server Connection status received in " + this.mState);
            }
            if (sessionId != PasspointProvisioner.this.mCurrentSessionId) {
                Log.w(TAG, "Expected server connection failure callback for currentSessionId=" + PasspointProvisioner.this.mCurrentSessionId);
                return;
            }
            if (this.mState != 3) {
                Log.wtf(TAG, "Server Validation Failure unhandled in mState=" + this.mState);
                return;
            }
            if (!succeeded) {
                resetStateMachineForFailure(3);
            } else {
                invokeProvisioningCallback(0, 5);
                PasspointProvisioner.this.mProvisioningStateMachine.getHandler().post(new Runnable() { // from class: com.android.server.wifi.hotspot2.-$$Lambda$PasspointProvisioner$ProvisioningStateMachine$xAY302PZwVnnv4ZeHx9X7d_PTwU
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$handleServerConnectionStatus$0$PasspointProvisioner$ProvisioningStateMachine();
                    }
                });
            }
        }

        public void handleServerValidationFailure(int sessionId) {
            if (PasspointProvisioner.this.mVerboseLoggingEnabled) {
                Log.v(TAG, "Server Validation failure received in " + this.mState);
            }
            if (sessionId != PasspointProvisioner.this.mCurrentSessionId) {
                Log.w(TAG, "Expected server validation callback for currentSessionId=" + PasspointProvisioner.this.mCurrentSessionId);
                return;
            }
            if (this.mState != 3) {
                Log.wtf(TAG, "Server Validation Failure unhandled in mState=" + this.mState);
                return;
            }
            resetStateMachineForFailure(4);
        }

        public void handleServerValidationSuccess(int sessionId) {
            if (PasspointProvisioner.this.mVerboseLoggingEnabled) {
                Log.v(TAG, "Server Validation Success received in " + this.mState);
            }
            if (sessionId != PasspointProvisioner.this.mCurrentSessionId) {
                Log.w(TAG, "Expected server validation callback for currentSessionId=" + PasspointProvisioner.this.mCurrentSessionId);
                return;
            }
            if (this.mState != 3) {
                Log.wtf(TAG, "Server validation success event unhandled in state=" + this.mState);
                return;
            }
            if (!PasspointProvisioner.this.mOsuServerConnection.validateProvider(Locale.getDefault(), this.mOsuProvider.getFriendlyName())) {
                Log.e(TAG, "OSU Server certificate does not have the one matched with the selected Service Name: " + this.mOsuProvider.getFriendlyName());
                resetStateMachineForFailure(5);
                return;
            }
            invokeProvisioningCallback(0, 4);
        }

        public void handleRedirectResponse() {
            if (this.mState != 5) {
                Log.e(TAG, "Received redirect request in wrong state=" + this.mState);
                resetStateMachineForFailure(6);
                return;
            }
            invokeProvisioningCallback(0, 8);
            this.mRedirectListener.stopServer(this.mRedirectStartStopHandler);
            secondSoapExchange();
        }

        public void handleTimeOutForRedirectResponse() {
            Log.e(TAG, "Timed out for HTTP redirect response");
            if (this.mState != 5) {
                Log.e(TAG, "Received timeout error for HTTP redirect response  in wrong state=" + this.mState);
                resetStateMachineForFailure(6);
                return;
            }
            this.mRedirectListener.stopServer(this.mRedirectStartStopHandler);
            resetStateMachineForFailure(13);
        }

        public void handleConnectedEvent(Network network) {
            if (PasspointProvisioner.this.mVerboseLoggingEnabled) {
                Log.v(TAG, "Connected event received in state=" + this.mState);
            }
            if (this.mState != 2) {
                Log.wtf(TAG, "Connection event unhandled in state=" + this.mState);
                return;
            }
            invokeProvisioningCallback(0, 2);
            initiateServerConnection(network);
        }

        public void handleSoapMessageResponse(int sessionId, SppResponseMessage responseMessage) {
            if (sessionId != PasspointProvisioner.this.mCurrentSessionId) {
                Log.w(TAG, "Expected soapMessageResponse callback for currentSessionId=" + PasspointProvisioner.this.mCurrentSessionId);
                return;
            }
            if (responseMessage == null) {
                Log.e(TAG, "failed to send the sppPostDevData message");
                resetStateMachineForFailure(11);
                return;
            }
            int i = this.mState;
            if (i == 4) {
                if (responseMessage.getMessageType() != 0) {
                    Log.e(TAG, "Expected a PostDevDataResponse, but got " + responseMessage.getMessageType());
                    resetStateMachineForFailure(10);
                    return;
                }
                PostDevDataResponse devDataResponse = (PostDevDataResponse) responseMessage;
                this.mSessionId = devDataResponse.getSessionID();
                if (devDataResponse.getSppCommand().getExecCommandId() != 0) {
                    Log.e(TAG, "Expected a launchBrowser command, but got " + devDataResponse.getSppCommand().getExecCommandId());
                    resetStateMachineForFailure(9);
                    return;
                }
                Log.d(TAG, "Exec: " + devDataResponse.getSppCommand().getExecCommandId() + ", for '" + devDataResponse.getSppCommand().getCommandData() + "'");
                this.mWebUrl = ((BrowserUri) devDataResponse.getSppCommand().getCommandData()).getUri();
                String str = this.mWebUrl;
                if (str == null) {
                    Log.e(TAG, "No Web-Url");
                    resetStateMachineForFailure(8);
                    return;
                } else if (!str.toLowerCase(Locale.US).contains(this.mSessionId.toLowerCase(Locale.US))) {
                    Log.e(TAG, "Bad or Missing session ID in webUrl");
                    resetStateMachineForFailure(8);
                    return;
                } else {
                    launchOsuWebView();
                    return;
                }
            }
            if (i == 6) {
                if (responseMessage.getMessageType() != 0) {
                    Log.e(TAG, "Expected a PostDevDataResponse, but got " + responseMessage.getMessageType());
                    resetStateMachineForFailure(10);
                    return;
                }
                PostDevDataResponse devDataResponse2 = (PostDevDataResponse) responseMessage;
                if (devDataResponse2.getSppCommand() == null || devDataResponse2.getSppCommand().getSppCommandId() != 1) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("Expected a ADD_MO command, but got ");
                    sb.append(devDataResponse2.getSppCommand() == null ? "null" : Integer.valueOf(devDataResponse2.getSppCommand().getSppCommandId()));
                    Log.e(TAG, sb.toString());
                    resetStateMachineForFailure(9);
                    return;
                }
                this.mPasspointConfiguration = buildPasspointConfiguration((PpsMoData) devDataResponse2.getSppCommand().getCommandData());
                thirdSoapExchange(this.mPasspointConfiguration == null);
                return;
            }
            if (i != 7) {
                if (PasspointProvisioner.this.mVerboseLoggingEnabled) {
                    Log.v(TAG, "Received an unexpected SOAP message in state=" + this.mState);
                    return;
                }
                return;
            }
            if (responseMessage.getMessageType() != 1) {
                Log.e(TAG, "Expected a ExchangeCompleteMessage, but got " + responseMessage.getMessageType());
                resetStateMachineForFailure(10);
                return;
            }
            ExchangeCompleteMessage exchangeCompleteMessage = (ExchangeCompleteMessage) responseMessage;
            if (exchangeCompleteMessage.getStatus() != 4) {
                Log.e(TAG, "Expected a ExchangeCompleteMessage Status, but got " + exchangeCompleteMessage.getStatus());
                resetStateMachineForFailure(15);
                return;
            }
            if (exchangeCompleteMessage.getError() != -1) {
                Log.e(TAG, "In the SppExchangeComplete, got error " + exchangeCompleteMessage.getError());
                resetStateMachineForFailure(6);
                return;
            }
            PasspointConfiguration passpointConfiguration = this.mPasspointConfiguration;
            if (passpointConfiguration == null) {
                Log.e(TAG, "No PPS MO to use for retrieving TrustCerts");
                resetStateMachineForFailure(16);
            } else {
                retrieveTrustRootCerts(passpointConfiguration);
            }
        }

        public void installTrustRootCertificates(int sessionId, Map<Integer, List<X509Certificate>> trustRootCertificates) {
            if (sessionId != PasspointProvisioner.this.mCurrentSessionId) {
                Log.w(TAG, "Expected TrustRootCertificates callback for currentSessionId=" + PasspointProvisioner.this.mCurrentSessionId);
                return;
            }
            if (this.mState != 8) {
                if (PasspointProvisioner.this.mVerboseLoggingEnabled) {
                    Log.v(TAG, "Received an unexpected TrustRootCertificates in state=" + this.mState);
                    return;
                }
                return;
            }
            if (trustRootCertificates.isEmpty()) {
                Log.e(TAG, "fails to retrieve trust root certificates");
                resetStateMachineForFailure(20);
                return;
            }
            List<X509Certificate> certificates = trustRootCertificates.get(1);
            if (certificates == null || certificates.isEmpty()) {
                Log.e(TAG, "fails to retrieve trust root certificate for AAA server");
                resetStateMachineForFailure(21);
                return;
            }
            this.mPasspointConfiguration.setServiceFriendlyNames(this.mOsuProvider.getFriendlyNameList());
            this.mPasspointConfiguration.getCredential().setCaCertificates((X509Certificate[]) certificates.toArray(new X509Certificate[0]));
            List<X509Certificate> certificates2 = trustRootCertificates.get(2);
            if (certificates2 == null || certificates2.isEmpty()) {
                Log.e(TAG, "fails to retrieve trust root certificate for Remediation");
                resetStateMachineForFailure(20);
                return;
            }
            if (this.mPasspointConfiguration.getSubscriptionUpdate() != null) {
                this.mPasspointConfiguration.getSubscriptionUpdate().setCaCertificate(certificates2.get(0));
            }
            try {
                PasspointProvisioner.this.mWifiManager.addOrUpdatePasspointConfiguration(this.mPasspointConfiguration);
                invokeProvisioningCompleteCallback();
                if (PasspointProvisioner.this.mVerboseLoggingEnabled) {
                    Log.i(TAG, "Provisioning is complete for " + this.mPasspointConfiguration.getHomeSp().getFqdn());
                }
                resetStateMachine();
            } catch (IllegalArgumentException e) {
                Log.e(TAG, "fails to add a new PasspointConfiguration: " + e);
                resetStateMachineForFailure(22);
            }
        }

        public void handleDisconnect() {
            if (PasspointProvisioner.this.mVerboseLoggingEnabled) {
                Log.v(TAG, "Connection failed in state=" + this.mState);
            }
            if (this.mState == 1) {
                Log.w(TAG, "Disconnect event unhandled in state=" + this.mState);
                return;
            }
            this.mNetwork = null;
            resetStateMachineForFailure(1);
        }

        private void initiateServerConnection(Network network) {
            if (PasspointProvisioner.this.mVerboseLoggingEnabled) {
                Log.v(TAG, "Initiating server connection in state=" + this.mState);
            }
            if (!PasspointProvisioner.this.mOsuServerConnection.connect(this.mServerUrl, network)) {
                resetStateMachineForFailure(3);
                return;
            }
            this.mNetwork = network;
            changeState(3);
            invokeProvisioningCallback(0, 3);
        }

        private void invokeProvisioningCallback(int callbackType, int status) {
            IProvisioningCallback iProvisioningCallback = this.mProvisioningCallback;
            if (iProvisioningCallback == null) {
                Log.e(TAG, "Provisioning callback " + callbackType + " with status " + status + " not invoked");
                return;
            }
            try {
                if (callbackType == 0) {
                    iProvisioningCallback.onProvisioningStatus(status);
                } else {
                    iProvisioningCallback.onProvisioningFailure(status);
                }
            } catch (RemoteException e) {
                Log.e(TAG, "Remote Exception while posting callback type=" + callbackType + " status=" + status);
            }
        }

        private void invokeProvisioningCompleteCallback() {
            PasspointProvisioner.this.mWifiMetrics.incrementPasspointProvisionSuccess();
            IProvisioningCallback iProvisioningCallback = this.mProvisioningCallback;
            if (iProvisioningCallback == null) {
                Log.e(TAG, "No provisioning complete callback registered");
                return;
            }
            try {
                iProvisioningCallback.onProvisioningComplete();
            } catch (RemoteException e) {
                Log.e(TAG, "Remote Exception while posting provisioning complete");
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: initSoapExchange, reason: merged with bridge method [inline-methods] */
        public void lambda$handleServerConnectionStatus$0$PasspointProvisioner$ProvisioningStateMachine() {
            if (PasspointProvisioner.this.mVerboseLoggingEnabled) {
                Log.v(TAG, "Initiates soap message exchange in state =" + this.mState);
            }
            if (this.mState != 3) {
                Log.e(TAG, "Initiates soap message exchange in wrong state=" + this.mState);
                resetStateMachineForFailure(6);
                return;
            }
            URL redirectUri = this.mRedirectListener.getServerUrl();
            if (PasspointProvisioner.this.mOsuServerConnection.exchangeSoapMessage(PostDevDataMessage.serializeToSoapEnvelope(PasspointProvisioner.this.mContext, PasspointProvisioner.this.mSystemInfo, redirectUri.toString(), SppConstants.SppReason.SUBSCRIPTION_REGISTRATION, null))) {
                invokeProvisioningCallback(0, 6);
                changeState(4);
            } else {
                Log.e(TAG, "HttpsConnection is not established for soap message exchange");
                resetStateMachineForFailure(11);
            }
        }

        private void launchOsuWebView() {
            if (PasspointProvisioner.this.mVerboseLoggingEnabled) {
                Log.v(TAG, "launch Osu webview in state =" + this.mState);
            }
            if (this.mState != 4) {
                Log.e(TAG, "launch Osu webview in wrong state =" + this.mState);
                resetStateMachineForFailure(6);
                return;
            }
            if (!this.mRedirectListener.startServer(new AnonymousClass1(), this.mRedirectStartStopHandler)) {
                Log.e(TAG, "fails to start redirect listener");
                resetStateMachineForFailure(12);
                return;
            }
            Intent intent = new Intent("android.net.wifi.action.PASSPOINT_LAUNCH_OSU_VIEW");
            intent.setPackage(PasspointProvisioner.OSU_APP_PACKAGE);
            intent.putExtra("android.net.wifi.extra.OSU_NETWORK", this.mNetwork);
            intent.putExtra("android.net.wifi.extra.URL", this.mWebUrl);
            intent.setFlags(272629760);
            if (intent.resolveActivity(PasspointProvisioner.this.mContext.getPackageManager()) != null) {
                PasspointProvisioner.this.mContext.startActivityAsUser(intent, UserHandle.CURRENT);
                invokeProvisioningCallback(0, 7);
                changeState(5);
            } else {
                Log.e(TAG, "can't resolve the activity for the intent");
                resetStateMachineForFailure(14);
            }
        }

        /* JADX INFO: renamed from: com.android.server.wifi.hotspot2.PasspointProvisioner$ProvisioningStateMachine$1, reason: invalid class name */
        class AnonymousClass1 implements RedirectListener.RedirectCallback {
            AnonymousClass1() {
            }

            @Override // com.android.server.wifi.hotspot2.soap.RedirectListener.RedirectCallback
            public void onRedirectReceived() {
                if (PasspointProvisioner.this.mVerboseLoggingEnabled) {
                    Log.v(ProvisioningStateMachine.TAG, "Received HTTP redirect response");
                }
                PasspointProvisioner.this.mProvisioningStateMachine.getHandler().post(new Runnable() { // from class: com.android.server.wifi.hotspot2.-$$Lambda$PasspointProvisioner$ProvisioningStateMachine$1$o3qqk9hpz_XLQyAbOwbxgeGEcoM
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onRedirectReceived$0$PasspointProvisioner$ProvisioningStateMachine$1();
                    }
                });
            }

            public /* synthetic */ void lambda$onRedirectReceived$0$PasspointProvisioner$ProvisioningStateMachine$1() {
                ProvisioningStateMachine.this.handleRedirectResponse();
            }

            @Override // com.android.server.wifi.hotspot2.soap.RedirectListener.RedirectCallback
            public void onRedirectTimedOut() {
                if (PasspointProvisioner.this.mVerboseLoggingEnabled) {
                    Log.v(ProvisioningStateMachine.TAG, "Timed out to receive a HTTP redirect response");
                }
                PasspointProvisioner.this.mProvisioningStateMachine.handleTimeOutForRedirectResponse();
            }
        }

        private void secondSoapExchange() {
            if (PasspointProvisioner.this.mVerboseLoggingEnabled) {
                Log.v(TAG, "Initiates the second soap message exchange in state =" + this.mState);
            }
            if (this.mState != 5) {
                Log.e(TAG, "Initiates the second soap message exchange in wrong state=" + this.mState);
                resetStateMachineForFailure(6);
                return;
            }
            if (PasspointProvisioner.this.mOsuServerConnection.exchangeSoapMessage(PostDevDataMessage.serializeToSoapEnvelope(PasspointProvisioner.this.mContext, PasspointProvisioner.this.mSystemInfo, this.mRedirectListener.getServerUrl().toString(), SppConstants.SppReason.USER_INPUT_COMPLETED, this.mSessionId))) {
                invokeProvisioningCallback(0, 9);
                changeState(6);
            } else {
                Log.e(TAG, "HttpsConnection is not established for soap message exchange");
                resetStateMachineForFailure(11);
            }
        }

        private void thirdSoapExchange(boolean isError) {
            if (PasspointProvisioner.this.mVerboseLoggingEnabled) {
                Log.v(TAG, "Initiates the third soap message exchange in state =" + this.mState);
            }
            if (this.mState != 6) {
                Log.e(TAG, "Initiates the third soap message exchange in wrong state=" + this.mState);
                resetStateMachineForFailure(6);
                return;
            }
            if (PasspointProvisioner.this.mOsuServerConnection.exchangeSoapMessage(UpdateResponseMessage.serializeToSoapEnvelope(this.mSessionId, isError))) {
                invokeProvisioningCallback(0, 10);
                changeState(7);
            } else {
                Log.e(TAG, "HttpsConnection is not established for soap message exchange");
                resetStateMachineForFailure(11);
            }
        }

        private PasspointConfiguration buildPasspointConfiguration(PpsMoData moData) {
            String moTree = moData.getPpsMoTree();
            PasspointConfiguration passpointConfiguration = PpsMoParser.parseMoText(moTree);
            if (passpointConfiguration == null) {
                Log.e(TAG, "fails to parse the MoTree");
                return null;
            }
            if (passpointConfiguration.validateForR2()) {
                if (PasspointProvisioner.this.mVerboseLoggingEnabled) {
                    Log.d(TAG, "The parsed PasspointConfiguration: " + passpointConfiguration);
                }
                return passpointConfiguration;
            }
            Log.e(TAG, "PPS MO received is invalid: " + passpointConfiguration);
            return null;
        }

        private void retrieveTrustRootCerts(PasspointConfiguration passpointConfig) {
            if (PasspointProvisioner.this.mVerboseLoggingEnabled) {
                Log.v(TAG, "Initiates retrieving trust root certs in state =" + this.mState);
            }
            Map<String, byte[]> trustCertInfo = passpointConfig.getTrustRootCertList();
            if (trustCertInfo == null || trustCertInfo.isEmpty()) {
                Log.e(TAG, "no AAATrustRoot Node found");
                resetStateMachineForFailure(17);
                return;
            }
            Map<Integer, Map<String, byte[]>> allTrustCerts = new HashMap<>();
            allTrustCerts.put(1, trustCertInfo);
            if (passpointConfig.getSubscriptionUpdate() != null && passpointConfig.getSubscriptionUpdate().getTrustRootCertUrl() != null) {
                Map<String, byte[]> trustCertInfo2 = new HashMap<>();
                trustCertInfo2.put(passpointConfig.getSubscriptionUpdate().getTrustRootCertUrl(), passpointConfig.getSubscriptionUpdate().getTrustRootCertSha256Fingerprint());
                allTrustCerts.put(2, trustCertInfo2);
                if (passpointConfig.getPolicy() != null) {
                    if (passpointConfig.getPolicy().getPolicyUpdate() != null && passpointConfig.getPolicy().getPolicyUpdate().getTrustRootCertUrl() != null) {
                        Map<String, byte[]> trustCertInfo3 = new HashMap<>();
                        trustCertInfo3.put(passpointConfig.getPolicy().getPolicyUpdate().getTrustRootCertUrl(), passpointConfig.getPolicy().getPolicyUpdate().getTrustRootCertSha256Fingerprint());
                        allTrustCerts.put(3, trustCertInfo3);
                    } else {
                        Log.e(TAG, "no TrustRoot Node for policy server found");
                        resetStateMachineForFailure(19);
                        return;
                    }
                }
                if (PasspointProvisioner.this.mOsuServerConnection.retrieveTrustRootCerts(allTrustCerts)) {
                    invokeProvisioningCallback(0, 11);
                    changeState(8);
                    return;
                } else {
                    Log.e(TAG, "HttpsConnection is not established for retrieving trust root certs");
                    resetStateMachineForFailure(3);
                    return;
                }
            }
            Log.e(TAG, "no TrustRoot Node for remediation server found");
            resetStateMachineForFailure(18);
        }

        private void changeState(int nextState) {
            if (nextState != this.mState) {
                if (PasspointProvisioner.this.mVerboseLoggingEnabled) {
                    Log.v(TAG, "Changing state from " + this.mState + " -> " + nextState);
                }
                this.mState = nextState;
            }
        }

        private void resetStateMachineForFailure(int failureCode) {
            PasspointProvisioner.this.mWifiMetrics.incrementPasspointProvisionFailure(failureCode);
            invokeProvisioningCallback(1, failureCode);
            resetStateMachine();
        }

        private void resetStateMachine() {
            RedirectListener redirectListener = this.mRedirectListener;
            if (redirectListener != null) {
                redirectListener.stopServer(this.mRedirectStartStopHandler);
            }
            PasspointProvisioner.this.mOsuNetworkConnection.setEventCallback(null);
            PasspointProvisioner.this.mOsuNetworkConnection.disconnectIfNeeded();
            PasspointProvisioner.this.mOsuServerConnection.setEventCallback(null);
            PasspointProvisioner.this.mOsuServerConnection.cleanup();
            this.mPasspointConfiguration = null;
            this.mProvisioningCallback = null;
            changeState(1);
        }

        private OsuProvider getBestMatchingOsuProvider(List<ScanResult> scanResults, OsuProvider osuProvider) {
            if (scanResults == null) {
                Log.e(TAG, "Attempt to retrieve OSU providers for a null ScanResult");
                return null;
            }
            if (osuProvider == null) {
                Log.e(TAG, "Attempt to retrieve best OSU provider for a null osuProvider");
                return null;
            }
            osuProvider.setOsuSsid((WifiSsid) null);
            for (ScanResult scanResult : (List) scanResults.stream().filter(new Predicate() { // from class: com.android.server.wifi.hotspot2.-$$Lambda$PasspointProvisioner$ProvisioningStateMachine$BJK4Yjr06CQ7LkDBjJfiArECw5Y
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return ((ScanResult) obj).isPasspointNetwork();
                }
            }).sorted(new Comparator() { // from class: com.android.server.wifi.hotspot2.-$$Lambda$PasspointProvisioner$ProvisioningStateMachine$eoIJocMS8FJInAr7jQAC0mYUXi0
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return PasspointProvisioner.ProvisioningStateMachine.lambda$getBestMatchingOsuProvider$2((ScanResult) obj, (ScanResult) obj2);
                }
            }).collect(Collectors.toList())) {
                Map<Constants.ANQPElementType, ANQPElement> anqpElements = PasspointProvisioner.this.mPasspointManager.getANQPElements(scanResult);
                HSOsuProvidersElement element = (HSOsuProvidersElement) anqpElements.get(Constants.ANQPElementType.HSOSUProviders);
                if (element != null) {
                    for (OsuProviderInfo info : element.getProviders()) {
                        OsuProvider candidate = new OsuProvider((WifiSsid) null, info.getFriendlyNames(), info.getServiceDescription(), info.getServerUri(), info.getNetworkAccessIdentifier(), info.getMethodList(), (Icon) null);
                        if (candidate.equals(osuProvider)) {
                            candidate.setOsuSsid(element.getOsuSsid());
                            return candidate;
                        }
                    }
                }
            }
            return null;
        }

        static /* synthetic */ int lambda$getBestMatchingOsuProvider$2(ScanResult sr1, ScanResult sr2) {
            return sr2.level - sr1.level;
        }
    }

    class OsuNetworkCallbacks implements OsuNetworkConnection.Callbacks {
        OsuNetworkCallbacks() {
        }

        @Override // com.android.server.wifi.hotspot2.OsuNetworkConnection.Callbacks
        public void onConnected(Network network) {
            if (PasspointProvisioner.this.mVerboseLoggingEnabled) {
                Log.v(PasspointProvisioner.TAG, "onConnected to " + network);
            }
            if (network == null) {
                PasspointProvisioner.this.mProvisioningStateMachine.handleDisconnect();
            } else {
                PasspointProvisioner.this.mProvisioningStateMachine.handleConnectedEvent(network);
            }
        }

        @Override // com.android.server.wifi.hotspot2.OsuNetworkConnection.Callbacks
        public void onDisconnected() {
            if (PasspointProvisioner.this.mVerboseLoggingEnabled) {
                Log.v(PasspointProvisioner.TAG, "onDisconnected");
            }
            PasspointProvisioner.this.mProvisioningStateMachine.handleDisconnect();
        }

        @Override // com.android.server.wifi.hotspot2.OsuNetworkConnection.Callbacks
        public void onTimeOut() {
            if (PasspointProvisioner.this.mVerboseLoggingEnabled) {
                Log.v(PasspointProvisioner.TAG, "Timed out waiting for connection to OSU AP");
            }
            PasspointProvisioner.this.mProvisioningStateMachine.handleDisconnect();
        }

        @Override // com.android.server.wifi.hotspot2.OsuNetworkConnection.Callbacks
        public void onWifiEnabled() {
            if (PasspointProvisioner.this.mVerboseLoggingEnabled) {
                Log.v(PasspointProvisioner.TAG, "onWifiEnabled");
            }
        }

        @Override // com.android.server.wifi.hotspot2.OsuNetworkConnection.Callbacks
        public void onWifiDisabled() {
            if (PasspointProvisioner.this.mVerboseLoggingEnabled) {
                Log.v(PasspointProvisioner.TAG, "onWifiDisabled");
            }
            PasspointProvisioner.this.mProvisioningStateMachine.handleWifiDisabled();
        }
    }

    public class OsuServerCallbacks {
        private final int mSessionId;

        OsuServerCallbacks(int sessionId) {
            this.mSessionId = sessionId;
        }

        public int getSessionId() {
            return this.mSessionId;
        }

        public void onServerConnectionStatus(final int sessionId, final boolean succeeded) {
            if (PasspointProvisioner.this.mVerboseLoggingEnabled) {
                Log.v(PasspointProvisioner.TAG, "OSU Server connection status=" + succeeded + " sessionId=" + sessionId);
            }
            PasspointProvisioner.this.mProvisioningStateMachine.getHandler().post(new Runnable() { // from class: com.android.server.wifi.hotspot2.-$$Lambda$PasspointProvisioner$OsuServerCallbacks$Mw2GWXV274SRFRCV_3UYP2ZvNVA
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onServerConnectionStatus$0$PasspointProvisioner$OsuServerCallbacks(sessionId, succeeded);
                }
            });
        }

        public /* synthetic */ void lambda$onServerConnectionStatus$0$PasspointProvisioner$OsuServerCallbacks(int sessionId, boolean succeeded) {
            PasspointProvisioner.this.mProvisioningStateMachine.handleServerConnectionStatus(sessionId, succeeded);
        }

        public void onServerValidationStatus(final int sessionId, boolean succeeded) {
            if (PasspointProvisioner.this.mVerboseLoggingEnabled) {
                Log.v(PasspointProvisioner.TAG, "OSU Server Validation status=" + succeeded + " sessionId=" + sessionId);
            }
            if (succeeded) {
                PasspointProvisioner.this.mProvisioningStateMachine.getHandler().post(new Runnable() { // from class: com.android.server.wifi.hotspot2.-$$Lambda$PasspointProvisioner$OsuServerCallbacks$cVFwoTSKLIu6K3tbngy62AfqCUA
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onServerValidationStatus$1$PasspointProvisioner$OsuServerCallbacks(sessionId);
                    }
                });
            } else {
                PasspointProvisioner.this.mProvisioningStateMachine.getHandler().post(new Runnable() { // from class: com.android.server.wifi.hotspot2.-$$Lambda$PasspointProvisioner$OsuServerCallbacks$faQeDrcXJjsEPV2eVBzQits-EuY
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onServerValidationStatus$2$PasspointProvisioner$OsuServerCallbacks(sessionId);
                    }
                });
            }
        }

        public /* synthetic */ void lambda$onServerValidationStatus$1$PasspointProvisioner$OsuServerCallbacks(int sessionId) {
            PasspointProvisioner.this.mProvisioningStateMachine.handleServerValidationSuccess(sessionId);
        }

        public /* synthetic */ void lambda$onServerValidationStatus$2$PasspointProvisioner$OsuServerCallbacks(int sessionId) {
            PasspointProvisioner.this.mProvisioningStateMachine.handleServerValidationFailure(sessionId);
        }

        public void onReceivedSoapMessage(final int sessionId, final SppResponseMessage responseMessage) {
            if (PasspointProvisioner.this.mVerboseLoggingEnabled) {
                Log.v(PasspointProvisioner.TAG, "onReceivedSoapMessage with sessionId=" + sessionId);
            }
            PasspointProvisioner.this.mProvisioningStateMachine.getHandler().post(new Runnable() { // from class: com.android.server.wifi.hotspot2.-$$Lambda$PasspointProvisioner$OsuServerCallbacks$agZ76-4GgY0_PBJDIflqF5dwYEE
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onReceivedSoapMessage$3$PasspointProvisioner$OsuServerCallbacks(sessionId, responseMessage);
                }
            });
        }

        public /* synthetic */ void lambda$onReceivedSoapMessage$3$PasspointProvisioner$OsuServerCallbacks(int sessionId, SppResponseMessage responseMessage) {
            PasspointProvisioner.this.mProvisioningStateMachine.handleSoapMessageResponse(sessionId, responseMessage);
        }

        public void onReceivedTrustRootCertificates(final int sessionId, final Map<Integer, List<X509Certificate>> trustRootCertificates) {
            if (PasspointProvisioner.this.mVerboseLoggingEnabled) {
                Log.v(PasspointProvisioner.TAG, "onReceivedTrustRootCertificates with sessionId=" + sessionId);
            }
            PasspointProvisioner.this.mProvisioningStateMachine.getHandler().post(new Runnable() { // from class: com.android.server.wifi.hotspot2.-$$Lambda$PasspointProvisioner$OsuServerCallbacks$QXXUgAlbJt21bNLdipMpW54GKxg
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onReceivedTrustRootCertificates$4$PasspointProvisioner$OsuServerCallbacks(sessionId, trustRootCertificates);
                }
            });
        }

        public /* synthetic */ void lambda$onReceivedTrustRootCertificates$4$PasspointProvisioner$OsuServerCallbacks(int sessionId, Map trustRootCertificates) {
            PasspointProvisioner.this.mProvisioningStateMachine.installTrustRootCertificates(sessionId, trustRootCertificates);
        }
    }
}
