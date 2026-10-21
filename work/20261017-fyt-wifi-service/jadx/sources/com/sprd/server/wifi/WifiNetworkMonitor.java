package com.sprd.server.wifi;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.LinkProperties;
import android.net.Network;
import android.net.NetworkInfo;
import android.net.ProxyInfo;
import android.net.Uri;
import android.net.wifi.IWifiNetworkEventObserver;
import android.net.wifi.WifiInfo;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import com.android.internal.util.StateMachine;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.InetAddress;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.net.UnknownHostException;

/* JADX INFO: loaded from: classes.dex */
public class WifiNetworkMonitor {
    private static final String DEFAULT_SERVER = "connectivitycheck.gstatic.com";
    private static final int EVENT_WIFI_NETWORK_CONNECTED = 0;
    private static final int EVENT_WIFI_NETWORK_CONNECTING = 1;
    private static final int EVENT_WIFI_NETWORK_DISCONNECTED = 2;
    private static final int EVENT_WIFI_NETWORK_LINKPROPERTY_CHANGED = 3;
    private static final int EVENT_WIFI_NETWORK_REEVALUATE = 5;
    private static final int EVENT_WIFI_NETWORK_VALIDATION = 7;
    private static final int EVENT_WIFI_PRE_CLOSE = 6;
    private static final int EVENT_WIFI_RSSI_CHANGED = 4;
    private static final int INITIAL_REEVALUATE_DELAY_MS = 1000;
    private static final int MAX_REEVALUATE_DELAY_MS = 600000;
    private static final int SOCKET_TIMEOUT_MS = 2000;
    private static String TAG = "WifiNetworkMonitor";
    private ConnectivityManager mCm;
    private final Context mContext;
    private final InternalHandler mHandler;
    private LinkProperties mLinkProperties;
    private int mReevaluateDelayMs;
    private final StateMachine mStateMachine;
    private WifiInfo mWifiInfo;
    private boolean DBG = true;
    private final RemoteCallbackList<IWifiNetworkEventObserver> mObservers = new RemoteCallbackList<>();
    private int mReevaluateToken = 0;
    private boolean mConnectedNotified = false;
    private boolean mHasInternetAccess = false;
    private boolean mNeedCheckInternetAccess = true;
    private InternalNetworkState mInternalNetworkState = InternalNetworkState.DISCONNECTED;
    private NetworkInfo.DetailedState mCurrentNetworkState = NetworkInfo.DetailedState.DISCONNECTED;
    private final HandlerThread mHandlerThread = new HandlerThread("WifiNetworkMonitor");

    private enum InternalNetworkState {
        DISCONNECTED,
        CONNECTING,
        CONNECTED
    }

    static /* synthetic */ int access$1528(WifiNetworkMonitor x0, int x1) {
        int i = x0.mReevaluateDelayMs * x1;
        x0.mReevaluateDelayMs = i;
        return i;
    }

    static /* synthetic */ int access$804(WifiNetworkMonitor x0) {
        int i = x0.mReevaluateToken + 1;
        x0.mReevaluateToken = i;
        return i;
    }

    public WifiNetworkMonitor(Context context, StateMachine stateMachine) {
        this.mContext = context;
        this.mStateMachine = stateMachine;
        this.mHandlerThread.start();
        this.mHandler = new InternalHandler(this.mHandlerThread.getLooper());
    }

    public void updateNetworkState(WifiInfo wifiInfo, NetworkInfo.DetailedState state, int wifiState) {
        if (this.mHandler == null || this.mCurrentNetworkState == state) {
            return;
        }
        this.mCurrentNetworkState = state;
        if (NetworkInfo.DetailedState.DISCONNECTED == state) {
            InternalHandler internalHandler = this.mHandler;
            internalHandler.sendMessage(internalHandler.obtainMessage(2, wifiState, 0, new WifiInfo(wifiInfo)));
        } else if (NetworkInfo.DetailedState.CONNECTED == state) {
            InternalHandler internalHandler2 = this.mHandler;
            internalHandler2.sendMessage(internalHandler2.obtainMessage(0, new WifiInfo(wifiInfo)));
        } else if (NetworkInfo.DetailedState.CONNECTING == state) {
            InternalHandler internalHandler3 = this.mHandler;
            internalHandler3.sendMessage(internalHandler3.obtainMessage(1, new WifiInfo(wifiInfo)));
        }
    }

    public void updateNetworkStatus(WifiInfo wifiInfo, int status) {
        InternalHandler internalHandler = this.mHandler;
        if (internalHandler == null) {
            return;
        }
        internalHandler.sendMessage(internalHandler.obtainMessage(7, new WifiInfo(wifiInfo)));
    }

