package com.google.android.projection.protocol;

import com.google.android.projection.common.UsedByNative;
import com.google.android.projection.proto.Protos;
import com.google.errorprone.annotations.CanIgnoreReturnValue;

/* JADX INFO: loaded from: classes3.dex */
public abstract class CarWifi {
    public static final int OPEN = 1;
    public static final int UNKNOWN_SECURITY_MODE = 0;
    public static final int WEP_128 = 3;
    public static final int WEP_64 = 2;
    public static final int WPA2_ENTERPRISE = 8;
    public static final int WPA2_PERSONAL = 5;
    public static final int WPA_ENTERPRISE = 7;
    public static final int WPA_PERSONAL = 4;
    public static final int WPA_WPA2_ENTERPRISE = 9;
    public static final int WPA_WPA2_PERSONAL = 6;

    public static class CarWifiCredentials {
        public final Protos.AccessPointType accessPointType;

        @UsedByNative
        public final int[] supportedWifiChannels;

        @UsedByNative
        public final String wifiPassword;
        public final Protos.WifiSecurityMode wifiSecurityMode;

        @UsedByNative
        public final String wifiSsid;

        public static class Builder {
            private String wifiSsid = "";
            private String wifiPassword = "";
            private Protos.WifiSecurityMode wifiSecurityMode = Protos.WifiSecurityMode.UNKNOWN_SECURITY_MODE;
            private Protos.AccessPointType accessPointType = Protos.AccessPointType.DYNAMIC;
            private int[] supportedWifiChannels = new int[0];

            @CanIgnoreReturnValue
            public Builder addSupportedWifiChannels(int[] iArr) {
                this.supportedWifiChannels = iArr;
                return this;
            }

            public CarWifiCredentials build() {
                return new CarWifiCredentials(this.wifiSsid, this.wifiPassword, this.wifiSecurityMode, this.accessPointType, this.supportedWifiChannels);
            }

            @CanIgnoreReturnValue
            public Builder setAccessPointType(Protos.AccessPointType accessPointType) {
                this.accessPointType = accessPointType;
                return this;
            }

            @CanIgnoreReturnValue
            public Builder setWifiPassword(String str) {
                this.wifiPassword = str;
                return this;
            }

            @CanIgnoreReturnValue
            public Builder setWifiSecurityMode(Protos.WifiSecurityMode wifiSecurityMode) {
                this.wifiSecurityMode = wifiSecurityMode;
                return this;
            }

            @CanIgnoreReturnValue
            public Builder setWifiSsid(String str) {
                this.wifiSsid = str;
                return this;
            }
        }

        @UsedByNative
        private int getAccessPointType() {
            return this.accessPointType.getNumber();
        }

        @UsedByNative
        private int getWifiSecurityModeNumber() {
            return this.wifiSecurityMode.getNumber();
        }

        private CarWifiCredentials(String str, String str2, Protos.WifiSecurityMode wifiSecurityMode, Protos.AccessPointType accessPointType, int[] iArr) {
            this.wifiSsid = str;
            this.wifiPassword = str2;
            this.wifiSecurityMode = wifiSecurityMode;
            this.accessPointType = accessPointType;
            this.supportedWifiChannels = iArr;
        }
    }

    public abstract CarWifiCredentials getCarWifiCredentials();
}
