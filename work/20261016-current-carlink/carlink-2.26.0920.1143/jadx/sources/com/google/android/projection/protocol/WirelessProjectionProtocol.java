package com.google.android.projection.protocol;

import android.util.Log;
import com.google.android.projection.common.UsedByNative;
import com.google.android.projection.proto.Common;
import com.google.android.projection.proto.WifiDiscoveryProtos;
import com.google.android.projection.proto.WifiProjectionProtocol;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.MessageLite;
import com.google.protobuf.Parser;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetSocketAddress;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes3.dex */
public class WirelessProjectionProtocol implements NativeObject {
    private static final String TAG = "AHU.WPP";

    @UsedByNative
    private final boolean autoLaunch;

    @UsedByNative
    private final WifiProjectionProtocolCallback callback;

    @UsedByNative
    private final byte[] headUnitInfo;

    @UsedByNative
    private final WifiProjectionProtocolLoggingCallback loggingCallback;

    @UsedByNative
    private long nativeInstance;

    @UsedByNative
    private final int[] supportedWifiFrequenciesMhz;

    @UsedByNative
    private final int wifiChannelType;

    @UsedByNative
    private final WifiProjectionInfoProviderInternal wifiProjectionInfoProvider;

    @UsedByNative
    private final String wppSocketIp;

    @UsedByNative
    private final int wppSocketPort;