    public void updateRssi(int rssi) {
        InternalHandler internalHandler = this.mHandler;
        internalHandler.sendMessage(internalHandler.obtainMessage(4, rssi, 0));
    }

    public void updateLinkProperties(LinkProperties lp) {
        this.mLinkProperties = new LinkProperties(lp);
    }

    public void notifyWifiStateChange(boolean enable) {
        if (!enable) {
            this.mHandler.sendEmptyMessage(6);
        }
    }

    public boolean registerObserver(IWifiNetworkEventObserver observer) {
        Log.d(TAG, "Register Obervers!!!");
        this.mObservers.register(observer);
        return true;
    }

    public boolean unregisterObserver(IWifiNetworkEventObserver observer) {
        this.mObservers.unregister(observer);
        return true;
    }

    public boolean isNetworkValidForVoWifi() {
        if (this.mNeedCheckInternetAccess) {
            return this.mHasInternetAccess;
        }
        return NetworkInfo.DetailedState.CONNECTED == this.mCurrentNetworkState;
    }

    public boolean setCheckingInternetForVoWifi(boolean enabled) {
        Log.d(TAG, "setCheckingInternetForVoWifi: " + enabled);
        this.mNeedCheckInternetAccess = enabled;
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyWifiPreClose() {
        int length = this.mObservers.beginBroadcast();
        if (length == 0) {
            Log.e(TAG, "Not any Obervers!!!");
        }
        for (int i = 0; i < length; i++) {
            try {
                this.mObservers.getBroadcastItem(i).onWifiPreClose();
            } catch (RemoteException e) {
            } catch (RuntimeException e2) {
            } catch (Throwable th) {
                this.mObservers.finishBroadcast();
                throw th;
            }
        }
        this.mObservers.finishBroadcast();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyWifiNetworkConnected(WifiInfo wifiInfo, boolean trustNetwork) {
        int length = this.mObservers.beginBroadcast();
        if (length == 0) {
            Log.e(TAG, "Not any Obervers!!!");
        }
        for (int i = 0; i < length; i++) {
            try {
                this.mObservers.getBroadcastItem(i).onWifiNetworkConnected(wifiInfo, trustNetwork);
            } catch (RemoteException e) {
            } catch (RuntimeException e2) {
            } catch (Throwable th) {
                this.mObservers.finishBroadcast();
                throw th;
            }
        }
        this.mObservers.finishBroadcast();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyWifiNetworkDisconnected(WifiInfo wifiInfo, boolean trustNetwork, boolean disable) {
        int length = this.mObservers.beginBroadcast();
        Log.e(TAG, "notifyWifiNetworkDisconnected disable = " + disable);
        if (length == 0) {
            Log.e(TAG, "Not any Obervers!!!");
        }
        for (int i = 0; i < length; i++) {
            try {
                this.mObservers.getBroadcastItem(i).onWifiNetworkDisconnected(wifiInfo, trustNetwork, disable);
            } catch (RemoteException e) {
            } catch (RuntimeException e2) {
            } catch (Throwable th) {
                this.mObservers.finishBroadcast();
                throw th;
            }
        }
        this.mObservers.finishBroadcast();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyWifiNetworkConnecting(WifiInfo wifiInfo, boolean trustNetwork) {
        int length = this.mObservers.beginBroadcast();
        if (length == 0) {
            Log.e(TAG, "Not any Obervers!!!");
        }
        for (int i = 0; i < length; i++) {
            try {
                this.mObservers.getBroadcastItem(i).onWifiNetworkConnecting(wifiInfo, trustNetwork);
            } catch (RemoteException e) {
            } catch (RuntimeException e2) {
            } catch (Throwable th) {
                this.mObservers.finishBroadcast();
                throw th;
            }
        }
        this.mObservers.finishBroadcast();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyRssiChanged(int rssi) {
        int length = this.mObservers.beginBroadcast();
        if (length == 0) {
            Log.e(TAG, "Not any Obervers!!!");
        }
        for (int i = 0; i < length; i++) {
            try {
                this.mObservers.getBroadcastItem(i).onRssiChanged(rssi);
            } catch (RemoteException e) {
            } catch (RuntimeException e2) {
            } catch (Throwable th) {
                this.mObservers.finishBroadcast();
                throw th;
            }
        }
        this.mObservers.finishBroadcast();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyLinkPropertiesChanged(LinkProperties linkProperties) {
        int length = this.mObservers.beginBroadcast();
        if (length == 0) {
            Log.e(TAG, "Not any Obervers!!!");
        }
        for (int i = 0; i < length; i++) {
            try {
                this.mObservers.getBroadcastItem(i).notifyLinkPropertiesChanged(linkProperties);
            } catch (RemoteException e) {
            } catch (RuntimeException e2) {
            } catch (Throwable th) {
                this.mObservers.finishBroadcast();
                throw th;
            }
        }
        this.mObservers.finishBroadcast();
    }

    private void checkAndSetConnectivityInstance() {
        if (this.mCm == null) {
            this.mCm = (ConnectivityManager) this.mContext.getSystemService("connectivity");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:69:0x01b4 A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:70:0x01b6  */
    /* JADX WARN: Code duplicated, block: B:72:0x01ba  */
    public boolean isValidated() throws Throwable {
        HttpURLConnection urlConnection = null;
        int httpResponseCode = 204;
        boolean hostNameResolved = false;
        checkAndSetConnectivityInstance();
        int i = 1;
        Network wifNetwork = this.mCm.getNetworkForType(1);
        try {
            if (wifNetwork == null) {
                Log.e(TAG, "null Network for TYPE_WIFI!!!");
                return false;
            }
            try {
                URL url = new URL("http", DEFAULT_SERVER, "/generate_204");
                boolean fetchPac = false;
                ProxyInfo proxyInfo = this.mLinkProperties.getHttpProxy();
                if (proxyInfo != null && !Uri.EMPTY.equals(proxyInfo.getPacFileUrl())) {
                    url = new URL(proxyInfo.getPacFileUrl().toString());
                    fetchPac = true;
                }
                StringBuffer connectInfo = new StringBuffer();
                String hostToResolve = (proxyInfo == null || fetchPac) ? url.getHost() : proxyInfo.getHost();
                if (!TextUtils.isEmpty(hostToResolve)) {
                    connectInfo.append(", " + hostToResolve + "=");
                    InetAddress[] addresses = wifNetwork.getAllByName(hostToResolve);
                    int length = addresses.length;
                    boolean hostNameResolved2 = false;
                    int i2 = 0;
                    while (i2 < length) {
                        try {
                            InetAddress address = addresses[i2];
                            connectInfo.append(address.getHostAddress());
                            if (address != addresses[addresses.length - i]) {
                                connectInfo.append(",");
                            }
                            hostNameResolved2 = true;
                            i2++;
                            i = 1;
                        } catch (SocketTimeoutException e) {
                            e2 = e;
                            hostNameResolved = hostNameResolved2;
                            Log.d(TAG, "Probably not a portal: exception " + e2);
                            if (hostNameResolved) {
                                httpResponseCode = 204;
                            }
                            if (urlConnection != null) {
                                urlConnection.disconnect();
                            }
                            if (httpResponseCode == 204) {
                                return true;
                            }
                            if (httpResponseCode >= 200) {
                            }
                            Log.d(TAG, "Probably has not Internet Connection!!!");
                            return false;
                        } catch (UnknownHostException e2) {
                            e1 = e2;
                            Log.d(TAG, "Probably not a portal: exception " + e1);
                            httpResponseCode = 599;
                            if (urlConnection != null) {
                                urlConnection.disconnect();
                            }
                            if (httpResponseCode == 204) {
                                return true;
                            }
                            if (httpResponseCode >= 200) {
                            }
                            Log.d(TAG, "Probably has not Internet Connection!!!");
                            return false;
                        } catch (IOException e3) {
                            e = e3;
                            hostNameResolved = hostNameResolved2;
                            Log.d(TAG, "Probably not a portal: exception " + e);
                            if (hostNameResolved) {
                                httpResponseCode = 204;
                            }
                            if (urlConnection != null) {
                                urlConnection.disconnect();
                            }
                            if (httpResponseCode == 204) {
                                return true;
                            }
                            if (httpResponseCode >= 200) {
                            }
                            Log.d(TAG, "Probably has not Internet Connection!!!");
                            return false;
                        } catch (Throwable th) {
                            th = th;
                            if (0 != 0) {
                                urlConnection.disconnect();
                            }
                            throw th;
                        }
                    }
                    hostNameResolved = hostNameResolved2;
                }
                Log.d(TAG, "Checking " + url.toString() + " on " + wifNetwork + ((Object) connectInfo));
                urlConnection = (HttpURLConnection) wifNetwork.openConnection(url);
                urlConnection.setInstanceFollowRedirects(fetchPac);
                urlConnection.setConnectTimeout(SOCKET_TIMEOUT_MS);
                urlConnection.setReadTimeout(SOCKET_TIMEOUT_MS);
                urlConnection.setUseCaches(false);
                SystemClock.elapsedRealtime();
                urlConnection.getInputStream();
                SystemClock.elapsedRealtime();
                httpResponseCode = urlConnection.getResponseCode();
                Log.d(TAG, "isValidated: ret=" + httpResponseCode + " headers=" + urlConnection.getHeaderFields());
                if (httpResponseCode == 200 && urlConnection.getContentLength() == 0) {
                    Log.d(TAG, "Empty 200 response interpreted as 204 response.");
                    httpResponseCode = 204;
                }
                if (httpResponseCode == 200 && fetchPac) {
                    Log.d(TAG, "PAC fetch 200 response interpreted as 204 response.");
                    httpResponseCode = 204;
                }
            } catch (SocketTimeoutException e4) {
                e2 = e4;
            } catch (UnknownHostException e5) {
                e1 = e5;
            } catch (IOException e6) {
                e = e6;
            }
            urlConnection.disconnect();
            if (httpResponseCode == 204) {
                return true;
            }
            if (httpResponseCode >= 200 || httpResponseCode > 399) {
                Log.d(TAG, "Probably has not Internet Connection!!!");
                return false;
            }
            Log.d(TAG, "Probably a portal, Need to login");
            return false;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private class InternalHandler extends Handler {
        public InternalHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            switch (msg.what) {
                case 0:
                    if (WifiNetworkMonitor.this.DBG) {
                        Log.d(WifiNetworkMonitor.TAG, "EVENT_WIFI_NETWORK_CONNECTED");
                    }
                    WifiNetworkMonitor.this.mWifiInfo = (WifiInfo) msg.obj;
                    if (!WifiNetworkMonitor.this.mNeedCheckInternetAccess) {
                        if (WifiNetworkMonitor.this.DBG) {
                            Log.d(WifiNetworkMonitor.TAG, "Don't need check Internet access!!!");
                        }
                        if (WifiNetworkMonitor.this.mInternalNetworkState != InternalNetworkState.CONNECTED) {
                            WifiNetworkMonitor wifiNetworkMonitor = WifiNetworkMonitor.this;
                            wifiNetworkMonitor.notifyWifiNetworkConnected(wifiNetworkMonitor.mWifiInfo, false);
                            WifiNetworkMonitor.this.mInternalNetworkState = InternalNetworkState.CONNECTED;
                        }
                    }
                    break;
                case 1:
                    if (WifiNetworkMonitor.this.DBG) {
                        Log.d(WifiNetworkMonitor.TAG, "EVENT_WIFI_NETWORK_CONNECTING");
                    }
                    if (WifiNetworkMonitor.this.mInternalNetworkState != InternalNetworkState.CONNECTING) {
                        WifiNetworkMonitor.this.notifyWifiNetworkConnecting(null, false);
                        WifiNetworkMonitor.this.mInternalNetworkState = InternalNetworkState.CONNECTING;
                    }
                    break;
                case 2:
                    if (WifiNetworkMonitor.this.DBG) {
                        Log.d(WifiNetworkMonitor.TAG, "EVENT_WIFI_NETWORK_DISCONNECTED");
                    }
                    WifiInfo wifiInfo = (WifiInfo) msg.obj;
                    boolean disable = msg.arg1 != 3;
                    if (WifiNetworkMonitor.this.mInternalNetworkState != InternalNetworkState.DISCONNECTED) {
                        WifiNetworkMonitor.this.notifyWifiNetworkDisconnected(wifiInfo, false, disable);
                        WifiNetworkMonitor.this.mInternalNetworkState = InternalNetworkState.DISCONNECTED;
                    }
                    WifiNetworkMonitor.this.mHasInternetAccess = false;
                    WifiNetworkMonitor.this.mReevaluateToken = 0;
                    if (WifiNetworkMonitor.this.mWifiInfo != null) {
                        WifiNetworkMonitor.this.mWifiInfo.reset();
                    }
                    break;
                case 3:
                    if (WifiNetworkMonitor.this.DBG) {
                        Log.d(WifiNetworkMonitor.TAG, "EVENT_WIFI_NETWORK_LINKPROPERTY_CHANGED");
                    }
                    LinkProperties linkProperties = (LinkProperties) msg.obj;
                    if (WifiNetworkMonitor.this.mInternalNetworkState == InternalNetworkState.CONNECTED) {
                        WifiNetworkMonitor.this.notifyLinkPropertiesChanged(linkProperties);
                    }
                    break;
                case 4:
                    if (WifiNetworkMonitor.this.DBG) {
                        Log.d(WifiNetworkMonitor.TAG, "EVENT_WIFI_RSSI_CHANGED");
                    }
                    int rssi = msg.arg1;
                    if (WifiNetworkMonitor.this.mInternalNetworkState == InternalNetworkState.CONNECTED) {
                        WifiNetworkMonitor.this.notifyRssiChanged(rssi);
                    }
                    break;
                case 5:
                    if (WifiNetworkMonitor.this.DBG) {
                        Log.d(WifiNetworkMonitor.TAG, "EVENT_WIFI_NETWORK_REEVALUATE");
                    }
                    if (msg.arg1 != WifiNetworkMonitor.this.mReevaluateToken) {
                        if (WifiNetworkMonitor.this.DBG) {
                            Log.d(WifiNetworkMonitor.TAG, "Stall REEVALUATE CMD, IGNORE!!!");
                        }
                        break;
                    } else if (!WifiNetworkMonitor.this.mNeedCheckInternetAccess) {
                        if (WifiNetworkMonitor.this.DBG) {
                            Log.d(WifiNetworkMonitor.TAG, "Don't need check Internet access!!!");
                        }
                        if (WifiNetworkMonitor.this.mInternalNetworkState != InternalNetworkState.CONNECTED && NetworkInfo.DetailedState.CONNECTED == WifiNetworkMonitor.this.mCurrentNetworkState) {
                            WifiNetworkMonitor wifiNetworkMonitor2 = WifiNetworkMonitor.this;
                            wifiNetworkMonitor2.notifyWifiNetworkConnected(wifiNetworkMonitor2.mWifiInfo, false);
                            WifiNetworkMonitor.this.mInternalNetworkState = InternalNetworkState.CONNECTED;
                            break;
                        }
                    } else {
                        if (WifiNetworkMonitor.this.isValidated()) {
                            if (WifiNetworkMonitor.this.DBG) {
                                Log.d(WifiNetworkMonitor.TAG, "Validated!!!");
                            }
                            WifiNetworkMonitor.this.mHasInternetAccess = true;
                            if (WifiNetworkMonitor.this.mInternalNetworkState != InternalNetworkState.CONNECTED) {
                                WifiNetworkMonitor wifiNetworkMonitor3 = WifiNetworkMonitor.this;
                                wifiNetworkMonitor3.notifyWifiNetworkConnected(wifiNetworkMonitor3.mWifiInfo, false);
                                WifiNetworkMonitor.this.mInternalNetworkState = InternalNetworkState.CONNECTED;
                            }
                        } else {
                            Message newMsg = WifiNetworkMonitor.this.mHandler.obtainMessage(5, WifiNetworkMonitor.access$804(WifiNetworkMonitor.this), 0);
                            sendMessageDelayed(newMsg, WifiNetworkMonitor.this.mReevaluateDelayMs);
                            WifiNetworkMonitor.access$1528(WifiNetworkMonitor.this, 2);
                            if (WifiNetworkMonitor.this.mReevaluateDelayMs > WifiNetworkMonitor.MAX_REEVALUATE_DELAY_MS) {
                                WifiNetworkMonitor.this.mReevaluateDelayMs = WifiNetworkMonitor.MAX_REEVALUATE_DELAY_MS;
                            }
                        }
                        break;
                    }
                    break;
                case 6:
                    if (WifiNetworkMonitor.this.DBG) {
                        Log.d(WifiNetworkMonitor.TAG, "EVENT_WIFI_PRE_CLOSE");
                    }
                    if (WifiNetworkMonitor.this.mInternalNetworkState != InternalNetworkState.DISCONNECTED) {
                        WifiNetworkMonitor.this.notifyWifiPreClose();
                    }
                    break;
                case 7:
                    if (WifiNetworkMonitor.this.DBG) {
                        Log.d(WifiNetworkMonitor.TAG, "EVENT_WIFI_NETWORK_VALIDATION");
                    }
                    WifiNetworkMonitor.this.mWifiInfo = (WifiInfo) msg.obj;
                    WifiNetworkMonitor.this.mHasInternetAccess = true;
                    if (WifiNetworkMonitor.this.mInternalNetworkState != InternalNetworkState.CONNECTED) {
                        WifiNetworkMonitor wifiNetworkMonitor4 = WifiNetworkMonitor.this;
                        wifiNetworkMonitor4.notifyWifiNetworkConnected(wifiNetworkMonitor4.mWifiInfo, false);
                        WifiNetworkMonitor.this.mInternalNetworkState = InternalNetworkState.CONNECTED;
                    }
                    break;
            }
        }
    }
}
