package android.net.wifi.aware;

import android.accessibilityservice.c;
import android.content.Context;
import android.net.NetworkSpecifier;
import android.net.wifi.RttManager;
import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.os.RemoteException;
import android.util.Log;
import android.util.SparseArray;
import com.android.internal.annotations.GuardedBy;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.nio.BufferOverflowException;
import java.util.List;
import libcore.util.HexEncoding;

/* JADX INFO: loaded from: classes.dex */
public class WifiAwareManager {
    public static final String ACTION_WIFI_AWARE_STATE_CHANGED = "android.net.wifi.aware.action.WIFI_AWARE_STATE_CHANGED";
    private static final boolean DBG = false;
    private static final String TAG = "WifiAwareManager";
    private static final boolean VDBG = false;
    public static final int WIFI_AWARE_DATA_PATH_ROLE_INITIATOR = 0;
    public static final int WIFI_AWARE_DATA_PATH_ROLE_RESPONDER = 1;
    private final Context mContext;
    private final Object mLock = new Object();

    @GuardedBy("mLock")
    private SparseArray<RttManager.RttListener> mRangingListeners = new SparseArray<>();
    private final IWifiAwareManager mService;

    @Retention(RetentionPolicy.SOURCE)
    public @interface DataPathRole {
    }

    public static class WifiAwareDiscoverySessionCallbackProxy extends IWifiAwareDiscoverySessionCallback.Stub {
        private static final int CALLBACK_MATCH = 4;
        private static final int CALLBACK_MESSAGE_RECEIVED = 7;
        private static final int CALLBACK_MESSAGE_SEND_FAIL = 6;
        private static final int CALLBACK_MESSAGE_SEND_SUCCESS = 5;
        private static final int CALLBACK_SESSION_CONFIG_FAIL = 2;
        private static final int CALLBACK_SESSION_CONFIG_SUCCESS = 1;
        private static final int CALLBACK_SESSION_STARTED = 0;
        private static final int CALLBACK_SESSION_TERMINATED = 3;
        private static final String MESSAGE_BUNDLE_KEY_MESSAGE = "message";
        private static final String MESSAGE_BUNDLE_KEY_MESSAGE2 = "message2";
        private final WeakReference<WifiAwareManager> mAwareManager;
        private final int mClientId;
        private final Handler mHandler;
        private final boolean mIsPublish;
        private final DiscoverySessionCallback mOriginalCallback;
        private DiscoverySession mSession;

        public WifiAwareDiscoverySessionCallbackProxy(WifiAwareManager wifiAwareManager, Looper looper, boolean z2, DiscoverySessionCallback discoverySessionCallback, int i2) {
            this.mAwareManager = new WeakReference<>(wifiAwareManager);
            this.mIsPublish = z2;
            this.mOriginalCallback = discoverySessionCallback;
            this.mClientId = i2;
            this.mHandler = new Handler(looper) { // from class: android.net.wifi.aware.WifiAwareManager.WifiAwareDiscoverySessionCallbackProxy.1
                @Override // android.os.Handler
                public void handleMessage(Message message) {
                    List<byte[]> list;
                    if (WifiAwareDiscoverySessionCallbackProxy.this.mAwareManager.get() == null) {
                        Log.w(WifiAwareManager.TAG, "WifiAwareDiscoverySessionCallbackProxy: handleMessage post GC");
                    }
                    switch (message.what) {
                        case 0:
                            WifiAwareDiscoverySessionCallbackProxy.this.onProxySessionStarted(message.arg1);
                            break;
                        case 1:
                            WifiAwareDiscoverySessionCallbackProxy.this.mOriginalCallback.onSessionConfigUpdated();
                            break;
                        case 2:
                            WifiAwareDiscoverySessionCallbackProxy.this.mOriginalCallback.onSessionConfigFailed();
                            if (WifiAwareDiscoverySessionCallbackProxy.this.mSession == null) {
                                WifiAwareDiscoverySessionCallbackProxy.this.mAwareManager.clear();
                            }
                            break;
                        case 3:
                            WifiAwareDiscoverySessionCallbackProxy.this.onProxySessionTerminated(message.arg1);
                            break;
                        case 4:
                            byte[] byteArray = message.getData().getByteArray(WifiAwareDiscoverySessionCallbackProxy.MESSAGE_BUNDLE_KEY_MESSAGE2);
                            try {
                                list = new TlvBufferUtils.TlvIterable(0, 1, byteArray).toList();
                            } catch (BufferOverflowException e2) {
                                Log.e(WifiAwareManager.TAG, "onServiceDiscovered: invalid match filter byte array '" + new String(HexEncoding.encode(byteArray)) + "' - cannot be parsed: e=" + e2);
                                list = null;
                            }
                            WifiAwareDiscoverySessionCallbackProxy.this.mOriginalCallback.onServiceDiscovered(new PeerHandle(message.arg1), message.getData().getByteArray("message"), list);
                            break;
                        case 5:
                            WifiAwareDiscoverySessionCallbackProxy.this.mOriginalCallback.onMessageSendSucceeded(message.arg1);
                            break;
                        case 6:
                            WifiAwareDiscoverySessionCallbackProxy.this.mOriginalCallback.onMessageSendFailed(message.arg1);
                            break;
                        case 7:
                            WifiAwareDiscoverySessionCallbackProxy.this.mOriginalCallback.onMessageReceived(new PeerHandle(message.arg1), (byte[]) message.obj);
                            break;
                    }
                }
            };
        }

