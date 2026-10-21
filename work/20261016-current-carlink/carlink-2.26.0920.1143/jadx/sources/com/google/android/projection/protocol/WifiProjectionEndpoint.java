package com.google.android.projection.protocol;

import com.google.android.projection.common.UsedByNative;

/* JADX INFO: loaded from: classes3.dex */
public class WifiProjectionEndpoint implements CarServiceProvider, WifiProjectionCallbacks {
    private CarWifi carWifi;
    private String carWifiBssid;

    @UsedByNative
    private long nativeWifiProjectionEndpoint;

    public WifiProjectionEndpoint(String str, CarWifi carWifi) {
        this.carWifiBssid = str;
        this.carWifi = carWifi;
        if (str == null) {
            throw new NullPointerException("Null car wifi BSSID");
        }
    }

    private native int nativeInit(int i2, long j2, String str);

    private native void nativeShutdown();

    @Override // com.google.android.projection.protocol.CarServiceProvider
    public boolean create(int i2, long j2) {
        return nativeInit(i2, j2, this.carWifiBssid) == 0;
    }

    @Override // com.google.android.projection.protocol.NativeObject
    public void destroy() {
        nativeShutdown();
    }

    @Override // com.google.android.projection.protocol.NativeObject
    public long getNativeInstance() {
        return this.nativeWifiProjectionEndpoint;
    }

    @Override // com.google.android.projection.protocol.WifiProjectionCallbacks
    public CarWifi.CarWifiCredentials onWifiCredentialsRequest() {
        return this.carWifi.getCarWifiCredentials();
    }
}
