package com.android.server.net;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkRequest;
import android.util.Log;
import com.android.internal.annotations.GuardedBy;

/* JADX INFO: loaded from: classes3.dex */
public class NetworkPinner extends ConnectivityManager.NetworkCallback {
    private static final String TAG = "NetworkPinner";

    @GuardedBy("sLock")
    private static ConnectivityManager sCM;

    @GuardedBy("sLock")
    private static Callback sCallback;
    protected static final Object sLock = new Object();

    @GuardedBy("sLock")
    protected static Network sNetwork;

    public static class Callback extends ConnectivityManager.NetworkCallback {
        private Callback() {
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onAvailable(Network network) {
            Object obj = NetworkPinner.sLock;
            synchronized (obj) {
                if (this != NetworkPinner.sCallback) {
                    return;
                }
                if (NetworkPinner.sCM.getBoundNetworkForProcess() == null && NetworkPinner.sNetwork == null) {
                    NetworkPinner.sCM.bindProcessToNetwork(network);
                    NetworkPinner.sNetwork = network;
                    Log.d(NetworkPinner.TAG, "Wifi alternate reality enabled on network " + network);
                }
                obj.notify();
            }
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onLost(Network network) {
            Object obj = NetworkPinner.sLock;
            synchronized (obj) {
                if (this != NetworkPinner.sCallback) {
                    return;
                }
                if (network.equals(NetworkPinner.sNetwork) && network.equals(NetworkPinner.sCM.getBoundNetworkForProcess())) {
                    NetworkPinner.unpin();
                    Log.d(NetworkPinner.TAG, "Wifi alternate reality disabled on network " + network);
                }
                obj.notify();
            }
        }
    }

    private static void maybeInitConnectivityManager(Context context) {
        if (sCM == null) {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService(Context.CONNECTIVITY_SERVICE);
            sCM = connectivityManager;
            if (connectivityManager == null) {
                throw new IllegalStateException("Bad luck, ConnectivityService not started.");
            }
        }
    }

    public static void pin(Context context, NetworkRequest networkRequest) {
        synchronized (sLock) {
            if (sCallback == null) {
                maybeInitConnectivityManager(context);
                Callback callback = new Callback();
                sCallback = callback;
                try {
                    sCM.registerNetworkCallback(networkRequest, callback);
                } catch (SecurityException e2) {
                    Log.d(TAG, "Failed to register network callback", e2);
                    sCallback = null;
                }
            }
        }
    }

    public static void unpin() {
        synchronized (sLock) {
            if (sCallback != null) {
                try {
                    sCM.bindProcessToNetwork(null);
                    sCM.unregisterNetworkCallback(sCallback);
                } catch (SecurityException e2) {
                    Log.d(TAG, "Failed to unregister network callback", e2);
                }
                sCallback = null;
                sNetwork = null;
            }
        }
    }
}