        @Override // android.net.wifi.aware.IWifiAwareDiscoverySessionCallback
        public void onMatch(int i2, byte[] bArr, byte[] bArr2) {
            Bundle bundle = new Bundle();
            bundle.putByteArray("message", bArr);
            bundle.putByteArray(MESSAGE_BUNDLE_KEY_MESSAGE2, bArr2);
            Message messageObtainMessage = this.mHandler.obtainMessage(4);
            messageObtainMessage.arg1 = i2;
            messageObtainMessage.setData(bundle);
            this.mHandler.sendMessage(messageObtainMessage);
        }

        @Override // android.net.wifi.aware.IWifiAwareDiscoverySessionCallback
        public void onMessageReceived(int i2, byte[] bArr) {
            Message messageObtainMessage = this.mHandler.obtainMessage(7);
            messageObtainMessage.arg1 = i2;
            messageObtainMessage.obj = bArr;
            this.mHandler.sendMessage(messageObtainMessage);
        }

        @Override // android.net.wifi.aware.IWifiAwareDiscoverySessionCallback
        public void onMessageSendFail(int i2, int i3) {
            Message messageObtainMessage = this.mHandler.obtainMessage(6);
            messageObtainMessage.arg1 = i2;
            messageObtainMessage.arg2 = i3;
            this.mHandler.sendMessage(messageObtainMessage);
        }

        @Override // android.net.wifi.aware.IWifiAwareDiscoverySessionCallback
        public void onMessageSendSuccess(int i2) {
            Message messageObtainMessage = this.mHandler.obtainMessage(5);
            messageObtainMessage.arg1 = i2;
            this.mHandler.sendMessage(messageObtainMessage);
        }

        public void onProxySessionStarted(int i2) {
            if (this.mSession != null) {
                Log.e(WifiAwareManager.TAG, "onSessionStarted: sessionId=" + i2 + ": session already created!?");
                throw new IllegalStateException(c.e("onSessionStarted: sessionId=", i2, ": session already created!?"));
            }
            WifiAwareManager wifiAwareManager = this.mAwareManager.get();
            if (wifiAwareManager == null) {
                Log.w(WifiAwareManager.TAG, "onProxySessionStarted: mgr GC'd");
                return;
            }
            if (this.mIsPublish) {
                PublishDiscoverySession publishDiscoverySession = new PublishDiscoverySession(wifiAwareManager, this.mClientId, i2);
                this.mSession = publishDiscoverySession;
                this.mOriginalCallback.onPublishStarted(publishDiscoverySession);
            } else {
                SubscribeDiscoverySession subscribeDiscoverySession = new SubscribeDiscoverySession(wifiAwareManager, this.mClientId, i2);
                this.mSession = subscribeDiscoverySession;
                this.mOriginalCallback.onSubscribeStarted(subscribeDiscoverySession);
            }
        }

