package com.google.android.projection.sink.embedded.transport.net;

import android.accessibilityservice.c;
import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.ResultReceiver;
import android.util.Log;
import com.google.android.projection.sink.embedded.AndroidAutoHeadunitLog;
import com.google.android.projection.sink.settings.Settings;
import com.google.common.util.concurrent.AsyncCallable;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.common.util.concurrent.ListeningScheduledExecutorService;
import com.google.common.util.concurrent.MoreExecutors;
import com.google.common.util.concurrent.SettableFuture;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes3.dex */
@SuppressLint({"PrivateApi"})
public class WiFiAccessPoint {
    private static final String AP_STATE_CHANGED_ACTION = "android.net.wifi.WIFI_AP_STATE_CHANGED";
    private static final long BRING_UP_TIMEOUT_MILLIS = 10000;
    private static final int TETHERING_WIFI = 0;
    ListenableFuture<?> handleAp = null;
    private final ConnectivityManager mConnectivityManager;
    private final Context mContext;
    private ListenableFuture<?> mInitialized;
    private final Settings mSettings;
    private final WifiManager mWifiManager;
    private static final String TAG = AndroidAutoHeadunitLog.getTag("WiFiAccessPoint");
    public static int CHANNEL_5G = 36;
    public static int CHANNEL_2_4G = 1;
    public static String AP_NAME = "CarLinkAP";

    public interface OnStartTetheringCallback {
        void onTetheringFailed(int i2);

        void onTetheringStarted();
    }

    public class ProxyHandler implements InvocationHandler {
        OnStartTetheringCallback callback;

        public ProxyHandler(OnStartTetheringCallback onStartTetheringCallback) {
            this.callback = onStartTetheringCallback;
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) {
            Log.e(WiFiAccessPoint.TAG, " method: " + method.toString() + "  Object[]:" + Arrays.deepToString(objArr));
            method.getName().equals("");
            return null;
        }
    }

    public WiFiAccessPoint(Context context, Settings settings) {
        this.mContext = context;
        this.mSettings = settings;
        this.mWifiManager = (WifiManager) context.getApplicationContext().getSystemService("wifi");
        this.mConnectivityManager = (ConnectivityManager) context.getSystemService(Context.CONNECTIVITY_SERVICE);
    }

    private void check5GhzBandSupported() {
        String str;
        boolean z2 = false;
        try {
            str = (String) this.mWifiManager.getClass().getDeclaredMethod("getCountryCode", new Class[0]).invoke(this.mWifiManager, new Object[0]);
        } catch (Exception e2) {
            e2.printStackTrace();
            str = null;
        }
        boolean zIsDualBandSupported = isDualBandSupported();
        if (!zIsDualBandSupported) {
            zIsDualBandSupported = is5GHzBandSupported();
        }
        if (zIsDualBandSupported && str != null) {
            z2 = true;
        }
        Log.e(TAG, "=============>>> check5GhzBandSupported support5G: " + z2 + "   isDualBandSupported: " + zIsDualBandSupported);
        this.mSettings.writeKeyValue(Settings.WIFI_SUPPORT_DUAL_BAND, Boolean.valueOf(zIsDualBandSupported));
        this.mSettings.writeKeyValue(Settings.WIFI_SUPPORT_BAND_5G, Boolean.valueOf(z2));
    }

