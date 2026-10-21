package com.google.android.projection.protocol;

import com.google.android.projection.proto.Protos;

/* JADX INFO: loaded from: classes3.dex */
public class CarWifiStub extends CarWifi {
    private final CarWifi.CarWifiCredentials mWifiCreds = new CarWifi.CarWifiCredentials.Builder().setWifiSsid("wifiSSID").setWifiPassword("wifiPassword").setWifiSecurityMode(Protos.WifiSecurityMode.WPA2_PERSONAL).setAccessPointType(Protos.AccessPointType.DYNAMIC).build();

    @Override // com.google.android.projection.protocol.CarWifi
    public CarWifi.CarWifiCredentials getCarWifiCredentials() {
        return this.mWifiCreds;
    }
}