        public void onProxySessionTerminated(int i2) {
            DiscoverySession discoverySession = this.mSession;
            if (discoverySession != null) {
                discoverySession.setTerminated();
                this.mSession = null;
            } else {
                Log.w(WifiAwareManager.TAG, "Proxy: onSessionTerminated called but mSession is null!?");
            }
            this.mAwareManager.clear();
            this.mOriginalCallback.onSessionTerminated();
        }

        @Override // android.net.wifi.aware.IWifiAwareDiscoverySessionCallback
        public void onSessionConfigFail(int i2) {
            Message messageObtainMessage = this.mHandler.obtainMessage(2);
            messageObtainMessage.arg1 = i2;
            this.mHandler.sendMessage(messageObtainMessage);
        }

        @Override // android.net.wifi.aware.IWifiAwareDiscoverySessionCallback
        public void onSessionConfigSuccess() {
            this.mHandler.sendMessage(this.mHandler.obtainMessage(1));
        }

        @Override // android.net.wifi.aware.IWifiAwareDiscoverySessionCallback
        public void onSessionStarted(int i2) {
            Message messageObtainMessage = this.mHandler.obtainMessage(0);
            messageObtainMessage.arg1 = i2;
            this.mHandler.sendMessage(messageObtainMessage);
        }

        @Override // android.net.wifi.aware.IWifiAwareDiscoverySessionCallback
        public void onSessionTerminated(int i2) {
            Message messageObtainMessage = this.mHandler.obtainMessage(3);
            messageObtainMessage.arg1 = i2;
            this.mHandler.sendMessage(messageObtainMessage);
        }
    }

    public static class WifiAwareEventCallbackProxy extends IWifiAwareEventCallback.Stub {
        private static final int CALLBACK_CONNECT_FAIL = 1;
        private static final int CALLBACK_CONNECT_SUCCESS = 0;
        private static final int CALLBACK_IDENTITY_CHANGED = 2;
        private static final int CALLBACK_RANGING_ABORTED = 5;
        private static final int CALLBACK_RANGING_FAILURE = 4;
        private static final int CALLBACK_RANGING_SUCCESS = 3;
        private final WeakReference<WifiAwareManager> mAwareManager;
        private final Binder mBinder;
        private final Handler mHandler;
        private final Looper mLooper;

        public WifiAwareEventCallbackProxy(WifiAwareManager wifiAwareManager, Looper looper, Binder binder, final AttachCallback attachCallback, final IdentityChangedListener identityChangedListener) {
            this.mAwareManager = new WeakReference<>(wifiAwareManager);
            this.mLooper = looper;
            this.mBinder = binder;
            this.mHandler = new Handler(looper) { // from class: android.net.wifi.aware.WifiAwareManager.WifiAwareEventCallbackProxy.1
                @Override // android.os.Handler
                public void handleMessage(Message message) {
                    WifiAwareManager wifiAwareManager2 = (WifiAwareManager) WifiAwareEventCallbackProxy.this.mAwareManager.get();
                    if (wifiAwareManager2 == null) {
                        Log.w(WifiAwareManager.TAG, "WifiAwareEventCallbackProxy: handleMessage post GC");
                        return;
                    }
                    int i2 = message.what;
                    if (i2 == 0) {
                        attachCallback.onAttached(new WifiAwareSession(wifiAwareManager2, WifiAwareEventCallbackProxy.this.mBinder, message.arg1));
                        return;
                    }
                    if (i2 == 1) {
                        WifiAwareEventCallbackProxy.this.mAwareManager.clear();
                        attachCallback.onAttachFailed();
                        return;
                    }
                    if (i2 == 2) {
                        IdentityChangedListener identityChangedListener2 = identityChangedListener;
                        if (identityChangedListener2 == null) {
                            Log.e(WifiAwareManager.TAG, "CALLBACK_IDENTITY_CHANGED: null listener.");
                            return;
                        } else {
                            identityChangedListener2.onIdentityChanged((byte[]) message.obj);
                            return;
                        }
                    }
                    if (i2 == 3) {
                        RttManager.RttListener andRemoveRangingListener = WifiAwareEventCallbackProxy.this.getAndRemoveRangingListener(message.arg1);
                        if (andRemoveRangingListener != null) {
                            andRemoveRangingListener.onSuccess(((RttManager.ParcelableRttResults) message.obj).mResults);
                            return;
                        }
                        Log.e(WifiAwareManager.TAG, "CALLBACK_RANGING_SUCCESS rangingId=" + message.arg1 + ": no listener registered (anymore)");
                        return;
                    }
                    if (i2 == 4) {
                        RttManager.RttListener andRemoveRangingListener2 = WifiAwareEventCallbackProxy.this.getAndRemoveRangingListener(message.arg1);
                        if (andRemoveRangingListener2 != null) {
                            andRemoveRangingListener2.onFailure(message.arg2, (String) message.obj);
                            return;
                        }
                        Log.e(WifiAwareManager.TAG, "CALLBACK_RANGING_SUCCESS rangingId=" + message.arg1 + ": no listener registered (anymore)");
                        return;
                    }
                    if (i2 != 5) {
                        return;
                    }
                    RttManager.RttListener andRemoveRangingListener3 = WifiAwareEventCallbackProxy.this.getAndRemoveRangingListener(message.arg1);
                    if (andRemoveRangingListener3 != null) {
                        andRemoveRangingListener3.onAborted();
                        return;
                    }
                    Log.e(WifiAwareManager.TAG, "CALLBACK_RANGING_SUCCESS rangingId=" + message.arg1 + ": no listener registered (anymore)");
                }
            };
        }