    private WifiConfiguration checkWifiApInfo() {
        WifiConfiguration wifiConfiguration;
        Exception e2;
        try {
            wifiConfiguration = (WifiConfiguration) this.mWifiManager.getClass().getDeclaredMethod("getWifiApConfiguration", new Class[0]).invoke(this.mWifiManager, new Object[0]);
            if (wifiConfiguration == null) {
                return null;
            }
            try {
                if (wifiConfiguration.allowedKeyManagement.get(0)) {
                    wifiConfiguration.allowedKeyManagement.clear();
                    wifiConfiguration.allowedKeyManagement.set(4);
                }
                wifiConfiguration.allowedPairwiseCiphers.clear();
                wifiConfiguration.allowedGroupCiphers.clear();
                wifiConfiguration.allowedPairwiseCiphers.set(2);
                wifiConfiguration.allowedGroupCiphers.set(3);
            } catch (Exception e3) {
                e2 = e3;
                e2.printStackTrace();
                Log.e(TAG, "WifiConfiguration  newConfig error");
            }
            return wifiConfiguration;
        } catch (Exception e4) {
            wifiConfiguration = null;
            e2 = e4;
        }
    }

    private WifiConfiguration createConfig() throws IllegalAccessException {
        String str = TAG;
        Log.e(str, "===================>>>  createConfig 0000 ");
        WifiConfiguration wifiConfigurationCheckWifiApInfo = checkWifiApInfo();
        boolean zIsWifiApEnable = isWifiApEnable();
        boolean z2 = is5GhzBandSupported() && this.mSettings.isSupport5GBand();
        Log.e(str, "===================>>>  createConfig 0001 ");
        if (!zIsWifiApEnable) {
            if (z2) {
                Log.e(str, "===================>>>  Configure 5G ");
                wifiConfigurationCheckWifiApInfo.getClass().getDeclaredField("apBand").setInt(wifiConfigurationCheckWifiApInfo, 1);
            } else {
                Log.e(str, "===================>>>  Configure 2.4G ");
                wifiConfigurationCheckWifiApInfo.getClass().getDeclaredField("apBand").setInt(wifiConfigurationCheckWifiApInfo, 0);
            }
        }
        Log.e(str, "=================>>>>>  createConfig 0001 ");
        return wifiConfigurationCheckWifiApInfo;
    }