    /* JADX INFO: renamed from: com.google.android.projection.protocol.WirelessProjectionProtocol$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$google$android$projection$proto$WifiDiscoveryProtos$WifiMessageType;

        static {
            int[] iArr = new int[WifiDiscoveryProtos.WifiMessageType.values().length];
            $SwitchMap$com$google$android$projection$proto$WifiDiscoveryProtos$WifiMessageType = iArr;
            try {
                iArr[WifiDiscoveryProtos.WifiMessageType.MESSAGE_WIFI_REQUEST_START_BT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$android$projection$proto$WifiDiscoveryProtos$WifiMessageType[WifiDiscoveryProtos.WifiMessageType.MESSAGE_WIFI_REQUEST_INFO_BT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$android$projection$proto$WifiDiscoveryProtos$WifiMessageType[WifiDiscoveryProtos.WifiMessageType.MESSAGE_WIFI_RESPONSE_INFO_BT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$google$android$projection$proto$WifiDiscoveryProtos$WifiMessageType[WifiDiscoveryProtos.WifiMessageType.MESSAGE_WIFI_VERSION_REQUEST_BT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$google$android$projection$proto$WifiDiscoveryProtos$WifiMessageType[WifiDiscoveryProtos.WifiMessageType.MESSAGE_WIFI_VERSION_RESPONSE_BT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$google$android$projection$proto$WifiDiscoveryProtos$WifiMessageType[WifiDiscoveryProtos.WifiMessageType.MESSAGE_WIFI_CONNECT_STATUS_BT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$google$android$projection$proto$WifiDiscoveryProtos$WifiMessageType[WifiDiscoveryProtos.WifiMessageType.MESSAGE_WIFI_RESPONSE_START_BT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$google$android$projection$proto$WifiDiscoveryProtos$WifiMessageType[WifiDiscoveryProtos.WifiMessageType.MESSAGE_WIFI_PING_REQUEST_BT.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$google$android$projection$proto$WifiDiscoveryProtos$WifiMessageType[WifiDiscoveryProtos.WifiMessageType.MESSAGE_WIFI_PING_RESPONSE_BT.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$google$android$projection$proto$WifiDiscoveryProtos$WifiMessageType[WifiDiscoveryProtos.WifiMessageType.MESSAGE_WIFI_CONNECTION_REJECTION_BT.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }

    @UsedByNative
    public static class ClientInfo {
        private final String deviceSerial;
        private final String mobileDeviceId;
        private final Common.PhoneInfo phoneInfo;
        private final Map<WifiProjectionProtocol.TransportType, String> transportToEphemeralId;
        private final WifiProjectionProtocol.TransportType transportType;

        @UsedByNative
        public ClientInfo(String str, WifiProjectionProtocol.TransportType transportType, Map<WifiProjectionProtocol.TransportType, String> map, String str2, Common.PhoneInfo phoneInfo) {
            this.mobileDeviceId = str;
            this.transportType = transportType;
            this.transportToEphemeralId = Collections.unmodifiableMap(new HashMap(map));
            this.deviceSerial = str2;
            this.phoneInfo = phoneInfo;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof ClientInfo)) {
                return false;
            }
            ClientInfo clientInfo = (ClientInfo) obj;
            return Objects.equals(this.mobileDeviceId, clientInfo.mobileDeviceId) && Objects.equals(this.transportType, clientInfo.transportType) && Objects.equals(this.transportToEphemeralId, clientInfo.transportToEphemeralId) && Objects.equals(this.deviceSerial, clientInfo.deviceSerial) && Objects.equals(this.phoneInfo, clientInfo.phoneInfo);
        }

        public String getDeviceSerial() {
            return this.deviceSerial;
        }

        public String getMobileDeviceId() {
            return this.mobileDeviceId;
        }

        public Common.PhoneInfo getPhoneInfo() {
            return this.phoneInfo;
        }

        public Map<WifiProjectionProtocol.TransportType, String> getTransportToEphemeralId() {
            return this.transportToEphemeralId;
        }

        public WifiProjectionProtocol.TransportType getTransportType() {
            return this.transportType;
        }

        public int hashCode() {
            return Objects.hash(this.mobileDeviceId, this.transportType, this.transportToEphemeralId, this.deviceSerial, this.phoneInfo);
        }
    }

    public interface WifiProjectionInfoProvider {
        String getBssid();

        String getPassword();

        InetSocketAddress getProjectionPortInfo();

        WifiDiscoveryProtos.WifiSecurityMode getSecurityMode();

        String getSsid();
    }

    @UsedByNative
    public static class WifiProjectionInfoProviderInternal implements WifiProjectionInfoProvider {
        private final WifiProjectionInfoProvider wifiProjectionInfoProvider;

        public WifiProjectionInfoProviderInternal(WifiProjectionInfoProvider wifiProjectionInfoProvider) {
            this.wifiProjectionInfoProvider = wifiProjectionInfoProvider;
        }

        @Override // com.google.android.projection.protocol.WirelessProjectionProtocol.WifiProjectionInfoProvider
        @UsedByNative
        public String getBssid() {
            return this.wifiProjectionInfoProvider.getBssid();
        }

        @UsedByNative
        public String getIpAddress() {
            return getProjectionPortInfo().getAddress().getHostAddress();
        }

        @Override // com.google.android.projection.protocol.WirelessProjectionProtocol.WifiProjectionInfoProvider
        @UsedByNative
        public String getPassword() {
            return this.wifiProjectionInfoProvider.getPassword();
        }

        @UsedByNative
        public int getPort() {
            return getProjectionPortInfo().getPort();
        }

        @Override // com.google.android.projection.protocol.WirelessProjectionProtocol.WifiProjectionInfoProvider
        public InetSocketAddress getProjectionPortInfo() {
            return this.wifiProjectionInfoProvider.getProjectionPortInfo();
        }

        @Override // com.google.android.projection.protocol.WirelessProjectionProtocol.WifiProjectionInfoProvider
        public WifiDiscoveryProtos.WifiSecurityMode getSecurityMode() {
            return this.wifiProjectionInfoProvider.getSecurityMode();
        }

        @UsedByNative
        public int getSecurityModeInt() {
            return getSecurityMode().getNumber();
        }

        @Override // com.google.android.projection.protocol.WirelessProjectionProtocol.WifiProjectionInfoProvider
        @UsedByNative
        public String getSsid() {
            return this.wifiProjectionInfoProvider.getSsid();
        }
    }

    @UsedByNative
    public interface WifiProjectionProtocolCallback {
        @UsedByNative
        WifiDiscoveryProtos.MessageStatus canStartProjection(ClientInfo clientInfo);

        @UsedByNative
        boolean isKnownDevice(String str);

        @UsedByNative
        void onClientLost(ClientInfo clientInfo);

        @UsedByNative
        void onReadyForProjection(ClientInfo clientInfo);

        @UsedByNative
        void onWifiConnectStatus(ClientInfo clientInfo, WifiDiscoveryProtos.MessageStatus messageStatus, String str);

        @UsedByNative
        void onWifiVersionResponseFailure(ClientInfo clientInfo, WifiDiscoveryProtos.MessageStatus messageStatus);
    }

    public interface WifiProjectionProtocolLoggingCallback {
        @UsedByNative
        void onMessage(String str, WifiProjectionProtocol.MessageDirection messageDirection, WifiDiscoveryProtos.WifiMessageType wifiMessageType, MessageLite messageLite);
    }

    static {
        ReceiverLibJni.load();
    }

    public WirelessProjectionProtocol(WifiProjectionProtocolCallback wifiProjectionProtocolCallback, WifiProjectionInfoProvider wifiProjectionInfoProvider, WifiDiscoveryProtos.WifiChannelType wifiChannelType, int[] iArr, Common.HeadUnitInfo headUnitInfo, InetSocketAddress inetSocketAddress, boolean z2, WifiProjectionProtocolLoggingCallback wifiProjectionProtocolLoggingCallback) {
        this.callback = wifiProjectionProtocolCallback;
        this.wifiProjectionInfoProvider = new WifiProjectionInfoProviderInternal(wifiProjectionInfoProvider);
        this.wifiChannelType = wifiChannelType.getNumber();
        this.supportedWifiFrequenciesMhz = (int[]) iArr.clone();
        this.headUnitInfo = headUnitInfo.toByteArray();
        this.wppSocketIp = inetSocketAddress.getAddress().getHostAddress();
        this.wppSocketPort = inetSocketAddress.getPort();
        this.autoLaunch = z2;
        this.loggingCallback = wifiProjectionProtocolLoggingCallback;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public WifiProjectionProtocol.ProjectionStartResult get(StartResultFuture startResultFuture) {
        try {
            return get(startResultFuture, -1L, TimeUnit.SECONDS);
        } catch (TimeoutException e2) {
            throw new AssertionError(e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public native WifiProjectionProtocol.ProjectionStartResult get(StartResultFuture startResultFuture, long j2, TimeUnit timeUnit);

    @UsedByNative
    private void logDiscoveryMessage(String str, int i2, int i3, byte[] bArr) {
        Parser rVar;
        if (this.loggingCallback != null) {
            WifiDiscoveryProtos.WifiMessageType wifiMessageTypeForNumber = WifiDiscoveryProtos.WifiMessageType.forNumber(i3);
            if (wifiMessageTypeForNumber == null) {
                Log.e("AHU.WPP", "Unrecognized Wi-Fi message type.");
                return;
            }
            switch (AnonymousClass1.$SwitchMap$com$google$android$projection$proto$WifiDiscoveryProtos$WifiMessageType[wifiMessageTypeForNumber.ordinal()]) {
                case 1:
                    rVar = WifiDiscoveryProtos.WifiStartRequest.parser();
                    break;
                case 2:
                    rVar = WifiDiscoveryProtos.WifiInfoRequest.parser();
                    break;
                case 3:
                    rVar = WifiDiscoveryProtos.WifiInfoResponse.parser();
                    break;
                case 4:
                    rVar = WifiDiscoveryProtos.WifiVersionRequest.parser();
                    break;
                case 5:
                    rVar = WifiDiscoveryProtos.WifiVersionResponse.parser();
                    break;
                case 6:
                    rVar = WifiDiscoveryProtos.WifiConnectStatus.parser();
                    break;
                case 7:
                    rVar = WifiDiscoveryProtos.WifiStartResponse.parser();
                    break;
                case 8:
                    rVar = WifiDiscoveryProtos.WifiPingRequest.parser();
                    break;
                case 9:
                    rVar = WifiDiscoveryProtos.WifiPingResponse.parser();
                    break;
                case 10:
                    rVar = WifiDiscoveryProtos.WifiConnectionRejection.parser();
                    break;
                default:
                    rVar = null;
                    break;
            }
            if (rVar == null) {
                Log.e("AHU.WPP", "Unrecognized Wi-Fi message type.");
                return;
            }
            try {
                WifiProjectionProtocol.MessageDirection messageDirectionForNumber = WifiProjectionProtocol.MessageDirection.forNumber(i2);
                WifiProjectionProtocolLoggingCallback wifiProjectionProtocolLoggingCallback = this.loggingCallback;
                if (messageDirectionForNumber == null) {
                    messageDirectionForNumber = WifiProjectionProtocol.MessageDirection.MESSAGE_DIRECTION_UNKNOWN;
                }
                wifiProjectionProtocolLoggingCallback.onMessage(str, messageDirectionForNumber, wifiMessageTypeForNumber, (MessageLite) rVar.parseFrom(bArr));
            } catch (InvalidProtocolBufferException e2) {
                Log.e("AHU.WPP", "Failed to parse protocol buffer", e2);
            }
        }
    }

    private native void onConnect(String str, int i2, InputStream inputStream, OutputStream outputStream);

    private native void onDisconnect(String str);

    private native Future<WifiProjectionProtocol.ProjectionStartResult> startProjection(String str, int i2);

    public void clientDisconnected(String str) {
        onDisconnect(str);
    }

    @Override // com.google.android.projection.protocol.NativeObject
    public void destroy() {
    }

    @Override // com.google.android.projection.protocol.NativeObject
    public long getNativeInstance() {
        return this.nativeInstance;
    }

    public void onNewConnection(String str, WifiProjectionProtocol.TransportType transportType, InputStream inputStream, OutputStream outputStream) {
        onConnect(str, transportType.getNumber(), inputStream, outputStream);
    }

    public Future<WifiProjectionProtocol.ProjectionStartResult> startProjection(String str, WifiDiscoveryProtos.StartRequestReason startRequestReason) {
        return startProjection(str, startRequestReason.getNumber());
    }

    @UsedByNative
    public final class StartResultFuture implements Future<WifiProjectionProtocol.ProjectionStartResult> {

        @UsedByNative
        volatile long nativeFutureInstance;

        @UsedByNative
        volatile WifiProjectionProtocol.ProjectionStartResult startResult = WifiProjectionProtocol.ProjectionStartResult.PROJECTION_START_RESULT_UNKNOWN;

        @UsedByNative
        public StartResultFuture(long j2) {
            this.nativeFutureInstance = j2;
        }

        @Override // java.util.concurrent.Future
        public boolean cancel(boolean z2) {
            throw new UnsupportedOperationException("StartResultFuture cannot be cancelled");
        }

        @Override // java.util.concurrent.Future
        public boolean isCancelled() {
            return false;
        }

        @Override // java.util.concurrent.Future
        public boolean isDone() {
            return this.nativeFutureInstance == 0;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Future
        public WifiProjectionProtocol.ProjectionStartResult get() {
            if (this.nativeFutureInstance == 0) {
                return this.startResult;
            }
            this.startResult = WirelessProjectionProtocol.this.get(this);
            return this.startResult;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Future
        public WifiProjectionProtocol.ProjectionStartResult get(long j2, TimeUnit timeUnit) {
            if (this.nativeFutureInstance == 0) {
                return this.startResult;
            }
            this.startResult = WirelessProjectionProtocol.this.get(this, j2, timeUnit);
            return this.startResult;
        }
    }
}