        public RttManager.RttListener getAndRemoveRangingListener(int i2) {
            RttManager.RttListener rttListener;
            WifiAwareManager wifiAwareManager = this.mAwareManager.get();
            if (wifiAwareManager == null) {
                Log.w(WifiAwareManager.TAG, "getAndRemoveRangingListener: called post GC");
                return null;
            }
            synchronized (wifiAwareManager.mLock) {
                rttListener = (RttManager.RttListener) wifiAwareManager.mRangingListeners.get(i2);
                wifiAwareManager.mRangingListeners.delete(i2);
            }
            return rttListener;
        }

        @Override // android.net.wifi.aware.IWifiAwareEventCallback
        public void onConnectFail(int i2) {
            Message messageObtainMessage = this.mHandler.obtainMessage(1);
            messageObtainMessage.arg1 = i2;
            this.mHandler.sendMessage(messageObtainMessage);
        }

        @Override // android.net.wifi.aware.IWifiAwareEventCallback
        public void onConnectSuccess(int i2) {
            Message messageObtainMessage = this.mHandler.obtainMessage(0);
            messageObtainMessage.arg1 = i2;
            this.mHandler.sendMessage(messageObtainMessage);
        }

        @Override // android.net.wifi.aware.IWifiAwareEventCallback
        public void onIdentityChanged(byte[] bArr) {
            Message messageObtainMessage = this.mHandler.obtainMessage(2);
            messageObtainMessage.obj = bArr;
            this.mHandler.sendMessage(messageObtainMessage);
        }

        @Override // android.net.wifi.aware.IWifiAwareEventCallback
        public void onRangingAborted(int i2) {
            Message messageObtainMessage = this.mHandler.obtainMessage(5);
            messageObtainMessage.arg1 = i2;
            this.mHandler.sendMessage(messageObtainMessage);
        }

        @Override // android.net.wifi.aware.IWifiAwareEventCallback
        public void onRangingFailure(int i2, int i3, String str) {
            Message messageObtainMessage = this.mHandler.obtainMessage(4);
            messageObtainMessage.arg1 = i2;
            messageObtainMessage.arg2 = i3;
            messageObtainMessage.obj = str;
            this.mHandler.sendMessage(messageObtainMessage);
        }

        @Override // android.net.wifi.aware.IWifiAwareEventCallback
        public void onRangingSuccess(int i2, RttManager.ParcelableRttResults parcelableRttResults) {
            Message messageObtainMessage = this.mHandler.obtainMessage(3);
            messageObtainMessage.arg1 = i2;
            messageObtainMessage.obj = parcelableRttResults;
            this.mHandler.sendMessage(messageObtainMessage);
        }
    }

    public WifiAwareManager(Context context, IWifiAwareManager iWifiAwareManager) {
        this.mContext = context;
        this.mService = iWifiAwareManager;
    }

    public void attach(AttachCallback attachCallback, Handler handler) {
        attach(handler, null, attachCallback, null);
    }