    private boolean is5GHzBandSupported() {
        try {
            return ((Boolean) this.mWifiManager.getClass().getDeclaredMethod("is5GHzBandSupported", new Class[0]).invoke(this.mWifiManager, new Object[0])).booleanValue();
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    private boolean isDualBandSupported() {
        boolean zBooleanValue;
        try {
            zBooleanValue = ((Boolean) this.mWifiManager.getClass().getDeclaredMethod("isDualBandSupported", new Class[0]).invoke(this.mWifiManager, new Object[0])).booleanValue();
        } catch (Exception e2) {
            e2.printStackTrace();
            zBooleanValue = false;
        }
        if (zBooleanValue) {
            return zBooleanValue;
        }
        try {
            return ((Boolean) this.mWifiManager.getClass().getDeclaredMethod("is5GHzBandSupported", new Class[0]).invoke(this.mWifiManager, new Object[0])).booleanValue();
        } catch (Exception e3) {
            e3.printStackTrace();
            return zBooleanValue;
        }
    }

    private boolean isWifiApEnable() {
        boolean zBooleanValue = false;
        try {
            return ((Integer) this.mWifiManager.getClass().getDeclaredMethod("getWifiApState", new Class[0]).invoke(this.mWifiManager, new Object[0])).intValue() == 13;
        } catch (IllegalAccessException e2) {
            e2.printStackTrace();
            return false;
        } catch (NoSuchMethodException e3) {
            try {
                zBooleanValue = ((Boolean) this.mWifiManager.getClass().getDeclaredMethod("isWifiApEnabled", new Class[0]).invoke(this.mWifiManager, new Object[0])).booleanValue();
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
            } catch (NoSuchMethodException e5) {
                e5.printStackTrace();
            } catch (InvocationTargetException e6) {
                e6.printStackTrace();
            }
            e3.printStackTrace();
            return zBooleanValue;
        } catch (InvocationTargetException e7) {
            e7.printStackTrace();
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ ListenableFuture lambda$initialize$1(AtomicBoolean atomicBoolean, ListeningScheduledExecutorService listeningScheduledExecutorService, Runnable runnable, SettableFuture settableFuture) {
        atomicBoolean.set(setWifiApEnabled(createConfig()));
        ListenableFuture<?> listenableFuture = this.handleAp;
        if (listenableFuture != null) {
            listenableFuture.cancel(true);
        }
        this.handleAp = listeningScheduledExecutorService.schedule(runnable, 80L, TimeUnit.MILLISECONDS);
        return settableFuture;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initialize$2(BroadcastReceiver broadcastReceiver) {
        this.mContext.unregisterReceiver(broadcastReceiver);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ ListenableFuture lambda$tether$0() throws IllegalAccessException, NoSuchFieldException, InvocationTargetException {
        final SettableFuture settableFutureCreate = SettableFuture.create();
        startTethering(new OnStartTetheringCallback() { // from class: com.google.android.projection.sink.embedded.transport.net.WiFiAccessPoint.2
            @Override // com.google.android.projection.sink.embedded.transport.net.WiFiAccessPoint.OnStartTetheringCallback
            public void onTetheringFailed(int i2) {
                String strD = c.d("Failed to bring up DHCP server: ", i2);
                Log.e(WiFiAccessPoint.TAG, strD);
                if (settableFutureCreate.setException(new RuntimeException(strD))) {
                    return;
                }
                WiFiAccessPoint.this.teardown();
            }

            @Override // com.google.android.projection.sink.embedded.transport.net.WiFiAccessPoint.OnStartTetheringCallback
            public void onTetheringStarted() {
                Log.i(WiFiAccessPoint.TAG, "DHCP server up!");
                if (settableFutureCreate.set(null)) {
                    return;
                }
                WiFiAccessPoint.this.teardown();
            }
        });
        return settableFutureCreate;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0133  */
    /* JADX WARN: Code duplicated, block: B:24:0x014d  */
    /* JADX WARN: Instruction removed from duplicated block: B:22:0x0133, please report this as an issue */
    private boolean setWifiApEnabled(WifiConfiguration wifiConfiguration) {
        boolean z2;
        String str;
        boolean zIsWifiApEnable = isWifiApEnable();
        boolean z3 = ((WifiConfiguration) this.mWifiManager.getClass().getDeclaredMethod("getWifiApConfiguration", new Class[0]).invoke(this.mWifiManager, new Object[0])).allowedKeyManagement.get(0);
        Log.e(TAG, "=========>>>   setWifiApEnabled 0000 111 isWifiApEnable : " + zIsWifiApEnable + " isNone : " + z3);
        if (z3 || !zIsWifiApEnable) {
            updateWifiConfiguration(wifiConfiguration);
        }
        boolean zBooleanValue = true;
        if (Build.VERSION.SDK_INT < 24) {
            if (!zIsWifiApEnable) {
                try {
                    zBooleanValue = ((Boolean) this.mWifiManager.getClass().getDeclaredMethod("setWifiApEnabled", wifiConfiguration.getClass(), Boolean.TYPE).invoke(this.mWifiManager, wifiConfiguration, Boolean.TRUE)).booleanValue();
                    z2 = true;
                } catch (Exception unused) {
                    Log.e(TAG, "setWifiApEnabled 3333    success: false");
                    z2 = false;
                    zBooleanValue = false;
                }
                Log.e(TAG, "setWifiApEnabled 4444    success: " + zBooleanValue);
            }
            WifiConfiguration wifiConfiguration2 = (WifiConfiguration) this.mWifiManager.getClass().getDeclaredMethod("getWifiApConfiguration", new Class[0]).invoke(this.mWifiManager, new Object[0]);
            this.mSettings.writeKeyValue(Settings.CAR_WIFI_SSID, wifiConfiguration2.SSID);
            this.mSettings.writeKeyValue(Settings.CAR_WIFI_PASSWORD, wifiConfiguration2.preSharedKey);
            str = TAG;
            Log.e(str, "00  ===>> WIFI SSID : " + this.mSettings.getCarWifiSsid() + "  PASSWORD: " + this.mSettings.getCarWifiPassword());
            if (zBooleanValue) {
                throw new UnknownError("Enabling WiFi returned false");
            }
            Log.i(str, "setWifiApEnabled------>>>  tetheringRequired : " + z2 + " success: " + zBooleanValue);
            return z2;
        }
        if (!zIsWifiApEnable) {
            try {
                zBooleanValue = ((Boolean) this.mWifiManager.getClass().getDeclaredMethod("startSoftAp", wifiConfiguration.getClass()).invoke(this.mWifiManager, wifiConfiguration)).booleanValue();
            } catch (Exception unused2) {
                Log.e(TAG, "setWifiApEnabled 1111    success: false");
                zBooleanValue = false;
            }
        }
        Log.e(TAG, "setWifiApEnabled 2222    success: " + zBooleanValue);
        z2 = false;
        WifiConfiguration wifiConfiguration3 = (WifiConfiguration) this.mWifiManager.getClass().getDeclaredMethod("getWifiApConfiguration", new Class[0]).invoke(this.mWifiManager, new Object[0]);
        this.mSettings.writeKeyValue(Settings.CAR_WIFI_SSID, wifiConfiguration3.SSID);
        this.mSettings.writeKeyValue(Settings.CAR_WIFI_PASSWORD, wifiConfiguration3.preSharedKey);
        str = TAG;
        Log.e(str, "00  ===>> WIFI SSID : " + this.mSettings.getCarWifiSsid() + "  PASSWORD: " + this.mSettings.getCarWifiPassword());
        if (zBooleanValue) {
            throw new UnknownError("Enabling WiFi returned false");
        }
        Log.i(str, "setWifiApEnabled------>>>  tetheringRequired : " + z2 + " success: " + zBooleanValue);
        return z2;
    }

    private void startTethering(final OnStartTetheringCallback onStartTetheringCallback) throws IllegalAccessException, NoSuchFieldException, InvocationTargetException {
        Field declaredField = this.mConnectivityManager.getClass().getDeclaredField("mService");
        declaredField.setAccessible(true);
        Object obj = declaredField.get(this.mConnectivityManager);
        try {
            obj.getClass().getDeclaredMethod("startTethering", Integer.TYPE, ResultReceiver.class, Boolean.TYPE).invoke(obj, 0, new ResultReceiver(new Handler(Looper.getMainLooper())) { // from class: com.google.android.projection.sink.embedded.transport.net.WiFiAccessPoint.1
                @Override // android.os.ResultReceiver
                public void onReceiveResult(int i2, Bundle bundle) {
                    if (i2 == 0) {
                        onStartTetheringCallback.onTetheringStarted();
                    } else {
                        onStartTetheringCallback.onTetheringFailed(i2);
                    }
                }
            }, Boolean.FALSE);
        } catch (NoSuchMethodException unused) {
            obj.getClass().getDeclaredMethod("startTethering", Integer.TYPE, Boolean.TYPE, onStartTetheringCallback.getClass(), Handler.class).invoke(obj, 0, Boolean.FALSE, onStartTetheringCallback, new Handler(Looper.getMainLooper()));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private boolean stopTethering() {
        Log.e(TAG, "====================>>>> AP stopTethering");
        try {
            return ((Boolean) this.mWifiManager.getClass().getDeclaredMethod("stopSoftAp", new Class[0]).invoke(this.mWifiManager, new Object[0])).booleanValue();
        } catch (NoSuchMethodException unused) {
            Log.e(TAG, "====================>>>> AP stopTethering  11111");
            try {
                this.mConnectivityManager.getClass().getDeclaredMethod("stopTethering", Integer.TYPE).invoke(this.mConnectivityManager, 0);
                return true;
            } catch (Exception e2) {
                Log.e(TAG, "Failed to disable AP mode", e2);
                return false;
            }
        } catch (Exception e3) {
            Log.e(TAG, "Failed to disable AP mode", e3);
            return false;
        }
    }

    private void stopWifiAp() {
        Log.e(TAG, "====================>>>> AP stopWifiAp");
        try {
            if (((Boolean) this.mWifiManager.getClass().getDeclaredMethod("isWifiApEnabled", new Class[0]).invoke(this.mWifiManager, new Object[0])).booleanValue()) {
                try {
                    try {
                        this.mWifiManager.getClass().getDeclaredMethod("stopSoftAp", new Class[0]).invoke(this.mWifiManager, new Object[0]);
                        Thread.sleep(800L);
                    } catch (NoSuchMethodException unused) {
                        Log.e(TAG, "====================>>>> AP stopTethering  2222");
                        try {
                            this.mConnectivityManager.getClass().getDeclaredMethod("stopTethering", Integer.TYPE).invoke(this.mConnectivityManager, 0);
                        } catch (Exception e2) {
                            Log.e(TAG, "Failed to disable AP mode 2222 ", e2);
                        }
                    }
                } catch (Exception e3) {
                    Log.e(TAG, "Failed to stopSoftAp 2222 ", e3);
                    e3.printStackTrace();
                }
            }
        } catch (Exception unused2) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ListenableFuture<?> tether(ListeningScheduledExecutorService listeningScheduledExecutorService) {
        Log.i(TAG, "--------------------------->>>  tether");
        return Futures.submitAsync(new AsyncCallable() { // from class: com.google.android.projection.sink.embedded.transport.net.a
            @Override // com.google.common.util.concurrent.AsyncCallable
            public final ListenableFuture call() {
                return this.f394a.lambda$tether$0();
            }
        }, listeningScheduledExecutorService);
    }

    private void updateWifiConfiguration(WifiConfiguration wifiConfiguration) {
        try {
            Boolean bool = (Boolean) this.mWifiManager.getClass().getDeclaredMethod("setWifiApConfiguration", WifiConfiguration.class).invoke(this.mWifiManager, wifiConfiguration);
            String str = TAG;
            Log.e(str, "updateWifiConfiguration config: " + wifiConfiguration.toString() + " \n setWifiApConfiguration result : " + bool);
            WifiConfiguration wifiConfiguration2 = (WifiConfiguration) this.mWifiManager.getClass().getDeclaredMethod("getWifiApConfiguration", new Class[0]).invoke(this.mWifiManager, new Object[0]);
            StringBuilder sb = new StringBuilder("updateWifiConfiguration config: ");
            sb.append(wifiConfiguration2.toString());
            Log.e(str, sb.toString());
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public synchronized ListenableFuture<?> initialize(final ListeningScheduledExecutorService listeningScheduledExecutorService) {
        ListenableFuture<?> listenableFuture = this.mInitialized;
        if (listenableFuture != null) {
            return listenableFuture;
        }
        final SettableFuture settableFutureCreate = SettableFuture.create();
        final AtomicBoolean atomicBoolean = new AtomicBoolean();
        final Runnable runnable = new Runnable() { // from class: com.google.android.projection.sink.embedded.transport.net.WiFiAccessPoint.3
            @Override // java.lang.Runnable
            public void run() {
                boolean future;
                Log.i(WiFiAccessPoint.TAG, "AP up!");
                if (atomicBoolean.get()) {
                    Log.i(WiFiAccessPoint.TAG, "AP up!  ====  0000");
                    future = settableFutureCreate.setFuture(WiFiAccessPoint.this.tether(listeningScheduledExecutorService));
                } else {
                    Log.i(WiFiAccessPoint.TAG, "AP up!  ====  1111");
                    try {
                        Thread.sleep(1000L);
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                    future = settableFutureCreate.set(null);
                }
                boolean z2 = !future;
                Log.i(WiFiAccessPoint.TAG, "AP up!  cancelled : " + z2);
                if (z2) {
                    WiFiAccessPoint.this.teardown();
                }
                WiFiAccessPoint.this.handleAp = null;
            }
        };
        BroadcastReceiver broadcastReceiver = new BroadcastReceiver() { // from class: com.google.android.projection.sink.embedded.transport.net.WiFiAccessPoint.4
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                if (intent == null || !"android.net.wifi.WIFI_AP_STATE_CHANGED".equals(intent.getAction())) {
                    return;
                }
                int intExtra = intent.getIntExtra("wifi_state", 0);
                String str = WiFiAccessPoint.TAG;
                StringBuilder sbS = c.s("wifiState  ==== ", intExtra, " aciton:");
                sbS.append(intent.getAction());
                Log.e(str, sbS.toString());
                switch (intExtra) {
                    case 10:
                    case 11:
                        break;
                    case 12:
                        Log.i(WiFiAccessPoint.TAG, "AP is coming up");
                        break;
                    case 13:
                        ListenableFuture<?> listenableFuture2 = WiFiAccessPoint.this.handleAp;
                        if (listenableFuture2 != null) {
                            listenableFuture2.cancel(true);
                        }
                        WiFiAccessPoint.this.handleAp = listeningScheduledExecutorService.schedule(runnable, 80L, TimeUnit.MILLISECONDS);
                        break;
                    case 14:
                        String str2 = "Failed to bring up AP: " + intent.getIntExtra(WifiManager.EXTRA_WIFI_AP_FAILURE_REASON, -1);
                        Log.e(WiFiAccessPoint.TAG, str2);
                        settableFutureCreate.setException(new RuntimeException(str2));
                        break;
                    default:
                        Log.d(WiFiAccessPoint.TAG, "Got new AP state " + intExtra);
                        break;
                }
            }
        };
        this.mContext.registerReceiver(broadcastReceiver, new IntentFilter("android.net.wifi.WIFI_AP_STATE_CHANGED"));
        ListenableFuture<?> listenableFutureSubmitAsync = Futures.submitAsync(new AsyncCallable() { // from class: com.google.android.projection.sink.embedded.transport.net.b
            @Override // com.google.common.util.concurrent.AsyncCallable
            public final ListenableFuture call() {
                return this.f395a.lambda$initialize$1(atomicBoolean, listeningScheduledExecutorService, runnable, settableFutureCreate);
            }
        }, listeningScheduledExecutorService);
        this.mInitialized = listenableFutureSubmitAsync;
        ListenableFuture<?> listenableFutureWithTimeout = Futures.withTimeout(listenableFutureSubmitAsync, 10000L, TimeUnit.MILLISECONDS, listeningScheduledExecutorService);
        this.mInitialized = listenableFutureWithTimeout;
        listenableFutureWithTimeout.addListener(new android.accessibilityservice.a(this, broadcastReceiver, 4), MoreExecutors.directExecutor());
        return this.mInitialized;
    }

    public boolean is5GhzBandSupported() {
        String str;
        boolean z2 = false;
        try {
            str = (String) this.mWifiManager.getClass().getDeclaredMethod("getCountryCode", new Class[0]).invoke(this.mWifiManager, new Object[0]);
        } catch (Exception e2) {
            e2.printStackTrace();
            str = null;
        }
        boolean zIsDualBandSupported = isDualBandSupported();
        if (!zIsDualBandSupported) {
            zIsDualBandSupported = is5GHzBandSupported();
        }
        if (zIsDualBandSupported && str != null) {
            z2 = true;
        }
        Log.e(TAG, "=============>>> check5GhzBandSupported support5G: " + z2 + "   isDualBandSupported: " + zIsDualBandSupported);
        return z2;
    }

    public synchronized void teardown() {
        ListenableFuture<?> listenableFuture = this.mInitialized;
        if (listenableFuture != null) {
            listenableFuture.cancel(true);
            this.mInitialized = null;
        }
    }
}