    public NetworkSpecifier createNetworkSpecifier(int i2, int i3, int i4, PeerHandle peerHandle, byte[] bArr, String str) {
        if (i3 != 0 && i3 != 1) {
            throw new IllegalArgumentException("createNetworkSpecifier: Invalid 'role' argument when creating a network specifier");
        }
        if (i3 == 0 && peerHandle == null) {
            throw new IllegalArgumentException("createNetworkSpecifier: Invalid peer handle (value of null) - not permitted on INITIATOR");
        }
        return new WifiAwareNetworkSpecifier(peerHandle != null ? 0 : 1, i3, i2, i4, peerHandle != null ? peerHandle.peerId : 0, null, bArr, str, Process.myUid());
    }

    public void disconnect(int i2, Binder binder) {
        try {
            this.mService.disconnect(i2, binder);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public Characteristics getCharacteristics() {
        try {
            return this.mService.getCharacteristics();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean isAvailable() {
        try {
            return this.mService.isUsageEnabled();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void publish(int i2, Looper looper, PublishConfig publishConfig, DiscoverySessionCallback discoverySessionCallback) {
        try {
            this.mService.publish(i2, publishConfig, new WifiAwareDiscoverySessionCallbackProxy(this, looper, true, discoverySessionCallback, i2));
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void sendMessage(int i2, int i3, PeerHandle peerHandle, byte[] bArr, int i4, int i5) {
        if (peerHandle == null) {
            throw new IllegalArgumentException("sendMessage: invalid peerHandle - must be non-null");
        }
        try {
            this.mService.sendMessage(i2, i3, peerHandle.peerId, bArr, i4, i5);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void startRanging(int i2, int i3, RttManager.RttParams[] rttParamsArr, RttManager.RttListener rttListener) {
        try {
            int iStartRanging = this.mService.startRanging(i2, i3, new RttManager.ParcelableRttParams(rttParamsArr));
            synchronized (this.mLock) {
                this.mRangingListeners.put(iStartRanging, rttListener);
            }
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void subscribe(int i2, Looper looper, SubscribeConfig subscribeConfig, DiscoverySessionCallback discoverySessionCallback) {
        try {
            this.mService.subscribe(i2, subscribeConfig, new WifiAwareDiscoverySessionCallbackProxy(this, looper, false, discoverySessionCallback, i2));
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void terminateSession(int i2, int i3) {
        try {
            this.mService.terminateSession(i2, i3);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void updatePublish(int i2, int i3, PublishConfig publishConfig) {
        try {
            this.mService.updatePublish(i2, i3, publishConfig);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void updateSubscribe(int i2, int i3, SubscribeConfig subscribeConfig) {
        try {
            this.mService.updateSubscribe(i2, i3, subscribeConfig);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void attach(AttachCallback attachCallback, IdentityChangedListener identityChangedListener, Handler handler) {
        attach(handler, null, attachCallback, identityChangedListener);
    }

    public void attach(Handler handler, ConfigRequest configRequest, AttachCallback attachCallback, IdentityChangedListener identityChangedListener) {
        synchronized (this.mLock) {
            Looper mainLooper = handler == null ? Looper.getMainLooper() : handler.getLooper();
            try {
                Binder binder = new Binder();
                this.mService.connect(binder, this.mContext.getOpPackageName(), new WifiAwareEventCallbackProxy(this, mainLooper, binder, attachCallback, identityChangedListener), configRequest, identityChangedListener != null);
            } catch (RemoteException e2) {
                throw e2.rethrowFromSystemServer();
            }
        }
    }

    public NetworkSpecifier createNetworkSpecifier(int i2, int i3, byte[] bArr, byte[] bArr2, String str) {
        if (i3 != 0 && i3 != 1) {
            throw new IllegalArgumentException("createNetworkSpecifier: Invalid 'role' argument when creating a network specifier");
        }
        if (i3 == 0 && bArr == null) {
            throw new IllegalArgumentException("createNetworkSpecifier: Invalid peer MAC address - null not permitted on INITIATOR");
        }
        if (bArr != null && bArr.length != 6) {
            throw new IllegalArgumentException("createNetworkSpecifier: Invalid peer MAC address");
        }
        return new WifiAwareNetworkSpecifier(bArr == null ? 3 : 2, i3, i2, 0, 0, bArr, bArr2, str, Process.myUid());
    }
}
