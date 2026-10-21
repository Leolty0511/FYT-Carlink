package com.google.android.projection.proto;

import android.app.m;
import com.android.internal.logging.nano.MetricsProto;
import com.google.protobuf.AbstractMessage;
import com.google.protobuf.AbstractMessageLite;
import com.google.protobuf.AbstractParser;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.ExtensionRegistry;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.Internal;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Message;
import com.google.protobuf.MessageOrBuilder;
import com.google.protobuf.Parser;
import com.google.protobuf.ProtocolMessageEnum;
import com.google.protobuf.SingleFieldBuilderV3;
import com.google.protobuf.UnknownFieldSet;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class WifiDiscoveryProtos {
    private static Descriptors.FileDescriptor descriptor = Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n\u0014wifi_discovery.proto\u0012\u000ewifi_discovery\u001a\fcommon.proto\">\n\u001aWifiProjectionProtocolInfo\u0012\u0012\n\nip_address\u0018\u0001 \u0001(\t\u0012\f\n\u0004port\u0018\u0002 \u0001(\u0005\"©\u0002\n\u0012WifiVersionRequest\u0012\u0015\n\rmajor_version\u0018\u0001 \u0001(\u0005\u0012\u0015\n\rminor_version\u0018\u0002 \u0001(\u0005\u0012D\n\u001bsupported_wifi_channel_type\u0018\u0003 \u0001(\u000e2\u001f.wifi_discovery.WifiChannelType\u0012\u001f\n\u0017supported_wifi_channels\u0018\u0004 \u0003(\u0005\u0012+\n\rheadunit_info\u0018\u0005 \u0001(\u000b2\u0014.common.HeadUnitInfo\u0012Q\n\u001dwifi_projection_protocol_info\u0018\u0006 \u0001(\u000b2*.wifi_discovery.WifiProjectionProtocolInfo\"ý\u0001\n\u0013WifiVersionResponse\u0012\u0015\n\rmajor_version\u0018\u0001 \u0001(\u0005\u0012\u0015\n\rminor_version\u0018\u0002 \u0001(\u0005\u0012\u0015\n\rdevice_serial\u0018\u0003 \u0001(\t\u00125\n\u000eversion_status\u0018\u0004 \u0001(\u000e2\u001d.wifi_discovery.MessageStatus\u0012C\n\u001aselected_wifi_channel_type\u0018\u0005 \u0001(\u000e2\u001f.wifi_discovery.WifiChannelType\u0012%\n\nphone_info\u0018\u0006 \u0001(\u000b2\u0011.common.PhoneInfo\"^\n\u0017WifiConnectionRejection\u0012C\n\u0010rejection_reason\u0018\u0001 \u0001(\u000e2).wifi_discovery.ConnectionRejectionReason\"v\n\u0010WifiStartRequest\u0012\u0012\n\nip_address\u0018\u0001 \u0001(\t\u0012\f\n\u0004port\u0018\u0002 \u0001(\u0005\u0012@\n\u0014start_request_reason\u0018\u0003 \u0001(\u000e2\".wifi_discovery.StartRequestReason\"d\n\u0011WifiStartResponse\u0012\u0012\n\nip_address\u0018\u0001 \u0001(\t\u0012\f\n\u0004port\u0018\u0002 \u0001(\u0005\u0012-\n\u0006status\u0018\u0003 \u0001(\u000e2\u001d.wifi_discovery.MessageStatus\"\u0011\n\u000fWifiInfoRequest\"Ê\u0001\n\u0010WifiInfoResponse\u0012\u0011\n\twifi_ssid\u0018\u0001 \u0001(\t\u0012\u0015\n\rwifi_password\u0018\u0002 \u0001(\t\u0012\u0012\n\nwifi_bssid\u0018\u0003 \u0001(\t\u0012<\n\u0012wifi_security_mode\u0018\u0004 \u0001(\u000e2 .wifi_discovery.WifiSecurityMode\u0012:\n\u0011access_point_type\u0018\u0005 \u0001(\u000e2\u001f.wifi_discovery.AccessPointType\"f\n\u0011WifiConnectStatus\u00125\n\u000econnect_status\u0018\u0001 \u0001(\u000e2\u001d.wifi_discovery.MessageStatus\u0012\u001a\n\u0012error_message_hint\u0018\u0002 \u0001(\t\"5\n\u000fWifiPingRequest\u0012\u0014\n\ftimestamp_ms\u0018\u0001 \u0001(\u0003\u0012\f\n\u0004data\u0018\u0002 \u0001(\f\"6\n\u0010WifiPingResponse\u0012\u0014\n\ftimestamp_ms\u0018\u0001 \u0001(\u0003\u0012\f\n\u0004data\u0018\u0002 \u0001(\f*û\u0002\n\u000fWifiMessageType\u0012!\n\u001dMESSAGE_WIFI_REQUEST_START_BT\u0010\u0001\u0012 \n\u001cMESSAGE_WIFI_REQUEST_INFO_BT\u0010\u0002\u0012!\n\u001dMESSAGE_WIFI_RESPONSE_INFO_BT\u0010\u0003\u0012#\n\u001fMESSAGE_WIFI_VERSION_REQUEST_BT\u0010\u0004\u0012$\n MESSAGE_WIFI_VERSION_RESPONSE_BT\u0010\u0005\u0012\"\n\u001eMESSAGE_WIFI_CONNECT_STATUS_BT\u0010\u0006\u0012\"\n\u001eMESSAGE_WIFI_RESPONSE_START_BT\u0010\u0007\u0012 \n\u001cMESSAGE_WIFI_PING_REQUEST_BT\u0010\b\u0012!\n\u001dMESSAGE_WIFI_PING_RESPONSE_BT\u0010\t\u0012(\n$MESSAGE_WIFI_CONNECTION_REJECTION_BT\u0010\n*ù\u0001\n\u0010WifiSecurityMode\u0012\u0019\n\u0015UNKNOWN_SECURITY_MODE\u0010\u0000\u0012\b\n\u0004OPEN\u0010\u0001\u0012\n\n\u0006WEP_64\u0010\u0002\u0012\u000b\n\u0007WEP_128\u0010\u0003\u0012\u0010\n\fWPA_PERSONAL\u0010\u0004\u0012\u0011\n\rWPA2_PERSONAL\u0010\b\u0012\u0015\n\u0011WPA_WPA2_PERSONAL\u0010\f\u0012\u0012\n\u000eWPA_ENTERPRISE\u0010\u0014\u0012\u0013\n\u000fWPA2_ENTERPRISE\u0010\u0018\u0012\u0017\n\u0013WPA_WPA2_ENTERPRISE\u0010\u001c\u0012\u0011\n\rWPA3_PERSONAL\u0010 \u0012\u0016\n\u0012WPA2_WPA3_PERSONAL\u0010(*u\n\u000fWifiChannelType\u0012\u0016\n\u0012CHANNELS_5GHZ_ONLY\u0010\u0000\u0012\u0017\n\u0013CHANNELS_24GHZ_ONLY\u0010\u0001\u0012\u0016\n\u0012CHANNELS_DUAL_BAND\u0010\u0002\u0012\u0019\n\u0015NO_CHANNELS_SUPPORTED\u0010\u0003*.\n\u000fAccessPointType\u0012\n\n\u0006STATIC\u0010\u0000\u0012\u000f\n\u0007DYNAMIC\u0010\u0001\u001a\u0002\b\u0001*N\n\u0012StartRequestReason\u0012\u0010\n\fUSER_REQUEST\u0010\u0000\u0012\u000f\n\u000bAUTO_LAUNCH\u0010\u0001\u0012\u0015\n\u0011AUTOMATIC_RESTART\u0010\u0002*\u0080\u0001\n\u0019ConnectionRejectionReason\u0012'\n#CONNECTION_REJECTION_REASON_UNKNOWN\u0010\u0000\u0012:\n6CONNECTION_REJECTION_REASON_MOBILE_DEVICE_ID_NOT_FOUND\u0010\u0001*©\u0004\n\rMessageStatus\u0012\u001e\n\u001aSTATUS_UNSOLICITED_MESSAGE\u0010\u0001\u0012\u0012\n\u000eSTATUS_SUCCESS\u0010\u0000\u0012)\n\u001cSTATUS_NO_COMPATIBLE_VERSION\u0010ÿÿÿÿÿÿÿÿÿ\u0001\u0012-\n STATUS_WIFI_INACCESSIBLE_CHANNEL\u0010þÿÿÿÿÿÿÿÿ\u0001\u0012.\n!STATUS_WIFI_INCORRECT_CREDENTIALS\u0010ýÿÿÿÿÿÿÿÿ\u0001\u0012.\n!STATUS_PROJECTION_ALREADY_STARTED\u0010üÿÿÿÿÿÿÿÿ\u0001\u0012!\n\u0014STATUS_WIFI_DISABLED\u0010ûÿÿÿÿÿÿÿÿ\u0001\u0012(\n\u001bSTATUS_WIFI_NOT_YET_STARTED\u0010úÿÿÿÿÿÿÿÿ\u0001\u0012 \n\u0013STATUS_INVALID_HOST\u0010ùÿÿÿÿÿÿÿÿ\u0001\u0012.\n!STATUS_NO_SUPPORTED_WIFI_CHANNELS\u0010øÿÿÿÿÿÿÿÿ\u0001\u00124\n'STATUS_INSTRUCT_USER_TO_CHECK_THE_PHONE\u0010÷ÿÿÿÿÿÿÿÿ\u0001\u0012'\n\u001aSTATUS_PHONE_WIFI_DISABLED\u0010öÿÿÿÿÿÿÿÿ\u0001\u0012,\n\u001fSTATUS_WIFI_NETWORK_UNAVAILABLE\u0010õÿÿÿÿÿÿÿÿ\u0001*G\n\rWifiConstants\u0012\u001a\n\u0016PROTOCOL_MAJOR_VERSION\u0010\u0004\u0012\u001a\n\u0016PROTOCOL_MINOR_VERSION\u0010\u0003B<\n#com.google.android.projection.protoB\u0013WifiDiscoveryProtosH\u0003"}, new Descriptors.FileDescriptor[]{Common.getDescriptor()});
    private static final Descriptors.Descriptor internal_static_wifi_discovery_WifiConnectStatus_descriptor;
    private static final GeneratedMessageV3.FieldAccessorTable internal_static_wifi_discovery_WifiConnectStatus_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_wifi_discovery_WifiConnectionRejection_descriptor;
    private static final GeneratedMessageV3.FieldAccessorTable internal_static_wifi_discovery_WifiConnectionRejection_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_wifi_discovery_WifiInfoRequest_descriptor;
    private static final GeneratedMessageV3.FieldAccessorTable internal_static_wifi_discovery_WifiInfoRequest_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_wifi_discovery_WifiInfoResponse_descriptor;
    private static final GeneratedMessageV3.FieldAccessorTable internal_static_wifi_discovery_WifiInfoResponse_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_wifi_discovery_WifiPingRequest_descriptor;
    private static final GeneratedMessageV3.FieldAccessorTable internal_static_wifi_discovery_WifiPingRequest_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_wifi_discovery_WifiPingResponse_descriptor;
    private static final GeneratedMessageV3.FieldAccessorTable internal_static_wifi_discovery_WifiPingResponse_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_wifi_discovery_WifiProjectionProtocolInfo_descriptor;
    private static final GeneratedMessageV3.FieldAccessorTable internal_static_wifi_discovery_WifiProjectionProtocolInfo_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_wifi_discovery_WifiStartRequest_descriptor;
    private static final GeneratedMessageV3.FieldAccessorTable internal_static_wifi_discovery_WifiStartRequest_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_wifi_discovery_WifiStartResponse_descriptor;
    private static final GeneratedMessageV3.FieldAccessorTable internal_static_wifi_discovery_WifiStartResponse_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_wifi_discovery_WifiVersionRequest_descriptor;
    private static final GeneratedMessageV3.FieldAccessorTable internal_static_wifi_discovery_WifiVersionRequest_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_wifi_discovery_WifiVersionResponse_descriptor;
    private static final GeneratedMessageV3.FieldAccessorTable internal_static_wifi_discovery_WifiVersionResponse_fieldAccessorTable;

    public enum AccessPointType implements ProtocolMessageEnum {
        STATIC(0),
        DYNAMIC(1);


        @Deprecated
        public static final int DYNAMIC_VALUE = 1;
        public static final int STATIC_VALUE = 0;
        private final int value;
        private static final Internal.EnumLiteMap<AccessPointType> internalValueMap = new Internal.EnumLiteMap<AccessPointType>() { // from class: com.google.android.projection.proto.WifiDiscoveryProtos.AccessPointType.1
            @Override // com.google.protobuf.Internal.EnumLiteMap
            public AccessPointType findValueByNumber(int i2) {
                return AccessPointType.forNumber(i2);
            }
        };
        private static final AccessPointType[] VALUES = values();

        AccessPointType(int i2) {
            this.value = i2;
        }

        public static AccessPointType forNumber(int i2) {
            if (i2 == 0) {
                return STATIC;
            }
            if (i2 != 1) {
                return null;
            }
            return DYNAMIC;
        }

        public static final Descriptors.EnumDescriptor getDescriptor() {
            return WifiDiscoveryProtos.getDescriptor().getEnumTypes().get(3);
        }

        public static Internal.EnumLiteMap<AccessPointType> internalGetValueMap() {
            return internalValueMap;
        }

        @Override // com.google.protobuf.ProtocolMessageEnum
        public final Descriptors.EnumDescriptor getDescriptorForType() {
            return getDescriptor();
        }

        @Override // com.google.protobuf.ProtocolMessageEnum, com.google.protobuf.Internal.EnumLite
        public final int getNumber() {
            return this.value;
        }

        @Override // com.google.protobuf.ProtocolMessageEnum
        public final Descriptors.EnumValueDescriptor getValueDescriptor() {
            return getDescriptor().getValues().get(ordinal());
        }

        @Deprecated
        public static AccessPointType valueOf(int i2) {
            return forNumber(i2);
        }

        public static AccessPointType valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() == getDescriptor()) {
                return VALUES[enumValueDescriptor.getIndex()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    public enum ConnectionRejectionReason implements ProtocolMessageEnum {
        CONNECTION_REJECTION_REASON_UNKNOWN(0),
        CONNECTION_REJECTION_REASON_MOBILE_DEVICE_ID_NOT_FOUND(1);

        public static final int CONNECTION_REJECTION_REASON_MOBILE_DEVICE_ID_NOT_FOUND_VALUE = 1;
        public static final int CONNECTION_REJECTION_REASON_UNKNOWN_VALUE = 0;
        private final int value;
        private static final Internal.EnumLiteMap<ConnectionRejectionReason> internalValueMap = new Internal.EnumLiteMap<ConnectionRejectionReason>() { // from class: com.google.android.projection.proto.WifiDiscoveryProtos.ConnectionRejectionReason.1
            @Override // com.google.protobuf.Internal.EnumLiteMap
            public ConnectionRejectionReason findValueByNumber(int i2) {
                return ConnectionRejectionReason.forNumber(i2);
            }
        };
        private static final ConnectionRejectionReason[] VALUES = values();

        ConnectionRejectionReason(int i2) {
            this.value = i2;
        }

        public static ConnectionRejectionReason forNumber(int i2) {
            if (i2 == 0) {
                return CONNECTION_REJECTION_REASON_UNKNOWN;
            }
            if (i2 != 1) {
                return null;
            }
            return CONNECTION_REJECTION_REASON_MOBILE_DEVICE_ID_NOT_FOUND;
        }

        public static final Descriptors.EnumDescriptor getDescriptor() {
            return WifiDiscoveryProtos.getDescriptor().getEnumTypes().get(5);
        }

        public static Internal.EnumLiteMap<ConnectionRejectionReason> internalGetValueMap() {
            return internalValueMap;
        }

        @Override // com.google.protobuf.ProtocolMessageEnum
        public final Descriptors.EnumDescriptor getDescriptorForType() {
            return getDescriptor();
        }

        @Override // com.google.protobuf.ProtocolMessageEnum, com.google.protobuf.Internal.EnumLite
        public final int getNumber() {
            return this.value;
        }

        @Override // com.google.protobuf.ProtocolMessageEnum
        public final Descriptors.EnumValueDescriptor getValueDescriptor() {
            return getDescriptor().getValues().get(ordinal());
        }

        @Deprecated
        public static ConnectionRejectionReason valueOf(int i2) {
            return forNumber(i2);
        }

        public static ConnectionRejectionReason valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() == getDescriptor()) {
                return VALUES[enumValueDescriptor.getIndex()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    public enum MessageStatus implements ProtocolMessageEnum {
        STATUS_UNSOLICITED_MESSAGE(1),
        STATUS_SUCCESS(0),
        STATUS_NO_COMPATIBLE_VERSION(-1),
        STATUS_WIFI_INACCESSIBLE_CHANNEL(-2),
        STATUS_WIFI_INCORRECT_CREDENTIALS(-3),
        STATUS_PROJECTION_ALREADY_STARTED(-4),
        STATUS_WIFI_DISABLED(-5),
        STATUS_WIFI_NOT_YET_STARTED(-6),
        STATUS_INVALID_HOST(-7),
        STATUS_NO_SUPPORTED_WIFI_CHANNELS(-8),
        STATUS_INSTRUCT_USER_TO_CHECK_THE_PHONE(-9),
        STATUS_PHONE_WIFI_DISABLED(-10),
        STATUS_WIFI_NETWORK_UNAVAILABLE(-11);

        public static final int STATUS_INSTRUCT_USER_TO_CHECK_THE_PHONE_VALUE = -9;
        public static final int STATUS_INVALID_HOST_VALUE = -7;
        public static final int STATUS_NO_COMPATIBLE_VERSION_VALUE = -1;
        public static final int STATUS_NO_SUPPORTED_WIFI_CHANNELS_VALUE = -8;
        public static final int STATUS_PHONE_WIFI_DISABLED_VALUE = -10;
        public static final int STATUS_PROJECTION_ALREADY_STARTED_VALUE = -4;
        public static final int STATUS_SUCCESS_VALUE = 0;
        public static final int STATUS_UNSOLICITED_MESSAGE_VALUE = 1;
        public static final int STATUS_WIFI_DISABLED_VALUE = -5;
        public static final int STATUS_WIFI_INACCESSIBLE_CHANNEL_VALUE = -2;
        public static final int STATUS_WIFI_INCORRECT_CREDENTIALS_VALUE = -3;
        public static final int STATUS_WIFI_NETWORK_UNAVAILABLE_VALUE = -11;
        public static final int STATUS_WIFI_NOT_YET_STARTED_VALUE = -6;
        private final int value;
        private static final Internal.EnumLiteMap<MessageStatus> internalValueMap = new Internal.EnumLiteMap<MessageStatus>() { // from class: com.google.android.projection.proto.WifiDiscoveryProtos.MessageStatus.1
            @Override // com.google.protobuf.Internal.EnumLiteMap
            public MessageStatus findValueByNumber(int i2) {
                return MessageStatus.forNumber(i2);
            }
        };
        private static final MessageStatus[] VALUES = values();

        MessageStatus(int i2) {
            this.value = i2;
        }

        public static MessageStatus forNumber(int i2) {
            switch (i2) {
                case -11:
                    return STATUS_WIFI_NETWORK_UNAVAILABLE;
                case -10:
                    return STATUS_PHONE_WIFI_DISABLED;
                case -9:
                    return STATUS_INSTRUCT_USER_TO_CHECK_THE_PHONE;
                case -8:
                    return STATUS_NO_SUPPORTED_WIFI_CHANNELS;
                case -7:
                    return STATUS_INVALID_HOST;
                case -6:
                    return STATUS_WIFI_NOT_YET_STARTED;
                case -5:
                    return STATUS_WIFI_DISABLED;
                case -4:
                    return STATUS_PROJECTION_ALREADY_STARTED;
                case -3:
                    return STATUS_WIFI_INCORRECT_CREDENTIALS;
                case -2:
                    return STATUS_WIFI_INACCESSIBLE_CHANNEL;
                case -1:
                    return STATUS_NO_COMPATIBLE_VERSION;
                case 0:
                    return STATUS_SUCCESS;
                case 1:
                    return STATUS_UNSOLICITED_MESSAGE;
                default:
                    return null;
            }
        }

        public static final Descriptors.EnumDescriptor getDescriptor() {
            return WifiDiscoveryProtos.getDescriptor().getEnumTypes().get(6);
        }

        public static Internal.EnumLiteMap<MessageStatus> internalGetValueMap() {
            return internalValueMap;
        }

        @Override // com.google.protobuf.ProtocolMessageEnum
        public final Descriptors.EnumDescriptor getDescriptorForType() {
            return getDescriptor();
        }

        @Override // com.google.protobuf.ProtocolMessageEnum, com.google.protobuf.Internal.EnumLite
        public final int getNumber() {
            return this.value;
        }

        @Override // com.google.protobuf.ProtocolMessageEnum
        public final Descriptors.EnumValueDescriptor getValueDescriptor() {
            return getDescriptor().getValues().get(ordinal());
        }

        @Deprecated
        public static MessageStatus valueOf(int i2) {
            return forNumber(i2);
        }

        public static MessageStatus valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() == getDescriptor()) {
                return VALUES[enumValueDescriptor.getIndex()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    public enum StartRequestReason implements ProtocolMessageEnum {
        USER_REQUEST(0),
        AUTO_LAUNCH(1),
        AUTOMATIC_RESTART(2);

        public static final int AUTOMATIC_RESTART_VALUE = 2;
        public static final int AUTO_LAUNCH_VALUE = 1;
        public static final int USER_REQUEST_VALUE = 0;
        private final int value;
        private static final Internal.EnumLiteMap<StartRequestReason> internalValueMap = new Internal.EnumLiteMap<StartRequestReason>() { // from class: com.google.android.projection.proto.WifiDiscoveryProtos.StartRequestReason.1
            @Override // com.google.protobuf.Internal.EnumLiteMap
            public StartRequestReason findValueByNumber(int i2) {
                return StartRequestReason.forNumber(i2);
            }
        };
        private static final StartRequestReason[] VALUES = values();

        StartRequestReason(int i2) {
            this.value = i2;
        }

        public static StartRequestReason forNumber(int i2) {
            if (i2 == 0) {
                return USER_REQUEST;
            }
            if (i2 == 1) {
                return AUTO_LAUNCH;
            }
            if (i2 != 2) {
                return null;
            }
            return AUTOMATIC_RESTART;
        }

        public static final Descriptors.EnumDescriptor getDescriptor() {
            return WifiDiscoveryProtos.getDescriptor().getEnumTypes().get(4);
        }

        public static Internal.EnumLiteMap<StartRequestReason> internalGetValueMap() {
            return internalValueMap;
        }

        @Override // com.google.protobuf.ProtocolMessageEnum
        public final Descriptors.EnumDescriptor getDescriptorForType() {
            return getDescriptor();
        }

        @Override // com.google.protobuf.ProtocolMessageEnum, com.google.protobuf.Internal.EnumLite
        public final int getNumber() {
            return this.value;
        }

        @Override // com.google.protobuf.ProtocolMessageEnum
        public final Descriptors.EnumValueDescriptor getValueDescriptor() {
            return getDescriptor().getValues().get(ordinal());
        }

        @Deprecated
        public static StartRequestReason valueOf(int i2) {
            return forNumber(i2);
        }

        public static StartRequestReason valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() == getDescriptor()) {
                return VALUES[enumValueDescriptor.getIndex()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    public enum WifiChannelType implements ProtocolMessageEnum {
        CHANNELS_5GHZ_ONLY(0),
        CHANNELS_24GHZ_ONLY(1),
        CHANNELS_DUAL_BAND(2),
        NO_CHANNELS_SUPPORTED(3);

        public static final int CHANNELS_24GHZ_ONLY_VALUE = 1;
        public static final int CHANNELS_5GHZ_ONLY_VALUE = 0;
        public static final int CHANNELS_DUAL_BAND_VALUE = 2;
        public static final int NO_CHANNELS_SUPPORTED_VALUE = 3;
        private final int value;
        private static final Internal.EnumLiteMap<WifiChannelType> internalValueMap = new Internal.EnumLiteMap<WifiChannelType>() { // from class: com.google.android.projection.proto.WifiDiscoveryProtos.WifiChannelType.1
            @Override // com.google.protobuf.Internal.EnumLiteMap
            public WifiChannelType findValueByNumber(int i2) {
                return WifiChannelType.forNumber(i2);
            }
        };
        private static final WifiChannelType[] VALUES = values();

        WifiChannelType(int i2) {
            this.value = i2;
        }

        public static WifiChannelType forNumber(int i2) {
            if (i2 == 0) {
                return CHANNELS_5GHZ_ONLY;
            }
            if (i2 == 1) {
                return CHANNELS_24GHZ_ONLY;
            }
            if (i2 == 2) {
                return CHANNELS_DUAL_BAND;
            }
            if (i2 != 3) {
                return null;
            }
            return NO_CHANNELS_SUPPORTED;
        }

        public static final Descriptors.EnumDescriptor getDescriptor() {
            return WifiDiscoveryProtos.getDescriptor().getEnumTypes().get(2);
        }

        public static Internal.EnumLiteMap<WifiChannelType> internalGetValueMap() {
            return internalValueMap;
        }

        @Override // com.google.protobuf.ProtocolMessageEnum
        public final Descriptors.EnumDescriptor getDescriptorForType() {
            return getDescriptor();
        }

        @Override // com.google.protobuf.ProtocolMessageEnum, com.google.protobuf.Internal.EnumLite
        public final int getNumber() {
            return this.value;
        }

        @Override // com.google.protobuf.ProtocolMessageEnum
        public final Descriptors.EnumValueDescriptor getValueDescriptor() {
            return getDescriptor().getValues().get(ordinal());
        }

        @Deprecated
        public static WifiChannelType valueOf(int i2) {
            return forNumber(i2);
        }

        public static WifiChannelType valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() == getDescriptor()) {
                return VALUES[enumValueDescriptor.getIndex()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    public static final class WifiConnectStatus extends GeneratedMessageV3 implements WifiConnectStatusOrBuilder {
        public static final int CONNECT_STATUS_FIELD_NUMBER = 1;
        public static final int ERROR_MESSAGE_HINT_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private int connectStatus_;
        private volatile Object errorMessageHint_;
        private byte memoizedIsInitialized;
        private static final WifiConnectStatus DEFAULT_INSTANCE = new WifiConnectStatus();

        @Deprecated
        public static final Parser<WifiConnectStatus> PARSER = new AbstractParser<WifiConnectStatus>() { // from class: com.google.android.projection.proto.WifiDiscoveryProtos.WifiConnectStatus.1
            @Override // com.google.protobuf.Parser
            public WifiConnectStatus parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
                return new WifiConnectStatus(codedInputStream, extensionRegistryLite);
            }
        };

        public static WifiConnectStatus getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return WifiDiscoveryProtos.internal_static_wifi_discovery_WifiConnectStatus_descriptor;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static WifiConnectStatus parseDelimitedFrom(InputStream inputStream) {
            return (WifiConnectStatus) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static WifiConnectStatus parseFrom(ByteBuffer byteBuffer) {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Parser<WifiConnectStatus> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof WifiConnectStatus)) {
                return super.equals(obj);
            }
            WifiConnectStatus wifiConnectStatus = (WifiConnectStatus) obj;
            if (hasConnectStatus() != wifiConnectStatus.hasConnectStatus()) {
                return false;
            }
            if ((!hasConnectStatus() || this.connectStatus_ == wifiConnectStatus.connectStatus_) && hasErrorMessageHint() == wifiConnectStatus.hasErrorMessageHint()) {
                return (!hasErrorMessageHint() || getErrorMessageHint().equals(wifiConnectStatus.getErrorMessageHint())) && this.unknownFields.equals(wifiConnectStatus.unknownFields);
            }
            return false;
        }

        @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiConnectStatusOrBuilder
        public MessageStatus getConnectStatus() {
            MessageStatus messageStatusValueOf = MessageStatus.valueOf(this.connectStatus_);
            return messageStatusValueOf == null ? MessageStatus.STATUS_UNSOLICITED_MESSAGE : messageStatusValueOf;
        }

        @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiConnectStatusOrBuilder
        public String getErrorMessageHint() {
            Object obj = this.errorMessageHint_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.errorMessageHint_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiConnectStatusOrBuilder
        public ByteString getErrorMessageHintBytes() {
            Object obj = this.errorMessageHint_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.errorMessageHint_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<WifiConnectStatus> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i2 = this.memoizedSize;
            if (i2 != -1) {
                return i2;
            }
            int iComputeEnumSize = (this.bitField0_ & 1) != 0 ? 0 + CodedOutputStream.computeEnumSize(1, this.connectStatus_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeEnumSize += GeneratedMessageV3.computeStringSize(2, this.errorMessageHint_);
            }
            int serializedSize = this.unknownFields.getSerializedSize() + iComputeEnumSize;
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiConnectStatusOrBuilder
        public boolean hasConnectStatus() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiConnectStatusOrBuilder
        public boolean hasErrorMessageHint() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i2 = this.memoizedHashCode;
            if (i2 != 0) {
                return i2;
            }
            int iHashCode = getDescriptor().hashCode() + MetricsProto.MetricsEvent.APP_SPECIAL_PERMISSION_PREMIUM_SMS_DENY;
            if (hasConnectStatus()) {
                iHashCode = m.D(iHashCode, 37, 1, 53) + this.connectStatus_;
            }
            if (hasErrorMessageHint()) {
                iHashCode = m.D(iHashCode, 37, 2, 53) + getErrorMessageHint().hashCode();
            }
            int iHashCode2 = this.unknownFields.hashCode() + (iHashCode * 29);
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return WifiDiscoveryProtos.internal_static_wifi_discovery_WifiConnectStatus_fieldAccessorTable.ensureFieldAccessorsInitialized(WifiConnectStatus.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b2 = this.memoizedIsInitialized;
            if (b2 == 1) {
                return true;
            }
            if (b2 == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
            return new WifiConnectStatus();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) {
            if ((this.bitField0_ & 1) != 0) {
                codedOutputStream.writeEnum(1, this.connectStatus_);
            }
            if ((this.bitField0_ & 2) != 0) {
                GeneratedMessageV3.writeString(codedOutputStream, 2, this.errorMessageHint_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements WifiConnectStatusOrBuilder {
            private int bitField0_;
            private int connectStatus_;
            private Object errorMessageHint_;

            public static final Descriptors.Descriptor getDescriptor() {
                return WifiDiscoveryProtos.internal_static_wifi_discovery_WifiConnectStatus_descriptor;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            public Builder clearConnectStatus() {
                this.bitField0_ &= -2;
                this.connectStatus_ = 1;
                onChanged();
                return this;
            }

            public Builder clearErrorMessageHint() {
                this.bitField0_ &= -3;
                this.errorMessageHint_ = WifiConnectStatus.getDefaultInstance().getErrorMessageHint();
                onChanged();
                return this;
            }

            @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiConnectStatusOrBuilder
            public MessageStatus getConnectStatus() {
                MessageStatus messageStatusValueOf = MessageStatus.valueOf(this.connectStatus_);
                return messageStatusValueOf == null ? MessageStatus.STATUS_UNSOLICITED_MESSAGE : messageStatusValueOf;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return WifiDiscoveryProtos.internal_static_wifi_discovery_WifiConnectStatus_descriptor;
            }

            @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiConnectStatusOrBuilder
            public String getErrorMessageHint() {
                Object obj = this.errorMessageHint_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.errorMessageHint_ = stringUtf8;
                }
                return stringUtf8;
            }

            @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiConnectStatusOrBuilder
            public ByteString getErrorMessageHintBytes() {
                Object obj = this.errorMessageHint_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.errorMessageHint_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiConnectStatusOrBuilder
            public boolean hasConnectStatus() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiConnectStatusOrBuilder
            public boolean hasErrorMessageHint() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return WifiDiscoveryProtos.internal_static_wifi_discovery_WifiConnectStatus_fieldAccessorTable.ensureFieldAccessorsInitialized(WifiConnectStatus.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public Builder setConnectStatus(MessageStatus messageStatus) {
                messageStatus.getClass();
                this.bitField0_ |= 1;
                this.connectStatus_ = messageStatus.getNumber();
                onChanged();
                return this;
            }

            public Builder setErrorMessageHint(String str) {
                str.getClass();
                this.bitField0_ |= 2;
                this.errorMessageHint_ = str;
                onChanged();
                return this;
            }

            public Builder setErrorMessageHintBytes(ByteString byteString) {
                byteString.getClass();
                this.bitField0_ |= 2;
                this.errorMessageHint_ = byteString;
                onChanged();
                return this;
            }

            private Builder() {
                this.connectStatus_ = 1;
                this.errorMessageHint_ = "";
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public WifiConnectStatus build() {
                WifiConnectStatus wifiConnectStatusBuildPartial = buildPartial();
                if (wifiConnectStatusBuildPartial.isInitialized()) {
                    return wifiConnectStatusBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) wifiConnectStatusBuildPartial);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public WifiConnectStatus buildPartial() {
                WifiConnectStatus wifiConnectStatus = new WifiConnectStatus(this);
                int i2 = this.bitField0_;
                int i3 = (i2 & 1) != 0 ? 1 : 0;
                wifiConnectStatus.connectStatus_ = this.connectStatus_;
                if ((i2 & 2) != 0) {
                    i3 |= 2;
                }
                wifiConnectStatus.errorMessageHint_ = this.errorMessageHint_;
                wifiConnectStatus.bitField0_ = i3;
                onBuilt();
                return wifiConnectStatus;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public WifiConnectStatus getDefaultInstanceForType() {
                return WifiConnectStatus.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.setField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i2, Object obj) {
                return (Builder) super.setRepeatedField(fieldDescriptor, i2, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public final Builder setUnknownFields(UnknownFieldSet unknownFieldSet) {
                return (Builder) super.setUnknownFields(unknownFieldSet);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                return (Builder) super.clearOneof(oneofDescriptor);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeUnknownFields(UnknownFieldSet unknownFieldSet) {
                return (Builder) super.mergeUnknownFields(unknownFieldSet);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.connectStatus_ = 1;
                int i2 = this.bitField0_ & (-2);
                this.errorMessageHint_ = "";
                this.bitField0_ = i2 & (-3);
                return this;
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.connectStatus_ = 1;
                this.errorMessageHint_ = "";
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* JADX INFO: renamed from: clone */
            public Builder mo58clone() {
                return (Builder) super.mo58clone();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof WifiConnectStatus) {
                    return mergeFrom((WifiConnectStatus) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(WifiConnectStatus wifiConnectStatus) {
                if (wifiConnectStatus == WifiConnectStatus.getDefaultInstance()) {
                    return this;
                }
                if (wifiConnectStatus.hasConnectStatus()) {
                    setConnectStatus(wifiConnectStatus.getConnectStatus());
                }
                if (wifiConnectStatus.hasErrorMessageHint()) {
                    this.bitField0_ |= 2;
                    this.errorMessageHint_ = wifiConnectStatus.errorMessageHint_;
                    onChanged();
                }
                mergeUnknownFields(((GeneratedMessageV3) wifiConnectStatus).unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Code duplicated, block: B:16:0x0021  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
                WifiConnectStatus wifiConnectStatus = null;
                try {
                    try {
                        WifiConnectStatus partialFrom = WifiConnectStatus.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                        if (partialFrom != null) {
                            mergeFrom(partialFrom);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e2) {
                        WifiConnectStatus wifiConnectStatus2 = (WifiConnectStatus) e2.getUnfinishedMessage();
                        try {
                            throw e2.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            wifiConnectStatus = wifiConnectStatus2;
                            if (wifiConnectStatus != null) {
                                mergeFrom(wifiConnectStatus);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (wifiConnectStatus != null) {
                        mergeFrom(wifiConnectStatus);
                    }
                    throw th;
                }
            }
        }

        public static Builder newBuilder(WifiConnectStatus wifiConnectStatus) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(wifiConnectStatus);
        }

        public static WifiConnectStatus parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        private WifiConnectStatus(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static WifiConnectStatus parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) {
            return (WifiConnectStatus) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static WifiConnectStatus parseFrom(ByteString byteString) {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public WifiConnectStatus getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        public static WifiConnectStatus parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private WifiConnectStatus() {
            this.memoizedIsInitialized = (byte) -1;
            this.connectStatus_ = 1;
            this.errorMessageHint_ = "";
        }

        public static WifiConnectStatus parseFrom(byte[] bArr) {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static WifiConnectStatus parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static WifiConnectStatus parseFrom(InputStream inputStream) {
            return (WifiConnectStatus) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private WifiConnectStatus(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
            this();
            extensionRegistryLite.getClass();
            UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
            boolean z2 = false;
            while (!z2) {
                try {
                    try {
                        int tag = codedInputStream.readTag();
                        if (tag != 0) {
                            if (tag == 8) {
                                int i2 = codedInputStream.readEnum();
                                if (MessageStatus.valueOf(i2) == null) {
                                    builderNewBuilder.mergeVarintField(1, i2);
                                } else {
                                    this.bitField0_ = 1 | this.bitField0_;
                                    this.connectStatus_ = i2;
                                }
                            } else if (tag != 18) {
                                if (!parseUnknownField(codedInputStream, builderNewBuilder, extensionRegistryLite, tag)) {
                                }
                            } else {
                                ByteString bytes = codedInputStream.readBytes();
                                this.bitField0_ |= 2;
                                this.errorMessageHint_ = bytes;
                            }
                        }
                        z2 = true;
                    } catch (InvalidProtocolBufferException e2) {
                        throw e2.setUnfinishedMessage(this);
                    } catch (IOException e3) {
                        throw new InvalidProtocolBufferException(e3).setUnfinishedMessage(this);
                    }
                } catch (Throwable th) {
                    this.unknownFields = builderNewBuilder.build();
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            this.unknownFields = builderNewBuilder.build();
            makeExtensionsImmutable();
        }

        public static WifiConnectStatus parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) {
            return (WifiConnectStatus) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static WifiConnectStatus parseFrom(CodedInputStream codedInputStream) {
            return (WifiConnectStatus) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static WifiConnectStatus parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
            return (WifiConnectStatus) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }
    }

    public interface WifiConnectStatusOrBuilder extends MessageOrBuilder {
        MessageStatus getConnectStatus();

        String getErrorMessageHint();

        ByteString getErrorMessageHintBytes();

        boolean hasConnectStatus();

        boolean hasErrorMessageHint();
    }

    public static final class WifiConnectionRejection extends GeneratedMessageV3 implements WifiConnectionRejectionOrBuilder {
        private static final WifiConnectionRejection DEFAULT_INSTANCE = new WifiConnectionRejection();

        @Deprecated
        public static final Parser<WifiConnectionRejection> PARSER = new AbstractParser<WifiConnectionRejection>() { // from class: com.google.android.projection.proto.WifiDiscoveryProtos.WifiConnectionRejection.1
            @Override // com.google.protobuf.Parser
            public WifiConnectionRejection parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
                return new WifiConnectionRejection(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int REJECTION_REASON_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private int rejectionReason_;

        public static WifiConnectionRejection getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return WifiDiscoveryProtos.internal_static_wifi_discovery_WifiConnectionRejection_descriptor;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static WifiConnectionRejection parseDelimitedFrom(InputStream inputStream) {
            return (WifiConnectionRejection) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static WifiConnectionRejection parseFrom(ByteBuffer byteBuffer) {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Parser<WifiConnectionRejection> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof WifiConnectionRejection)) {
                return super.equals(obj);
            }
            WifiConnectionRejection wifiConnectionRejection = (WifiConnectionRejection) obj;
            if (hasRejectionReason() != wifiConnectionRejection.hasRejectionReason()) {
                return false;
            }
            return (!hasRejectionReason() || this.rejectionReason_ == wifiConnectionRejection.rejectionReason_) && this.unknownFields.equals(wifiConnectionRejection.unknownFields);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<WifiConnectionRejection> getParserForType() {
            return PARSER;
        }

        @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiConnectionRejectionOrBuilder
        public ConnectionRejectionReason getRejectionReason() {
            ConnectionRejectionReason connectionRejectionReasonValueOf = ConnectionRejectionReason.valueOf(this.rejectionReason_);
            return connectionRejectionReasonValueOf == null ? ConnectionRejectionReason.CONNECTION_REJECTION_REASON_UNKNOWN : connectionRejectionReasonValueOf;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i2 = this.memoizedSize;
            if (i2 != -1) {
                return i2;
            }
            int serializedSize = this.unknownFields.getSerializedSize() + ((this.bitField0_ & 1) != 0 ? 0 + CodedOutputStream.computeEnumSize(1, this.rejectionReason_) : 0);
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiConnectionRejectionOrBuilder
        public boolean hasRejectionReason() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i2 = this.memoizedHashCode;
            if (i2 != 0) {
                return i2;
            }
            int iHashCode = getDescriptor().hashCode() + MetricsProto.MetricsEvent.APP_SPECIAL_PERMISSION_PREMIUM_SMS_DENY;
            if (hasRejectionReason()) {
                iHashCode = m.D(iHashCode, 37, 1, 53) + this.rejectionReason_;
            }
            int iHashCode2 = this.unknownFields.hashCode() + (iHashCode * 29);
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return WifiDiscoveryProtos.internal_static_wifi_discovery_WifiConnectionRejection_fieldAccessorTable.ensureFieldAccessorsInitialized(WifiConnectionRejection.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b2 = this.memoizedIsInitialized;
            if (b2 == 1) {
                return true;
            }
            if (b2 == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
            return new WifiConnectionRejection();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) {
            if ((this.bitField0_ & 1) != 0) {
                codedOutputStream.writeEnum(1, this.rejectionReason_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements WifiConnectionRejectionOrBuilder {
            private int bitField0_;
            private int rejectionReason_;

            public static final Descriptors.Descriptor getDescriptor() {
                return WifiDiscoveryProtos.internal_static_wifi_discovery_WifiConnectionRejection_descriptor;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            public Builder clearRejectionReason() {
                this.bitField0_ &= -2;
                this.rejectionReason_ = 0;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return WifiDiscoveryProtos.internal_static_wifi_discovery_WifiConnectionRejection_descriptor;
            }

            @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiConnectionRejectionOrBuilder
            public ConnectionRejectionReason getRejectionReason() {
                ConnectionRejectionReason connectionRejectionReasonValueOf = ConnectionRejectionReason.valueOf(this.rejectionReason_);
                return connectionRejectionReasonValueOf == null ? ConnectionRejectionReason.CONNECTION_REJECTION_REASON_UNKNOWN : connectionRejectionReasonValueOf;
            }

            @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiConnectionRejectionOrBuilder
            public boolean hasRejectionReason() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return WifiDiscoveryProtos.internal_static_wifi_discovery_WifiConnectionRejection_fieldAccessorTable.ensureFieldAccessorsInitialized(WifiConnectionRejection.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public Builder setRejectionReason(ConnectionRejectionReason connectionRejectionReason) {
                connectionRejectionReason.getClass();
                this.bitField0_ |= 1;
                this.rejectionReason_ = connectionRejectionReason.getNumber();
                onChanged();
                return this;
            }

            private Builder() {
                this.rejectionReason_ = 0;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public WifiConnectionRejection build() {
                WifiConnectionRejection wifiConnectionRejectionBuildPartial = buildPartial();
                if (wifiConnectionRejectionBuildPartial.isInitialized()) {
                    return wifiConnectionRejectionBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) wifiConnectionRejectionBuildPartial);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public WifiConnectionRejection buildPartial() {
                WifiConnectionRejection wifiConnectionRejection = new WifiConnectionRejection(this);
                int i2 = (this.bitField0_ & 1) == 0 ? 0 : 1;
                wifiConnectionRejection.rejectionReason_ = this.rejectionReason_;
                wifiConnectionRejection.bitField0_ = i2;
                onBuilt();
                return wifiConnectionRejection;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public WifiConnectionRejection getDefaultInstanceForType() {
                return WifiConnectionRejection.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.setField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i2, Object obj) {
                return (Builder) super.setRepeatedField(fieldDescriptor, i2, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public final Builder setUnknownFields(UnknownFieldSet unknownFieldSet) {
                return (Builder) super.setUnknownFields(unknownFieldSet);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                return (Builder) super.clearOneof(oneofDescriptor);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeUnknownFields(UnknownFieldSet unknownFieldSet) {
                return (Builder) super.mergeUnknownFields(unknownFieldSet);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.rejectionReason_ = 0;
                this.bitField0_ &= -2;
                return this;
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.rejectionReason_ = 0;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* JADX INFO: renamed from: clone */
            public Builder mo58clone() {
                return (Builder) super.mo58clone();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof WifiConnectionRejection) {
                    return mergeFrom((WifiConnectionRejection) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(WifiConnectionRejection wifiConnectionRejection) {
                if (wifiConnectionRejection == WifiConnectionRejection.getDefaultInstance()) {
                    return this;
                }
                if (wifiConnectionRejection.hasRejectionReason()) {
                    setRejectionReason(wifiConnectionRejection.getRejectionReason());
                }
                mergeUnknownFields(((GeneratedMessageV3) wifiConnectionRejection).unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Code duplicated, block: B:16:0x0021  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
                WifiConnectionRejection wifiConnectionRejection = null;
                try {
                    try {
                        WifiConnectionRejection partialFrom = WifiConnectionRejection.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                        if (partialFrom != null) {
                            mergeFrom(partialFrom);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e2) {
                        WifiConnectionRejection wifiConnectionRejection2 = (WifiConnectionRejection) e2.getUnfinishedMessage();
                        try {
                            throw e2.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            wifiConnectionRejection = wifiConnectionRejection2;
                            if (wifiConnectionRejection != null) {
                                mergeFrom(wifiConnectionRejection);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (wifiConnectionRejection != null) {
                        mergeFrom(wifiConnectionRejection);
                    }
                    throw th;
                }
            }
        }

        public static Builder newBuilder(WifiConnectionRejection wifiConnectionRejection) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(wifiConnectionRejection);
        }

        public static WifiConnectionRejection parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        private WifiConnectionRejection(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static WifiConnectionRejection parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) {
            return (WifiConnectionRejection) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static WifiConnectionRejection parseFrom(ByteString byteString) {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public WifiConnectionRejection getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        public static WifiConnectionRejection parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private WifiConnectionRejection() {
            this.memoizedIsInitialized = (byte) -1;
            this.rejectionReason_ = 0;
        }

        public static WifiConnectionRejection parseFrom(byte[] bArr) {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static WifiConnectionRejection parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static WifiConnectionRejection parseFrom(InputStream inputStream) {
            return (WifiConnectionRejection) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private WifiConnectionRejection(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
            this();
            extensionRegistryLite.getClass();
            UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
            boolean z2 = false;
            while (!z2) {
                try {
                    try {
                        int tag = codedInputStream.readTag();
                        if (tag != 0) {
                            if (tag != 8) {
                                if (!parseUnknownField(codedInputStream, builderNewBuilder, extensionRegistryLite, tag)) {
                                }
                            } else {
                                int i2 = codedInputStream.readEnum();
                                if (ConnectionRejectionReason.valueOf(i2) == null) {
                                    builderNewBuilder.mergeVarintField(1, i2);
                                } else {
                                    this.bitField0_ = 1 | this.bitField0_;
                                    this.rejectionReason_ = i2;
                                }
                            }
                        }
                        z2 = true;
                    } catch (InvalidProtocolBufferException e2) {
                        throw e2.setUnfinishedMessage(this);
                    } catch (IOException e3) {
                        throw new InvalidProtocolBufferException(e3).setUnfinishedMessage(this);
                    }
                } catch (Throwable th) {
                    this.unknownFields = builderNewBuilder.build();
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            this.unknownFields = builderNewBuilder.build();
            makeExtensionsImmutable();
        }

        public static WifiConnectionRejection parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) {
            return (WifiConnectionRejection) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static WifiConnectionRejection parseFrom(CodedInputStream codedInputStream) {
            return (WifiConnectionRejection) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static WifiConnectionRejection parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
            return (WifiConnectionRejection) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }
    }

    public interface WifiConnectionRejectionOrBuilder extends MessageOrBuilder {
        ConnectionRejectionReason getRejectionReason();

        boolean hasRejectionReason();
    }

    public enum WifiConstants implements ProtocolMessageEnum {
        PROTOCOL_MAJOR_VERSION(4),
        PROTOCOL_MINOR_VERSION(3);

        public static final int PROTOCOL_MAJOR_VERSION_VALUE = 4;
        public static final int PROTOCOL_MINOR_VERSION_VALUE = 3;
        private final int value;
        private static final Internal.EnumLiteMap<WifiConstants> internalValueMap = new Internal.EnumLiteMap<WifiConstants>() { // from class: com.google.android.projection.proto.WifiDiscoveryProtos.WifiConstants.1
            @Override // com.google.protobuf.Internal.EnumLiteMap
            public WifiConstants findValueByNumber(int i2) {
                return WifiConstants.forNumber(i2);
            }
        };
        private static final WifiConstants[] VALUES = values();

        WifiConstants(int i2) {
            this.value = i2;
        }

        public static WifiConstants forNumber(int i2) {
            if (i2 == 3) {
                return PROTOCOL_MINOR_VERSION;
            }
            if (i2 != 4) {
                return null;
            }
            return PROTOCOL_MAJOR_VERSION;
        }

        public static final Descriptors.EnumDescriptor getDescriptor() {
            return WifiDiscoveryProtos.getDescriptor().getEnumTypes().get(7);
        }

        public static Internal.EnumLiteMap<WifiConstants> internalGetValueMap() {
            return internalValueMap;
        }

        @Override // com.google.protobuf.ProtocolMessageEnum
        public final Descriptors.EnumDescriptor getDescriptorForType() {
            return getDescriptor();
        }

        @Override // com.google.protobuf.ProtocolMessageEnum, com.google.protobuf.Internal.EnumLite
        public final int getNumber() {
            return this.value;
        }

        @Override // com.google.protobuf.ProtocolMessageEnum
        public final Descriptors.EnumValueDescriptor getValueDescriptor() {
            return getDescriptor().getValues().get(ordinal());
        }

        @Deprecated
        public static WifiConstants valueOf(int i2) {
            return forNumber(i2);
        }

        public static WifiConstants valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() == getDescriptor()) {
                return VALUES[enumValueDescriptor.getIndex()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    public static final class WifiInfoRequest extends GeneratedMessageV3 implements WifiInfoRequestOrBuilder {
        private static final WifiInfoRequest DEFAULT_INSTANCE = new WifiInfoRequest();

        @Deprecated
        public static final Parser<WifiInfoRequest> PARSER = new AbstractParser<WifiInfoRequest>() { // from class: com.google.android.projection.proto.WifiDiscoveryProtos.WifiInfoRequest.1
            @Override // com.google.protobuf.Parser
            public WifiInfoRequest parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
                return new WifiInfoRequest(codedInputStream, extensionRegistryLite);
            }
        };
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;

        public static WifiInfoRequest getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return WifiDiscoveryProtos.internal_static_wifi_discovery_WifiInfoRequest_descriptor;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static WifiInfoRequest parseDelimitedFrom(InputStream inputStream) {
            return (WifiInfoRequest) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static WifiInfoRequest parseFrom(ByteBuffer byteBuffer) {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Parser<WifiInfoRequest> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj instanceof WifiInfoRequest) {
                return this.unknownFields.equals(((WifiInfoRequest) obj).unknownFields);
            }
            return super.equals(obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<WifiInfoRequest> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i2 = this.memoizedSize;
            if (i2 != -1) {
                return i2;
            }
            int serializedSize = this.unknownFields.getSerializedSize() + 0;
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i2 = this.memoizedHashCode;
            if (i2 != 0) {
                return i2;
            }
            int iHashCode = this.unknownFields.hashCode() + ((getDescriptor().hashCode() + MetricsProto.MetricsEvent.APP_SPECIAL_PERMISSION_PREMIUM_SMS_DENY) * 29);
            this.memoizedHashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return WifiDiscoveryProtos.internal_static_wifi_discovery_WifiInfoRequest_fieldAccessorTable.ensureFieldAccessorsInitialized(WifiInfoRequest.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b2 = this.memoizedIsInitialized;
            if (b2 == 1) {
                return true;
            }
            if (b2 == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
            return new WifiInfoRequest();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) {
            this.unknownFields.writeTo(codedOutputStream);
        }

        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements WifiInfoRequestOrBuilder {
            public static final Descriptors.Descriptor getDescriptor() {
                return WifiDiscoveryProtos.internal_static_wifi_discovery_WifiInfoRequest_descriptor;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return WifiDiscoveryProtos.internal_static_wifi_discovery_WifiInfoRequest_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return WifiDiscoveryProtos.internal_static_wifi_discovery_WifiInfoRequest_fieldAccessorTable.ensureFieldAccessorsInitialized(WifiInfoRequest.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            private Builder() {
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public WifiInfoRequest build() {
                WifiInfoRequest wifiInfoRequestBuildPartial = buildPartial();
                if (wifiInfoRequestBuildPartial.isInitialized()) {
                    return wifiInfoRequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) wifiInfoRequestBuildPartial);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public WifiInfoRequest buildPartial() {
                WifiInfoRequest wifiInfoRequest = new WifiInfoRequest(this);
                onBuilt();
                return wifiInfoRequest;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public WifiInfoRequest getDefaultInstanceForType() {
                return WifiInfoRequest.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.setField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i2, Object obj) {
                return (Builder) super.setRepeatedField(fieldDescriptor, i2, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public final Builder setUnknownFields(UnknownFieldSet unknownFieldSet) {
                return (Builder) super.setUnknownFields(unknownFieldSet);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                return (Builder) super.clearOneof(oneofDescriptor);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeUnknownFields(UnknownFieldSet unknownFieldSet) {
                return (Builder) super.mergeUnknownFields(unknownFieldSet);
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* JADX INFO: renamed from: clone */
            public Builder mo58clone() {
                return (Builder) super.mo58clone();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof WifiInfoRequest) {
                    return mergeFrom((WifiInfoRequest) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(WifiInfoRequest wifiInfoRequest) {
                if (wifiInfoRequest == WifiInfoRequest.getDefaultInstance()) {
                    return this;
                }
                mergeUnknownFields(((GeneratedMessageV3) wifiInfoRequest).unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Code duplicated, block: B:16:0x0021  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
                WifiInfoRequest wifiInfoRequest = null;
                try {
                    try {
                        WifiInfoRequest partialFrom = WifiInfoRequest.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                        if (partialFrom != null) {
                            mergeFrom(partialFrom);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e2) {
                        WifiInfoRequest wifiInfoRequest2 = (WifiInfoRequest) e2.getUnfinishedMessage();
                        try {
                            throw e2.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            wifiInfoRequest = wifiInfoRequest2;
                            if (wifiInfoRequest != null) {
                                mergeFrom(wifiInfoRequest);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (wifiInfoRequest != null) {
                        mergeFrom(wifiInfoRequest);
                    }
                    throw th;
                }
            }
        }

        public static Builder newBuilder(WifiInfoRequest wifiInfoRequest) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(wifiInfoRequest);
        }

        public static WifiInfoRequest parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        private WifiInfoRequest(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static WifiInfoRequest parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) {
            return (WifiInfoRequest) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static WifiInfoRequest parseFrom(ByteString byteString) {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public WifiInfoRequest getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        public static WifiInfoRequest parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private WifiInfoRequest() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static WifiInfoRequest parseFrom(byte[] bArr) {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static WifiInfoRequest parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        private WifiInfoRequest(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
            this();
            extensionRegistryLite.getClass();
            UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
            boolean z2 = false;
            while (!z2) {
                try {
                    try {
                        try {
                            int tag = codedInputStream.readTag();
                            if (tag == 0 || !parseUnknownField(codedInputStream, builderNewBuilder, extensionRegistryLite, tag)) {
                                z2 = true;
                            }
                        } catch (InvalidProtocolBufferException e2) {
                            throw e2.setUnfinishedMessage(this);
                        }
                    } catch (IOException e3) {
                        throw new InvalidProtocolBufferException(e3).setUnfinishedMessage(this);
                    }
                } catch (Throwable th) {
                    this.unknownFields = builderNewBuilder.build();
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            this.unknownFields = builderNewBuilder.build();
            makeExtensionsImmutable();
        }

        public static WifiInfoRequest parseFrom(InputStream inputStream) {
            return (WifiInfoRequest) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static WifiInfoRequest parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) {
            return (WifiInfoRequest) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static WifiInfoRequest parseFrom(CodedInputStream codedInputStream) {
            return (WifiInfoRequest) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static WifiInfoRequest parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
            return (WifiInfoRequest) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }
    }

    public interface WifiInfoRequestOrBuilder extends MessageOrBuilder {
    }

    public static final class WifiInfoResponse extends GeneratedMessageV3 implements WifiInfoResponseOrBuilder {
        public static final int ACCESS_POINT_TYPE_FIELD_NUMBER = 5;
        private static final WifiInfoResponse DEFAULT_INSTANCE = new WifiInfoResponse();

        @Deprecated
        public static final Parser<WifiInfoResponse> PARSER = new AbstractParser<WifiInfoResponse>() { // from class: com.google.android.projection.proto.WifiDiscoveryProtos.WifiInfoResponse.1
            @Override // com.google.protobuf.Parser
            public WifiInfoResponse parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
                return new WifiInfoResponse(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int WIFI_BSSID_FIELD_NUMBER = 3;
        public static final int WIFI_PASSWORD_FIELD_NUMBER = 2;
        public static final int WIFI_SECURITY_MODE_FIELD_NUMBER = 4;
        public static final int WIFI_SSID_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private int accessPointType_;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private volatile Object wifiBssid_;
        private volatile Object wifiPassword_;
        private int wifiSecurityMode_;
        private volatile Object wifiSsid_;

        public static WifiInfoResponse getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return WifiDiscoveryProtos.internal_static_wifi_discovery_WifiInfoResponse_descriptor;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static WifiInfoResponse parseDelimitedFrom(InputStream inputStream) {
            return (WifiInfoResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static WifiInfoResponse parseFrom(ByteBuffer byteBuffer) {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Parser<WifiInfoResponse> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof WifiInfoResponse)) {
                return super.equals(obj);
            }
            WifiInfoResponse wifiInfoResponse = (WifiInfoResponse) obj;
            if (hasWifiSsid() != wifiInfoResponse.hasWifiSsid()) {
                return false;
            }
            if ((hasWifiSsid() && !getWifiSsid().equals(wifiInfoResponse.getWifiSsid())) || hasWifiPassword() != wifiInfoResponse.hasWifiPassword()) {
                return false;
            }
            if ((hasWifiPassword() && !getWifiPassword().equals(wifiInfoResponse.getWifiPassword())) || hasWifiBssid() != wifiInfoResponse.hasWifiBssid()) {
                return false;
            }
            if ((hasWifiBssid() && !getWifiBssid().equals(wifiInfoResponse.getWifiBssid())) || hasWifiSecurityMode() != wifiInfoResponse.hasWifiSecurityMode()) {
                return false;
            }
            if ((!hasWifiSecurityMode() || this.wifiSecurityMode_ == wifiInfoResponse.wifiSecurityMode_) && hasAccessPointType() == wifiInfoResponse.hasAccessPointType()) {
                return (!hasAccessPointType() || this.accessPointType_ == wifiInfoResponse.accessPointType_) && this.unknownFields.equals(wifiInfoResponse.unknownFields);
            }
            return false;
        }

        @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiInfoResponseOrBuilder
        public AccessPointType getAccessPointType() {
            AccessPointType accessPointTypeValueOf = AccessPointType.valueOf(this.accessPointType_);
            return accessPointTypeValueOf == null ? AccessPointType.STATIC : accessPointTypeValueOf;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<WifiInfoResponse> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i2 = this.memoizedSize;
            if (i2 != -1) {
                return i2;
            }
            int iComputeStringSize = (this.bitField0_ & 1) != 0 ? 0 + GeneratedMessageV3.computeStringSize(1, this.wifiSsid_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeStringSize += GeneratedMessageV3.computeStringSize(2, this.wifiPassword_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeStringSize += GeneratedMessageV3.computeStringSize(3, this.wifiBssid_);
            }
            if ((this.bitField0_ & 8) != 0) {
                iComputeStringSize += CodedOutputStream.computeEnumSize(4, this.wifiSecurityMode_);
            }
            if ((this.bitField0_ & 16) != 0) {
                iComputeStringSize += CodedOutputStream.computeEnumSize(5, this.accessPointType_);
            }
            int serializedSize = this.unknownFields.getSerializedSize() + iComputeStringSize;
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiInfoResponseOrBuilder
        public String getWifiBssid() {
            Object obj = this.wifiBssid_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.wifiBssid_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiInfoResponseOrBuilder
        public ByteString getWifiBssidBytes() {
            Object obj = this.wifiBssid_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.wifiBssid_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiInfoResponseOrBuilder
        public String getWifiPassword() {
            Object obj = this.wifiPassword_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.wifiPassword_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiInfoResponseOrBuilder
        public ByteString getWifiPasswordBytes() {
            Object obj = this.wifiPassword_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.wifiPassword_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiInfoResponseOrBuilder
        public WifiSecurityMode getWifiSecurityMode() {
            WifiSecurityMode wifiSecurityModeValueOf = WifiSecurityMode.valueOf(this.wifiSecurityMode_);
            return wifiSecurityModeValueOf == null ? WifiSecurityMode.UNKNOWN_SECURITY_MODE : wifiSecurityModeValueOf;
        }

        @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiInfoResponseOrBuilder
        public String getWifiSsid() {
            Object obj = this.wifiSsid_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.wifiSsid_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiInfoResponseOrBuilder
        public ByteString getWifiSsidBytes() {
            Object obj = this.wifiSsid_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.wifiSsid_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiInfoResponseOrBuilder
        public boolean hasAccessPointType() {
            return (this.bitField0_ & 16) != 0;
        }

        @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiInfoResponseOrBuilder
        public boolean hasWifiBssid() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiInfoResponseOrBuilder
        public boolean hasWifiPassword() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiInfoResponseOrBuilder
        public boolean hasWifiSecurityMode() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiInfoResponseOrBuilder
        public boolean hasWifiSsid() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i2 = this.memoizedHashCode;
            if (i2 != 0) {
                return i2;
            }
            int iHashCode = getDescriptor().hashCode() + MetricsProto.MetricsEvent.APP_SPECIAL_PERMISSION_PREMIUM_SMS_DENY;
            if (hasWifiSsid()) {
                iHashCode = m.D(iHashCode, 37, 1, 53) + getWifiSsid().hashCode();
            }
            if (hasWifiPassword()) {
                iHashCode = m.D(iHashCode, 37, 2, 53) + getWifiPassword().hashCode();
            }
            if (hasWifiBssid()) {
                iHashCode = m.D(iHashCode, 37, 3, 53) + getWifiBssid().hashCode();
            }
            if (hasWifiSecurityMode()) {
                iHashCode = m.D(iHashCode, 37, 4, 53) + this.wifiSecurityMode_;
            }
            if (hasAccessPointType()) {
                iHashCode = m.D(iHashCode, 37, 5, 53) + this.accessPointType_;
            }
            int iHashCode2 = this.unknownFields.hashCode() + (iHashCode * 29);
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return WifiDiscoveryProtos.internal_static_wifi_discovery_WifiInfoResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(WifiInfoResponse.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b2 = this.memoizedIsInitialized;
            if (b2 == 1) {
                return true;
            }
            if (b2 == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
            return new WifiInfoResponse();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) {
            if ((this.bitField0_ & 1) != 0) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.wifiSsid_);
            }
            if ((this.bitField0_ & 2) != 0) {
                GeneratedMessageV3.writeString(codedOutputStream, 2, this.wifiPassword_);
            }
            if ((this.bitField0_ & 4) != 0) {
                GeneratedMessageV3.writeString(codedOutputStream, 3, this.wifiBssid_);
            }
            if ((this.bitField0_ & 8) != 0) {
                codedOutputStream.writeEnum(4, this.wifiSecurityMode_);
            }
            if ((this.bitField0_ & 16) != 0) {
                codedOutputStream.writeEnum(5, this.accessPointType_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements WifiInfoResponseOrBuilder {
            private int accessPointType_;
            private int bitField0_;
            private Object wifiBssid_;
            private Object wifiPassword_;
            private int wifiSecurityMode_;
            private Object wifiSsid_;

            public static final Descriptors.Descriptor getDescriptor() {
                return WifiDiscoveryProtos.internal_static_wifi_discovery_WifiInfoResponse_descriptor;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            public Builder clearAccessPointType() {
                this.bitField0_ &= -17;
                this.accessPointType_ = 0;
                onChanged();
                return this;
            }

            public Builder clearWifiBssid() {
                this.bitField0_ &= -5;
                this.wifiBssid_ = WifiInfoResponse.getDefaultInstance().getWifiBssid();
                onChanged();
                return this;
            }

            public Builder clearWifiPassword() {
                this.bitField0_ &= -3;
                this.wifiPassword_ = WifiInfoResponse.getDefaultInstance().getWifiPassword();
                onChanged();
                return this;
            }

            public Builder clearWifiSecurityMode() {
                this.bitField0_ &= -9;
                this.wifiSecurityMode_ = 0;
                onChanged();
                return this;
            }

            public Builder clearWifiSsid() {
                this.bitField0_ &= -2;
                this.wifiSsid_ = WifiInfoResponse.getDefaultInstance().getWifiSsid();
                onChanged();
                return this;
            }

            @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiInfoResponseOrBuilder
            public AccessPointType getAccessPointType() {
                AccessPointType accessPointTypeValueOf = AccessPointType.valueOf(this.accessPointType_);
                return accessPointTypeValueOf == null ? AccessPointType.STATIC : accessPointTypeValueOf;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return WifiDiscoveryProtos.internal_static_wifi_discovery_WifiInfoResponse_descriptor;
            }

            @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiInfoResponseOrBuilder
            public String getWifiBssid() {
                Object obj = this.wifiBssid_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.wifiBssid_ = stringUtf8;
                }
                return stringUtf8;
            }

            @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiInfoResponseOrBuilder
            public ByteString getWifiBssidBytes() {
                Object obj = this.wifiBssid_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.wifiBssid_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiInfoResponseOrBuilder
            public String getWifiPassword() {
                Object obj = this.wifiPassword_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.wifiPassword_ = stringUtf8;
                }
                return stringUtf8;
            }

            @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiInfoResponseOrBuilder
            public ByteString getWifiPasswordBytes() {
                Object obj = this.wifiPassword_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.wifiPassword_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiInfoResponseOrBuilder
            public WifiSecurityMode getWifiSecurityMode() {
                WifiSecurityMode wifiSecurityModeValueOf = WifiSecurityMode.valueOf(this.wifiSecurityMode_);
                return wifiSecurityModeValueOf == null ? WifiSecurityMode.UNKNOWN_SECURITY_MODE : wifiSecurityModeValueOf;
            }

            @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiInfoResponseOrBuilder
            public String getWifiSsid() {
                Object obj = this.wifiSsid_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.wifiSsid_ = stringUtf8;
                }
                return stringUtf8;
            }

            @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiInfoResponseOrBuilder
            public ByteString getWifiSsidBytes() {
                Object obj = this.wifiSsid_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.wifiSsid_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiInfoResponseOrBuilder
            public boolean hasAccessPointType() {
                return (this.bitField0_ & 16) != 0;
            }

            @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiInfoResponseOrBuilder
            public boolean hasWifiBssid() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiInfoResponseOrBuilder
            public boolean hasWifiPassword() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiInfoResponseOrBuilder
            public boolean hasWifiSecurityMode() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiInfoResponseOrBuilder
            public boolean hasWifiSsid() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return WifiDiscoveryProtos.internal_static_wifi_discovery_WifiInfoResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(WifiInfoResponse.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public Builder setAccessPointType(AccessPointType accessPointType) {
                accessPointType.getClass();
                this.bitField0_ |= 16;
                this.accessPointType_ = accessPointType.getNumber();
                onChanged();
                return this;
            }

            public Builder setWifiBssid(String str) {
                str.getClass();
                this.bitField0_ |= 4;
                this.wifiBssid_ = str;
                onChanged();
                return this;
            }

            public Builder setWifiBssidBytes(ByteString byteString) {
                byteString.getClass();
                this.bitField0_ |= 4;
                this.wifiBssid_ = byteString;
                onChanged();
                return this;
            }

            public Builder setWifiPassword(String str) {
                str.getClass();
                this.bitField0_ |= 2;
                this.wifiPassword_ = str;
                onChanged();
                return this;
            }

            public Builder setWifiPasswordBytes(ByteString byteString) {
                byteString.getClass();
                this.bitField0_ |= 2;
                this.wifiPassword_ = byteString;
                onChanged();
                return this;
            }

            public Builder setWifiSecurityMode(WifiSecurityMode wifiSecurityMode) {
                wifiSecurityMode.getClass();
                this.bitField0_ |= 8;
                this.wifiSecurityMode_ = wifiSecurityMode.getNumber();
                onChanged();
                return this;
            }

            public Builder setWifiSsid(String str) {
                str.getClass();
                this.bitField0_ |= 1;
                this.wifiSsid_ = str;
                onChanged();
                return this;
            }

            public Builder setWifiSsidBytes(ByteString byteString) {
                byteString.getClass();
                this.bitField0_ |= 1;
                this.wifiSsid_ = byteString;
                onChanged();
                return this;
            }

            private Builder() {
                this.wifiSsid_ = "";
                this.wifiPassword_ = "";
                this.wifiBssid_ = "";
                this.wifiSecurityMode_ = 0;
                this.accessPointType_ = 0;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public WifiInfoResponse build() {
                WifiInfoResponse wifiInfoResponseBuildPartial = buildPartial();
                if (wifiInfoResponseBuildPartial.isInitialized()) {
                    return wifiInfoResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) wifiInfoResponseBuildPartial);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public WifiInfoResponse buildPartial() {
                WifiInfoResponse wifiInfoResponse = new WifiInfoResponse(this);
                int i2 = this.bitField0_;
                int i3 = (i2 & 1) != 0 ? 1 : 0;
                wifiInfoResponse.wifiSsid_ = this.wifiSsid_;
                if ((i2 & 2) != 0) {
                    i3 |= 2;
                }
                wifiInfoResponse.wifiPassword_ = this.wifiPassword_;
                if ((i2 & 4) != 0) {
                    i3 |= 4;
                }
                wifiInfoResponse.wifiBssid_ = this.wifiBssid_;
                if ((i2 & 8) != 0) {
                    i3 |= 8;
                }
                wifiInfoResponse.wifiSecurityMode_ = this.wifiSecurityMode_;
                if ((i2 & 16) != 0) {
                    i3 |= 16;
                }
                wifiInfoResponse.accessPointType_ = this.accessPointType_;
                wifiInfoResponse.bitField0_ = i3;
                onBuilt();
                return wifiInfoResponse;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public WifiInfoResponse getDefaultInstanceForType() {
                return WifiInfoResponse.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.setField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i2, Object obj) {
                return (Builder) super.setRepeatedField(fieldDescriptor, i2, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public final Builder setUnknownFields(UnknownFieldSet unknownFieldSet) {
                return (Builder) super.setUnknownFields(unknownFieldSet);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                return (Builder) super.clearOneof(oneofDescriptor);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeUnknownFields(UnknownFieldSet unknownFieldSet) {
                return (Builder) super.mergeUnknownFields(unknownFieldSet);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.wifiSsid_ = "";
                int i2 = this.bitField0_ & (-2);
                this.wifiPassword_ = "";
                this.wifiBssid_ = "";
                this.wifiSecurityMode_ = 0;
                this.accessPointType_ = 0;
                this.bitField0_ = i2 & (-3) & (-5) & (-9) & (-17);
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* JADX INFO: renamed from: clone */
            public Builder mo58clone() {
                return (Builder) super.mo58clone();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof WifiInfoResponse) {
                    return mergeFrom((WifiInfoResponse) message);
                }
                super.mergeFrom(message);
                return this;
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.wifiSsid_ = "";
                this.wifiPassword_ = "";
                this.wifiBssid_ = "";
                this.wifiSecurityMode_ = 0;
                this.accessPointType_ = 0;
                maybeForceBuilderInitialization();
            }

            public Builder mergeFrom(WifiInfoResponse wifiInfoResponse) {
                if (wifiInfoResponse == WifiInfoResponse.getDefaultInstance()) {
                    return this;
                }
                if (wifiInfoResponse.hasWifiSsid()) {
                    this.bitField0_ |= 1;
                    this.wifiSsid_ = wifiInfoResponse.wifiSsid_;
                    onChanged();
                }
                if (wifiInfoResponse.hasWifiPassword()) {
                    this.bitField0_ |= 2;
                    this.wifiPassword_ = wifiInfoResponse.wifiPassword_;
                    onChanged();
                }
                if (wifiInfoResponse.hasWifiBssid()) {
                    this.bitField0_ |= 4;
                    this.wifiBssid_ = wifiInfoResponse.wifiBssid_;
                    onChanged();
                }
                if (wifiInfoResponse.hasWifiSecurityMode()) {
                    setWifiSecurityMode(wifiInfoResponse.getWifiSecurityMode());
                }
                if (wifiInfoResponse.hasAccessPointType()) {
                    setAccessPointType(wifiInfoResponse.getAccessPointType());
                }
                mergeUnknownFields(((GeneratedMessageV3) wifiInfoResponse).unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Code duplicated, block: B:16:0x0021  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
                WifiInfoResponse wifiInfoResponse = null;
                try {
                    try {
                        WifiInfoResponse partialFrom = WifiInfoResponse.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                        if (partialFrom != null) {
                            mergeFrom(partialFrom);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e2) {
                        WifiInfoResponse wifiInfoResponse2 = (WifiInfoResponse) e2.getUnfinishedMessage();
                        try {
                            throw e2.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            wifiInfoResponse = wifiInfoResponse2;
                            if (wifiInfoResponse != null) {
                                mergeFrom(wifiInfoResponse);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (wifiInfoResponse != null) {
                        mergeFrom(wifiInfoResponse);
                    }
                    throw th;
                }
            }
        }

        public static Builder newBuilder(WifiInfoResponse wifiInfoResponse) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(wifiInfoResponse);
        }

        public static WifiInfoResponse parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        private WifiInfoResponse(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static WifiInfoResponse parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) {
            return (WifiInfoResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static WifiInfoResponse parseFrom(ByteString byteString) {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public WifiInfoResponse getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        public static WifiInfoResponse parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private WifiInfoResponse() {
            this.memoizedIsInitialized = (byte) -1;
            this.wifiSsid_ = "";
            this.wifiPassword_ = "";
            this.wifiBssid_ = "";
            this.wifiSecurityMode_ = 0;
            this.accessPointType_ = 0;
        }

        public static WifiInfoResponse parseFrom(byte[] bArr) {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static WifiInfoResponse parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static WifiInfoResponse parseFrom(InputStream inputStream) {
            return (WifiInfoResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static WifiInfoResponse parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) {
            return (WifiInfoResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static WifiInfoResponse parseFrom(CodedInputStream codedInputStream) {
            return (WifiInfoResponse) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        private WifiInfoResponse(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
            this();
            extensionRegistryLite.getClass();
            UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
            boolean z2 = false;
            while (!z2) {
                try {
                    try {
                        int tag = codedInputStream.readTag();
                        if (tag != 0) {
                            if (tag == 10) {
                                ByteString bytes = codedInputStream.readBytes();
                                this.bitField0_ = 1 | this.bitField0_;
                                this.wifiSsid_ = bytes;
                            } else if (tag == 18) {
                                ByteString bytes2 = codedInputStream.readBytes();
                                this.bitField0_ |= 2;
                                this.wifiPassword_ = bytes2;
                            } else if (tag == 26) {
                                ByteString bytes3 = codedInputStream.readBytes();
                                this.bitField0_ |= 4;
                                this.wifiBssid_ = bytes3;
                            } else if (tag == 32) {
                                int i2 = codedInputStream.readEnum();
                                if (WifiSecurityMode.valueOf(i2) == null) {
                                    builderNewBuilder.mergeVarintField(4, i2);
                                } else {
                                    this.bitField0_ |= 8;
                                    this.wifiSecurityMode_ = i2;
                                }
                            } else if (tag != 40) {
                                if (!parseUnknownField(codedInputStream, builderNewBuilder, extensionRegistryLite, tag)) {
                                }
                            } else {
                                int i3 = codedInputStream.readEnum();
                                if (AccessPointType.valueOf(i3) == null) {
                                    builderNewBuilder.mergeVarintField(5, i3);
                                } else {
                                    this.bitField0_ |= 16;
                                    this.accessPointType_ = i3;
                                }
                            }
                        }
                        z2 = true;
                    } catch (InvalidProtocolBufferException e2) {
                        throw e2.setUnfinishedMessage(this);
                    } catch (IOException e3) {
                        throw new InvalidProtocolBufferException(e3).setUnfinishedMessage(this);
                    }
                } catch (Throwable th) {
                    this.unknownFields = builderNewBuilder.build();
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            this.unknownFields = builderNewBuilder.build();
            makeExtensionsImmutable();
        }

        public static WifiInfoResponse parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
            return (WifiInfoResponse) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }
    }

    public interface WifiInfoResponseOrBuilder extends MessageOrBuilder {
        AccessPointType getAccessPointType();

        String getWifiBssid();

        ByteString getWifiBssidBytes();

        String getWifiPassword();

        ByteString getWifiPasswordBytes();

        WifiSecurityMode getWifiSecurityMode();

        String getWifiSsid();

        ByteString getWifiSsidBytes();

        boolean hasAccessPointType();

        boolean hasWifiBssid();

        boolean hasWifiPassword();

        boolean hasWifiSecurityMode();

        boolean hasWifiSsid();
    }

    public enum WifiMessageType implements ProtocolMessageEnum {
        MESSAGE_WIFI_REQUEST_START_BT(1),
        MESSAGE_WIFI_REQUEST_INFO_BT(2),
        MESSAGE_WIFI_RESPONSE_INFO_BT(3),
        MESSAGE_WIFI_VERSION_REQUEST_BT(4),
        MESSAGE_WIFI_VERSION_RESPONSE_BT(5),
        MESSAGE_WIFI_CONNECT_STATUS_BT(6),
        MESSAGE_WIFI_RESPONSE_START_BT(7),
        MESSAGE_WIFI_PING_REQUEST_BT(8),
        MESSAGE_WIFI_PING_RESPONSE_BT(9),
        MESSAGE_WIFI_CONNECTION_REJECTION_BT(10);

        public static final int MESSAGE_WIFI_CONNECTION_REJECTION_BT_VALUE = 10;
        public static final int MESSAGE_WIFI_CONNECT_STATUS_BT_VALUE = 6;
        public static final int MESSAGE_WIFI_PING_REQUEST_BT_VALUE = 8;
        public static final int MESSAGE_WIFI_PING_RESPONSE_BT_VALUE = 9;
        public static final int MESSAGE_WIFI_REQUEST_INFO_BT_VALUE = 2;
        public static final int MESSAGE_WIFI_REQUEST_START_BT_VALUE = 1;
        public static final int MESSAGE_WIFI_RESPONSE_INFO_BT_VALUE = 3;
        public static final int MESSAGE_WIFI_RESPONSE_START_BT_VALUE = 7;
        public static final int MESSAGE_WIFI_VERSION_REQUEST_BT_VALUE = 4;
        public static final int MESSAGE_WIFI_VERSION_RESPONSE_BT_VALUE = 5;
        private final int value;
        private static final Internal.EnumLiteMap<WifiMessageType> internalValueMap = new Internal.EnumLiteMap<WifiMessageType>() { // from class: com.google.android.projection.proto.WifiDiscoveryProtos.WifiMessageType.1
            @Override // com.google.protobuf.Internal.EnumLiteMap
            public WifiMessageType findValueByNumber(int i2) {
                return WifiMessageType.forNumber(i2);
            }
        };
        private static final WifiMessageType[] VALUES = values();

        WifiMessageType(int i2) {
            this.value = i2;
        }

        public static WifiMessageType forNumber(int i2) {
            switch (i2) {
                case 1:
                    return MESSAGE_WIFI_REQUEST_START_BT;
                case 2:
                    return MESSAGE_WIFI_REQUEST_INFO_BT;
                case 3:
                    return MESSAGE_WIFI_RESPONSE_INFO_BT;
                case 4:
                    return MESSAGE_WIFI_VERSION_REQUEST_BT;
                case 5:
                    return MESSAGE_WIFI_VERSION_RESPONSE_BT;
                case 6:
                    return MESSAGE_WIFI_CONNECT_STATUS_BT;
                case 7:
                    return MESSAGE_WIFI_RESPONSE_START_BT;
                case 8:
                    return MESSAGE_WIFI_PING_REQUEST_BT;
                case 9:
                    return MESSAGE_WIFI_PING_RESPONSE_BT;
                case 10:
                    return MESSAGE_WIFI_CONNECTION_REJECTION_BT;
                default:
                    return null;
            }
        }

        public static final Descriptors.EnumDescriptor getDescriptor() {
            return WifiDiscoveryProtos.getDescriptor().getEnumTypes().get(0);
        }

        public static Internal.EnumLiteMap<WifiMessageType> internalGetValueMap() {
            return internalValueMap;
        }

        @Override // com.google.protobuf.ProtocolMessageEnum
        public final Descriptors.EnumDescriptor getDescriptorForType() {
            return getDescriptor();
        }

        @Override // com.google.protobuf.ProtocolMessageEnum, com.google.protobuf.Internal.EnumLite
        public final int getNumber() {
            return this.value;
        }

        @Override // com.google.protobuf.ProtocolMessageEnum
        public final Descriptors.EnumValueDescriptor getValueDescriptor() {
            return getDescriptor().getValues().get(ordinal());
        }

        @Deprecated
        public static WifiMessageType valueOf(int i2) {
            return forNumber(i2);
        }

        public static WifiMessageType valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() == getDescriptor()) {
                return VALUES[enumValueDescriptor.getIndex()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    public static final class WifiPingRequest extends GeneratedMessageV3 implements WifiPingRequestOrBuilder {
        public static final int DATA_FIELD_NUMBER = 2;
        private static final WifiPingRequest DEFAULT_INSTANCE = new WifiPingRequest();

        @Deprecated
        public static final Parser<WifiPingRequest> PARSER = new AbstractParser<WifiPingRequest>() { // from class: com.google.android.projection.proto.WifiDiscoveryProtos.WifiPingRequest.1
            @Override // com.google.protobuf.Parser
            public WifiPingRequest parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
                return new WifiPingRequest(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int TIMESTAMP_MS_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private ByteString data_;
        private byte memoizedIsInitialized;
        private long timestampMs_;

        public static WifiPingRequest getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return WifiDiscoveryProtos.internal_static_wifi_discovery_WifiPingRequest_descriptor;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static WifiPingRequest parseDelimitedFrom(InputStream inputStream) {
            return (WifiPingRequest) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static WifiPingRequest parseFrom(ByteBuffer byteBuffer) {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Parser<WifiPingRequest> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof WifiPingRequest)) {
                return super.equals(obj);
            }
            WifiPingRequest wifiPingRequest = (WifiPingRequest) obj;
            if (hasTimestampMs() != wifiPingRequest.hasTimestampMs()) {
                return false;
            }
            if ((!hasTimestampMs() || getTimestampMs() == wifiPingRequest.getTimestampMs()) && hasData() == wifiPingRequest.hasData()) {
                return (!hasData() || getData().equals(wifiPingRequest.getData())) && this.unknownFields.equals(wifiPingRequest.unknownFields);
            }
            return false;
        }

        @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiPingRequestOrBuilder
        public ByteString getData() {
            return this.data_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<WifiPingRequest> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i2 = this.memoizedSize;
            if (i2 != -1) {
                return i2;
            }
            int iComputeInt64Size = (this.bitField0_ & 1) != 0 ? 0 + CodedOutputStream.computeInt64Size(1, this.timestampMs_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeInt64Size += CodedOutputStream.computeBytesSize(2, this.data_);
            }
            int serializedSize = this.unknownFields.getSerializedSize() + iComputeInt64Size;
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiPingRequestOrBuilder
        public long getTimestampMs() {
            return this.timestampMs_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiPingRequestOrBuilder
        public boolean hasData() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiPingRequestOrBuilder
        public boolean hasTimestampMs() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i2 = this.memoizedHashCode;
            if (i2 != 0) {
                return i2;
            }
            int iHashCode = getDescriptor().hashCode() + MetricsProto.MetricsEvent.APP_SPECIAL_PERMISSION_PREMIUM_SMS_DENY;
            if (hasTimestampMs()) {
                iHashCode = m.D(iHashCode, 37, 1, 53) + Internal.hashLong(getTimestampMs());
            }
            if (hasData()) {
                iHashCode = m.D(iHashCode, 37, 2, 53) + getData().hashCode();
            }
            int iHashCode2 = this.unknownFields.hashCode() + (iHashCode * 29);
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return WifiDiscoveryProtos.internal_static_wifi_discovery_WifiPingRequest_fieldAccessorTable.ensureFieldAccessorsInitialized(WifiPingRequest.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b2 = this.memoizedIsInitialized;
            if (b2 == 1) {
                return true;
            }
            if (b2 == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
            return new WifiPingRequest();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) {
            if ((this.bitField0_ & 1) != 0) {
                codedOutputStream.writeInt64(1, this.timestampMs_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeBytes(2, this.data_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements WifiPingRequestOrBuilder {
            private int bitField0_;
            private ByteString data_;
            private long timestampMs_;

            public static final Descriptors.Descriptor getDescriptor() {
                return WifiDiscoveryProtos.internal_static_wifi_discovery_WifiPingRequest_descriptor;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            public Builder clearData() {
                this.bitField0_ &= -3;
                this.data_ = WifiPingRequest.getDefaultInstance().getData();
                onChanged();
                return this;
            }

            public Builder clearTimestampMs() {
                this.bitField0_ &= -2;
                this.timestampMs_ = 0L;
                onChanged();
                return this;
            }

            @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiPingRequestOrBuilder
            public ByteString getData() {
                return this.data_;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return WifiDiscoveryProtos.internal_static_wifi_discovery_WifiPingRequest_descriptor;
            }

            @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiPingRequestOrBuilder
            public long getTimestampMs() {
                return this.timestampMs_;
            }

            @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiPingRequestOrBuilder
            public boolean hasData() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiPingRequestOrBuilder
            public boolean hasTimestampMs() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return WifiDiscoveryProtos.internal_static_wifi_discovery_WifiPingRequest_fieldAccessorTable.ensureFieldAccessorsInitialized(WifiPingRequest.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public Builder setData(ByteString byteString) {
                byteString.getClass();
                this.bitField0_ |= 2;
                this.data_ = byteString;
                onChanged();
                return this;
            }

            public Builder setTimestampMs(long j2) {
                this.bitField0_ |= 1;
                this.timestampMs_ = j2;
                onChanged();
                return this;
            }

            private Builder() {
                this.data_ = ByteString.EMPTY;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public WifiPingRequest build() {
                WifiPingRequest wifiPingRequestBuildPartial = buildPartial();
                if (wifiPingRequestBuildPartial.isInitialized()) {
                    return wifiPingRequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) wifiPingRequestBuildPartial);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public WifiPingRequest buildPartial() {
                int i2;
                WifiPingRequest wifiPingRequest = new WifiPingRequest(this);
                int i3 = this.bitField0_;
                if ((i3 & 1) != 0) {
                    wifiPingRequest.timestampMs_ = this.timestampMs_;
                    i2 = 1;
                } else {
                    i2 = 0;
                }
                if ((i3 & 2) != 0) {
                    i2 |= 2;
                }
                wifiPingRequest.data_ = this.data_;
                wifiPingRequest.bitField0_ = i2;
                onBuilt();
                return wifiPingRequest;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public WifiPingRequest getDefaultInstanceForType() {
                return WifiPingRequest.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.setField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i2, Object obj) {
                return (Builder) super.setRepeatedField(fieldDescriptor, i2, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public final Builder setUnknownFields(UnknownFieldSet unknownFieldSet) {
                return (Builder) super.setUnknownFields(unknownFieldSet);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                return (Builder) super.clearOneof(oneofDescriptor);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeUnknownFields(UnknownFieldSet unknownFieldSet) {
                return (Builder) super.mergeUnknownFields(unknownFieldSet);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.timestampMs_ = 0L;
                int i2 = this.bitField0_ & (-2);
                this.bitField0_ = i2;
                this.data_ = ByteString.EMPTY;
                this.bitField0_ = i2 & (-3);
                return this;
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.data_ = ByteString.EMPTY;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* JADX INFO: renamed from: clone */
            public Builder mo58clone() {
                return (Builder) super.mo58clone();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof WifiPingRequest) {
                    return mergeFrom((WifiPingRequest) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(WifiPingRequest wifiPingRequest) {
                if (wifiPingRequest == WifiPingRequest.getDefaultInstance()) {
                    return this;
                }
                if (wifiPingRequest.hasTimestampMs()) {
                    setTimestampMs(wifiPingRequest.getTimestampMs());
                }
                if (wifiPingRequest.hasData()) {
                    setData(wifiPingRequest.getData());
                }
                mergeUnknownFields(((GeneratedMessageV3) wifiPingRequest).unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Code duplicated, block: B:16:0x0021  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
                WifiPingRequest wifiPingRequest = null;
                try {
                    try {
                        WifiPingRequest partialFrom = WifiPingRequest.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                        if (partialFrom != null) {
                            mergeFrom(partialFrom);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e2) {
                        WifiPingRequest wifiPingRequest2 = (WifiPingRequest) e2.getUnfinishedMessage();
                        try {
                            throw e2.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            wifiPingRequest = wifiPingRequest2;
                            if (wifiPingRequest != null) {
                                mergeFrom(wifiPingRequest);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (wifiPingRequest != null) {
                        mergeFrom(wifiPingRequest);
                    }
                    throw th;
                }
            }
        }

        public static Builder newBuilder(WifiPingRequest wifiPingRequest) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(wifiPingRequest);
        }

        public static WifiPingRequest parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        private WifiPingRequest(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static WifiPingRequest parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) {
            return (WifiPingRequest) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static WifiPingRequest parseFrom(ByteString byteString) {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public WifiPingRequest getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        public static WifiPingRequest parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private WifiPingRequest() {
            this.memoizedIsInitialized = (byte) -1;
            this.data_ = ByteString.EMPTY;
        }

        public static WifiPingRequest parseFrom(byte[] bArr) {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static WifiPingRequest parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static WifiPingRequest parseFrom(InputStream inputStream) {
            return (WifiPingRequest) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private WifiPingRequest(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
            this();
            extensionRegistryLite.getClass();
            UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
            boolean z2 = false;
            while (!z2) {
                try {
                    try {
                        int tag = codedInputStream.readTag();
                        if (tag != 0) {
                            if (tag == 8) {
                                this.bitField0_ |= 1;
                                this.timestampMs_ = codedInputStream.readInt64();
                            } else if (tag != 18) {
                                if (!parseUnknownField(codedInputStream, builderNewBuilder, extensionRegistryLite, tag)) {
                                }
                            } else {
                                this.bitField0_ |= 2;
                                this.data_ = codedInputStream.readBytes();
                            }
                        }
                        z2 = true;
                    } catch (InvalidProtocolBufferException e2) {
                        throw e2.setUnfinishedMessage(this);
                    } catch (IOException e3) {
                        throw new InvalidProtocolBufferException(e3).setUnfinishedMessage(this);
                    }
                } catch (Throwable th) {
                    this.unknownFields = builderNewBuilder.build();
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            this.unknownFields = builderNewBuilder.build();
            makeExtensionsImmutable();
        }

        public static WifiPingRequest parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) {
            return (WifiPingRequest) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static WifiPingRequest parseFrom(CodedInputStream codedInputStream) {
            return (WifiPingRequest) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static WifiPingRequest parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
            return (WifiPingRequest) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }
    }

    public interface WifiPingRequestOrBuilder extends MessageOrBuilder {
        ByteString getData();

        long getTimestampMs();

        boolean hasData();

        boolean hasTimestampMs();
    }

    public static final class WifiPingResponse extends GeneratedMessageV3 implements WifiPingResponseOrBuilder {
        public static final int DATA_FIELD_NUMBER = 2;
        private static final WifiPingResponse DEFAULT_INSTANCE = new WifiPingResponse();

        @Deprecated
        public static final Parser<WifiPingResponse> PARSER = new AbstractParser<WifiPingResponse>() { // from class: com.google.android.projection.proto.WifiDiscoveryProtos.WifiPingResponse.1
            @Override // com.google.protobuf.Parser
            public WifiPingResponse parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
                return new WifiPingResponse(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int TIMESTAMP_MS_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private ByteString data_;
        private byte memoizedIsInitialized;
        private long timestampMs_;

        public static WifiPingResponse getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return WifiDiscoveryProtos.internal_static_wifi_discovery_WifiPingResponse_descriptor;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static WifiPingResponse parseDelimitedFrom(InputStream inputStream) {
            return (WifiPingResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static WifiPingResponse parseFrom(ByteBuffer byteBuffer) {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Parser<WifiPingResponse> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof WifiPingResponse)) {
                return super.equals(obj);
            }
            WifiPingResponse wifiPingResponse = (WifiPingResponse) obj;
            if (hasTimestampMs() != wifiPingResponse.hasTimestampMs()) {
                return false;
            }
            if ((!hasTimestampMs() || getTimestampMs() == wifiPingResponse.getTimestampMs()) && hasData() == wifiPingResponse.hasData()) {
                return (!hasData() || getData().equals(wifiPingResponse.getData())) && this.unknownFields.equals(wifiPingResponse.unknownFields);
            }
            return false;
        }

        @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiPingResponseOrBuilder
        public ByteString getData() {
            return this.data_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<WifiPingResponse> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i2 = this.memoizedSize;
            if (i2 != -1) {
                return i2;
            }
            int iComputeInt64Size = (this.bitField0_ & 1) != 0 ? 0 + CodedOutputStream.computeInt64Size(1, this.timestampMs_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeInt64Size += CodedOutputStream.computeBytesSize(2, this.data_);
            }
            int serializedSize = this.unknownFields.getSerializedSize() + iComputeInt64Size;
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiPingResponseOrBuilder
        public long getTimestampMs() {
            return this.timestampMs_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiPingResponseOrBuilder
        public boolean hasData() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiPingResponseOrBuilder
        public boolean hasTimestampMs() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i2 = this.memoizedHashCode;
            if (i2 != 0) {
                return i2;
            }
            int iHashCode = getDescriptor().hashCode() + MetricsProto.MetricsEvent.APP_SPECIAL_PERMISSION_PREMIUM_SMS_DENY;
            if (hasTimestampMs()) {
                iHashCode = m.D(iHashCode, 37, 1, 53) + Internal.hashLong(getTimestampMs());
            }
            if (hasData()) {
                iHashCode = m.D(iHashCode, 37, 2, 53) + getData().hashCode();
            }
            int iHashCode2 = this.unknownFields.hashCode() + (iHashCode * 29);
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return WifiDiscoveryProtos.internal_static_wifi_discovery_WifiPingResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(WifiPingResponse.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b2 = this.memoizedIsInitialized;
            if (b2 == 1) {
                return true;
            }
            if (b2 == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
            return new WifiPingResponse();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) {
            if ((this.bitField0_ & 1) != 0) {
                codedOutputStream.writeInt64(1, this.timestampMs_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeBytes(2, this.data_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements WifiPingResponseOrBuilder {
            private int bitField0_;
            private ByteString data_;
            private long timestampMs_;

            public static final Descriptors.Descriptor getDescriptor() {
                return WifiDiscoveryProtos.internal_static_wifi_discovery_WifiPingResponse_descriptor;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            public Builder clearData() {
                this.bitField0_ &= -3;
                this.data_ = WifiPingResponse.getDefaultInstance().getData();
                onChanged();
                return this;
            }

            public Builder clearTimestampMs() {
                this.bitField0_ &= -2;
                this.timestampMs_ = 0L;
                onChanged();
                return this;
            }

            @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiPingResponseOrBuilder
            public ByteString getData() {
                return this.data_;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return WifiDiscoveryProtos.internal_static_wifi_discovery_WifiPingResponse_descriptor;
            }

            @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiPingResponseOrBuilder
            public long getTimestampMs() {
                return this.timestampMs_;
            }

            @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiPingResponseOrBuilder
            public boolean hasData() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiPingResponseOrBuilder
            public boolean hasTimestampMs() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return WifiDiscoveryProtos.internal_static_wifi_discovery_WifiPingResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(WifiPingResponse.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public Builder setData(ByteString byteString) {
                byteString.getClass();
                this.bitField0_ |= 2;
                this.data_ = byteString;
                onChanged();
                return this;
            }

            public Builder setTimestampMs(long j2) {
                this.bitField0_ |= 1;
                this.timestampMs_ = j2;
                onChanged();
                return this;
            }

            private Builder() {
                this.data_ = ByteString.EMPTY;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public WifiPingResponse build() {
                WifiPingResponse wifiPingResponseBuildPartial = buildPartial();
                if (wifiPingResponseBuildPartial.isInitialized()) {
                    return wifiPingResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) wifiPingResponseBuildPartial);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public WifiPingResponse buildPartial() {
                int i2;
                WifiPingResponse wifiPingResponse = new WifiPingResponse(this);
                int i3 = this.bitField0_;
                if ((i3 & 1) != 0) {
                    wifiPingResponse.timestampMs_ = this.timestampMs_;
                    i2 = 1;
                } else {
                    i2 = 0;
                }
                if ((i3 & 2) != 0) {
                    i2 |= 2;
                }
                wifiPingResponse.data_ = this.data_;
                wifiPingResponse.bitField0_ = i2;
                onBuilt();
                return wifiPingResponse;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public WifiPingResponse getDefaultInstanceForType() {
                return WifiPingResponse.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.setField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i2, Object obj) {
                return (Builder) super.setRepeatedField(fieldDescriptor, i2, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public final Builder setUnknownFields(UnknownFieldSet unknownFieldSet) {
                return (Builder) super.setUnknownFields(unknownFieldSet);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                return (Builder) super.clearOneof(oneofDescriptor);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeUnknownFields(UnknownFieldSet unknownFieldSet) {
                return (Builder) super.mergeUnknownFields(unknownFieldSet);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.timestampMs_ = 0L;
                int i2 = this.bitField0_ & (-2);
                this.bitField0_ = i2;
                this.data_ = ByteString.EMPTY;
                this.bitField0_ = i2 & (-3);
                return this;
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.data_ = ByteString.EMPTY;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* JADX INFO: renamed from: clone */
            public Builder mo58clone() {
                return (Builder) super.mo58clone();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof WifiPingResponse) {
                    return mergeFrom((WifiPingResponse) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(WifiPingResponse wifiPingResponse) {
                if (wifiPingResponse == WifiPingResponse.getDefaultInstance()) {
                    return this;
                }
                if (wifiPingResponse.hasTimestampMs()) {
                    setTimestampMs(wifiPingResponse.getTimestampMs());
                }
                if (wifiPingResponse.hasData()) {
                    setData(wifiPingResponse.getData());
                }
                mergeUnknownFields(((GeneratedMessageV3) wifiPingResponse).unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Code duplicated, block: B:16:0x0021  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
                WifiPingResponse wifiPingResponse = null;
                try {
                    try {
                        WifiPingResponse partialFrom = WifiPingResponse.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                        if (partialFrom != null) {
                            mergeFrom(partialFrom);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e2) {
                        WifiPingResponse wifiPingResponse2 = (WifiPingResponse) e2.getUnfinishedMessage();
                        try {
                            throw e2.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            wifiPingResponse = wifiPingResponse2;
                            if (wifiPingResponse != null) {
                                mergeFrom(wifiPingResponse);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (wifiPingResponse != null) {
                        mergeFrom(wifiPingResponse);
                    }
                    throw th;
                }
            }
        }

        public static Builder newBuilder(WifiPingResponse wifiPingResponse) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(wifiPingResponse);
        }

        public static WifiPingResponse parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        private WifiPingResponse(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static WifiPingResponse parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) {
            return (WifiPingResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static WifiPingResponse parseFrom(ByteString byteString) {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public WifiPingResponse getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        public static WifiPingResponse parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private WifiPingResponse() {
            this.memoizedIsInitialized = (byte) -1;
            this.data_ = ByteString.EMPTY;
        }

        public static WifiPingResponse parseFrom(byte[] bArr) {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static WifiPingResponse parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static WifiPingResponse parseFrom(InputStream inputStream) {
            return (WifiPingResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private WifiPingResponse(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
            this();
            extensionRegistryLite.getClass();
            UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
            boolean z2 = false;
            while (!z2) {
                try {
                    try {
                        int tag = codedInputStream.readTag();
                        if (tag != 0) {
                            if (tag == 8) {
                                this.bitField0_ |= 1;
                                this.timestampMs_ = codedInputStream.readInt64();
                            } else if (tag != 18) {
                                if (!parseUnknownField(codedInputStream, builderNewBuilder, extensionRegistryLite, tag)) {
                                }
                            } else {
                                this.bitField0_ |= 2;
                                this.data_ = codedInputStream.readBytes();
                            }
                        }
                        z2 = true;
                    } catch (InvalidProtocolBufferException e2) {
                        throw e2.setUnfinishedMessage(this);
                    } catch (IOException e3) {
                        throw new InvalidProtocolBufferException(e3).setUnfinishedMessage(this);
                    }
                } catch (Throwable th) {
                    this.unknownFields = builderNewBuilder.build();
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            this.unknownFields = builderNewBuilder.build();
            makeExtensionsImmutable();
        }

        public static WifiPingResponse parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) {
            return (WifiPingResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static WifiPingResponse parseFrom(CodedInputStream codedInputStream) {
            return (WifiPingResponse) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static WifiPingResponse parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
            return (WifiPingResponse) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }
    }

    public interface WifiPingResponseOrBuilder extends MessageOrBuilder {
        ByteString getData();

        long getTimestampMs();

        boolean hasData();

        boolean hasTimestampMs();
    }

    public static final class WifiProjectionProtocolInfo extends GeneratedMessageV3 implements WifiProjectionProtocolInfoOrBuilder {
        public static final int IP_ADDRESS_FIELD_NUMBER = 1;
        public static final int PORT_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private volatile Object ipAddress_;
        private byte memoizedIsInitialized;
        private int port_;
        private static final WifiProjectionProtocolInfo DEFAULT_INSTANCE = new WifiProjectionProtocolInfo();

        @Deprecated
        public static final Parser<WifiProjectionProtocolInfo> PARSER = new AbstractParser<WifiProjectionProtocolInfo>() { // from class: com.google.android.projection.proto.WifiDiscoveryProtos.WifiProjectionProtocolInfo.1
            @Override // com.google.protobuf.Parser
            public WifiProjectionProtocolInfo parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
                return new WifiProjectionProtocolInfo(codedInputStream, extensionRegistryLite);
            }
        };

        public static WifiProjectionProtocolInfo getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return WifiDiscoveryProtos.internal_static_wifi_discovery_WifiProjectionProtocolInfo_descriptor;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static WifiProjectionProtocolInfo parseDelimitedFrom(InputStream inputStream) {
            return (WifiProjectionProtocolInfo) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static WifiProjectionProtocolInfo parseFrom(ByteBuffer byteBuffer) {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Parser<WifiProjectionProtocolInfo> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof WifiProjectionProtocolInfo)) {
                return super.equals(obj);
            }
            WifiProjectionProtocolInfo wifiProjectionProtocolInfo = (WifiProjectionProtocolInfo) obj;
            if (hasIpAddress() != wifiProjectionProtocolInfo.hasIpAddress()) {
                return false;
            }
            if ((!hasIpAddress() || getIpAddress().equals(wifiProjectionProtocolInfo.getIpAddress())) && hasPort() == wifiProjectionProtocolInfo.hasPort()) {
                return (!hasPort() || getPort() == wifiProjectionProtocolInfo.getPort()) && this.unknownFields.equals(wifiProjectionProtocolInfo.unknownFields);
            }
            return false;
        }

        @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiProjectionProtocolInfoOrBuilder
        public String getIpAddress() {
            Object obj = this.ipAddress_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.ipAddress_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiProjectionProtocolInfoOrBuilder
        public ByteString getIpAddressBytes() {
            Object obj = this.ipAddress_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.ipAddress_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<WifiProjectionProtocolInfo> getParserForType() {
            return PARSER;
        }

        @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiProjectionProtocolInfoOrBuilder
        public int getPort() {
            return this.port_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i2 = this.memoizedSize;
            if (i2 != -1) {
                return i2;
            }
            int iComputeStringSize = (this.bitField0_ & 1) != 0 ? 0 + GeneratedMessageV3.computeStringSize(1, this.ipAddress_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeStringSize += CodedOutputStream.computeInt32Size(2, this.port_);
            }
            int serializedSize = this.unknownFields.getSerializedSize() + iComputeStringSize;
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiProjectionProtocolInfoOrBuilder
        public boolean hasIpAddress() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiProjectionProtocolInfoOrBuilder
        public boolean hasPort() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i2 = this.memoizedHashCode;
            if (i2 != 0) {
                return i2;
            }
            int iHashCode = getDescriptor().hashCode() + MetricsProto.MetricsEvent.APP_SPECIAL_PERMISSION_PREMIUM_SMS_DENY;
            if (hasIpAddress()) {
                iHashCode = m.D(iHashCode, 37, 1, 53) + getIpAddress().hashCode();
            }
            if (hasPort()) {
                iHashCode = m.D(iHashCode, 37, 2, 53) + getPort();
            }
            int iHashCode2 = this.unknownFields.hashCode() + (iHashCode * 29);
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return WifiDiscoveryProtos.internal_static_wifi_discovery_WifiProjectionProtocolInfo_fieldAccessorTable.ensureFieldAccessorsInitialized(WifiProjectionProtocolInfo.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b2 = this.memoizedIsInitialized;
            if (b2 == 1) {
                return true;
            }
            if (b2 == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
            return new WifiProjectionProtocolInfo();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) {
            if ((this.bitField0_ & 1) != 0) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.ipAddress_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeInt32(2, this.port_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements WifiProjectionProtocolInfoOrBuilder {
            private int bitField0_;
            private Object ipAddress_;
            private int port_;

            public static final Descriptors.Descriptor getDescriptor() {
                return WifiDiscoveryProtos.internal_static_wifi_discovery_WifiProjectionProtocolInfo_descriptor;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            public Builder clearIpAddress() {
                this.bitField0_ &= -2;
                this.ipAddress_ = WifiProjectionProtocolInfo.getDefaultInstance().getIpAddress();
                onChanged();
                return this;
            }

            public Builder clearPort() {
                this.bitField0_ &= -3;
                this.port_ = 0;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return WifiDiscoveryProtos.internal_static_wifi_discovery_WifiProjectionProtocolInfo_descriptor;
            }

            @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiProjectionProtocolInfoOrBuilder
            public String getIpAddress() {
                Object obj = this.ipAddress_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.ipAddress_ = stringUtf8;
                }
                return stringUtf8;
            }

            @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiProjectionProtocolInfoOrBuilder
            public ByteString getIpAddressBytes() {
                Object obj = this.ipAddress_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.ipAddress_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiProjectionProtocolInfoOrBuilder
            public int getPort() {
                return this.port_;
            }

            @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiProjectionProtocolInfoOrBuilder
            public boolean hasIpAddress() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiProjectionProtocolInfoOrBuilder
            public boolean hasPort() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return WifiDiscoveryProtos.internal_static_wifi_discovery_WifiProjectionProtocolInfo_fieldAccessorTable.ensureFieldAccessorsInitialized(WifiProjectionProtocolInfo.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public Builder setIpAddress(String str) {
                str.getClass();
                this.bitField0_ |= 1;
                this.ipAddress_ = str;
                onChanged();
                return this;
            }

            public Builder setIpAddressBytes(ByteString byteString) {
                byteString.getClass();
                this.bitField0_ |= 1;
                this.ipAddress_ = byteString;
                onChanged();
                return this;
            }

            public Builder setPort(int i2) {
                this.bitField0_ |= 2;
                this.port_ = i2;
                onChanged();
                return this;
            }

            private Builder() {
                this.ipAddress_ = "";
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public WifiProjectionProtocolInfo build() {
                WifiProjectionProtocolInfo wifiProjectionProtocolInfoBuildPartial = buildPartial();
                if (wifiProjectionProtocolInfoBuildPartial.isInitialized()) {
                    return wifiProjectionProtocolInfoBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) wifiProjectionProtocolInfoBuildPartial);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public WifiProjectionProtocolInfo buildPartial() {
                WifiProjectionProtocolInfo wifiProjectionProtocolInfo = new WifiProjectionProtocolInfo(this);
                int i2 = this.bitField0_;
                int i3 = (i2 & 1) != 0 ? 1 : 0;
                wifiProjectionProtocolInfo.ipAddress_ = this.ipAddress_;
                if ((i2 & 2) != 0) {
                    wifiProjectionProtocolInfo.port_ = this.port_;
                    i3 |= 2;
                }
                wifiProjectionProtocolInfo.bitField0_ = i3;
                onBuilt();
                return wifiProjectionProtocolInfo;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public WifiProjectionProtocolInfo getDefaultInstanceForType() {
                return WifiProjectionProtocolInfo.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.setField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i2, Object obj) {
                return (Builder) super.setRepeatedField(fieldDescriptor, i2, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public final Builder setUnknownFields(UnknownFieldSet unknownFieldSet) {
                return (Builder) super.setUnknownFields(unknownFieldSet);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                return (Builder) super.clearOneof(oneofDescriptor);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeUnknownFields(UnknownFieldSet unknownFieldSet) {
                return (Builder) super.mergeUnknownFields(unknownFieldSet);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.ipAddress_ = "";
                int i2 = this.bitField0_ & (-2);
                this.port_ = 0;
                this.bitField0_ = i2 & (-3);
                return this;
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.ipAddress_ = "";
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* JADX INFO: renamed from: clone */
            public Builder mo58clone() {
                return (Builder) super.mo58clone();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof WifiProjectionProtocolInfo) {
                    return mergeFrom((WifiProjectionProtocolInfo) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(WifiProjectionProtocolInfo wifiProjectionProtocolInfo) {
                if (wifiProjectionProtocolInfo == WifiProjectionProtocolInfo.getDefaultInstance()) {
                    return this;
                }
                if (wifiProjectionProtocolInfo.hasIpAddress()) {
                    this.bitField0_ |= 1;
                    this.ipAddress_ = wifiProjectionProtocolInfo.ipAddress_;
                    onChanged();
                }
                if (wifiProjectionProtocolInfo.hasPort()) {
                    setPort(wifiProjectionProtocolInfo.getPort());
                }
                mergeUnknownFields(((GeneratedMessageV3) wifiProjectionProtocolInfo).unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Code duplicated, block: B:16:0x0021  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
                WifiProjectionProtocolInfo wifiProjectionProtocolInfo = null;
                try {
                    try {
                        WifiProjectionProtocolInfo partialFrom = WifiProjectionProtocolInfo.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                        if (partialFrom != null) {
                            mergeFrom(partialFrom);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e2) {
                        WifiProjectionProtocolInfo wifiProjectionProtocolInfo2 = (WifiProjectionProtocolInfo) e2.getUnfinishedMessage();
                        try {
                            throw e2.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            wifiProjectionProtocolInfo = wifiProjectionProtocolInfo2;
                            if (wifiProjectionProtocolInfo != null) {
                                mergeFrom(wifiProjectionProtocolInfo);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (wifiProjectionProtocolInfo != null) {
                        mergeFrom(wifiProjectionProtocolInfo);
                    }
                    throw th;
                }
            }
        }

        public static Builder newBuilder(WifiProjectionProtocolInfo wifiProjectionProtocolInfo) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(wifiProjectionProtocolInfo);
        }

        public static WifiProjectionProtocolInfo parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        private WifiProjectionProtocolInfo(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static WifiProjectionProtocolInfo parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) {
            return (WifiProjectionProtocolInfo) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static WifiProjectionProtocolInfo parseFrom(ByteString byteString) {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public WifiProjectionProtocolInfo getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        public static WifiProjectionProtocolInfo parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private WifiProjectionProtocolInfo() {
            this.memoizedIsInitialized = (byte) -1;
            this.ipAddress_ = "";
        }

        public static WifiProjectionProtocolInfo parseFrom(byte[] bArr) {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static WifiProjectionProtocolInfo parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static WifiProjectionProtocolInfo parseFrom(InputStream inputStream) {
            return (WifiProjectionProtocolInfo) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private WifiProjectionProtocolInfo(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
            this();
            extensionRegistryLite.getClass();
            UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
            boolean z2 = false;
            while (!z2) {
                try {
                    try {
                        int tag = codedInputStream.readTag();
                        if (tag != 0) {
                            if (tag == 10) {
                                ByteString bytes = codedInputStream.readBytes();
                                this.bitField0_ = 1 | this.bitField0_;
                                this.ipAddress_ = bytes;
                            } else if (tag != 16) {
                                if (!parseUnknownField(codedInputStream, builderNewBuilder, extensionRegistryLite, tag)) {
                                }
                            } else {
                                this.bitField0_ |= 2;
                                this.port_ = codedInputStream.readInt32();
                            }
                        }
                        z2 = true;
                    } catch (InvalidProtocolBufferException e2) {
                        throw e2.setUnfinishedMessage(this);
                    } catch (IOException e3) {
                        throw new InvalidProtocolBufferException(e3).setUnfinishedMessage(this);
                    }
                } catch (Throwable th) {
                    this.unknownFields = builderNewBuilder.build();
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            this.unknownFields = builderNewBuilder.build();
            makeExtensionsImmutable();
        }

        public static WifiProjectionProtocolInfo parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) {
            return (WifiProjectionProtocolInfo) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static WifiProjectionProtocolInfo parseFrom(CodedInputStream codedInputStream) {
            return (WifiProjectionProtocolInfo) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static WifiProjectionProtocolInfo parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
            return (WifiProjectionProtocolInfo) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }
    }

    public interface WifiProjectionProtocolInfoOrBuilder extends MessageOrBuilder {
        String getIpAddress();

        ByteString getIpAddressBytes();

        int getPort();

        boolean hasIpAddress();

        boolean hasPort();
    }

    public enum WifiSecurityMode implements ProtocolMessageEnum {
        UNKNOWN_SECURITY_MODE(0),
        OPEN(1),
        WEP_64(2),
        WEP_128(3),
        WPA_PERSONAL(4),
        WPA2_PERSONAL(8),
        WPA_WPA2_PERSONAL(12),
        WPA_ENTERPRISE(20),
        WPA2_ENTERPRISE(24),
        WPA_WPA2_ENTERPRISE(28),
        WPA3_PERSONAL(32),
        WPA2_WPA3_PERSONAL(40);

        public static final int OPEN_VALUE = 1;
        public static final int UNKNOWN_SECURITY_MODE_VALUE = 0;
        public static final int WEP_128_VALUE = 3;
        public static final int WEP_64_VALUE = 2;
        public static final int WPA2_ENTERPRISE_VALUE = 24;
        public static final int WPA2_PERSONAL_VALUE = 8;
        public static final int WPA2_WPA3_PERSONAL_VALUE = 40;
        public static final int WPA3_PERSONAL_VALUE = 32;
        public static final int WPA_ENTERPRISE_VALUE = 20;
        public static final int WPA_PERSONAL_VALUE = 4;
        public static final int WPA_WPA2_ENTERPRISE_VALUE = 28;
        public static final int WPA_WPA2_PERSONAL_VALUE = 12;
        private final int value;
        private static final Internal.EnumLiteMap<WifiSecurityMode> internalValueMap = new Internal.EnumLiteMap<WifiSecurityMode>() { // from class: com.google.android.projection.proto.WifiDiscoveryProtos.WifiSecurityMode.1
            @Override // com.google.protobuf.Internal.EnumLiteMap
            public WifiSecurityMode findValueByNumber(int i2) {
                return WifiSecurityMode.forNumber(i2);
            }
        };
        private static final WifiSecurityMode[] VALUES = values();

        WifiSecurityMode(int i2) {
            this.value = i2;
        }

        public static WifiSecurityMode forNumber(int i2) {
            if (i2 == 0) {
                return UNKNOWN_SECURITY_MODE;
            }
            if (i2 == 1) {
                return OPEN;
            }
            if (i2 == 2) {
                return WEP_64;
            }
            if (i2 == 3) {
                return WEP_128;
            }
            if (i2 == 4) {
                return WPA_PERSONAL;
            }
            if (i2 == 8) {
                return WPA2_PERSONAL;
            }
            if (i2 == 12) {
                return WPA_WPA2_PERSONAL;
            }
            if (i2 == 20) {
                return WPA_ENTERPRISE;
            }
            if (i2 == 24) {
                return WPA2_ENTERPRISE;
            }
            if (i2 == 28) {
                return WPA_WPA2_ENTERPRISE;
            }
            if (i2 == 32) {
                return WPA3_PERSONAL;
            }
            if (i2 != 40) {
                return null;
            }
            return WPA2_WPA3_PERSONAL;
        }

        public static final Descriptors.EnumDescriptor getDescriptor() {
            return WifiDiscoveryProtos.getDescriptor().getEnumTypes().get(1);
        }

        public static Internal.EnumLiteMap<WifiSecurityMode> internalGetValueMap() {
            return internalValueMap;
        }

        @Override // com.google.protobuf.ProtocolMessageEnum
        public final Descriptors.EnumDescriptor getDescriptorForType() {
            return getDescriptor();
        }

        @Override // com.google.protobuf.ProtocolMessageEnum, com.google.protobuf.Internal.EnumLite
        public final int getNumber() {
            return this.value;
        }

        @Override // com.google.protobuf.ProtocolMessageEnum
        public final Descriptors.EnumValueDescriptor getValueDescriptor() {
            return getDescriptor().getValues().get(ordinal());
        }

        @Deprecated
        public static WifiSecurityMode valueOf(int i2) {
            return forNumber(i2);
        }

        public static WifiSecurityMode valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() == getDescriptor()) {
                return VALUES[enumValueDescriptor.getIndex()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    public static final class WifiStartRequest extends GeneratedMessageV3 implements WifiStartRequestOrBuilder {
        public static final int IP_ADDRESS_FIELD_NUMBER = 1;
        public static final int PORT_FIELD_NUMBER = 2;
        public static final int START_REQUEST_REASON_FIELD_NUMBER = 3;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private volatile Object ipAddress_;
        private byte memoizedIsInitialized;
        private int port_;
        private int startRequestReason_;
        private static final WifiStartRequest DEFAULT_INSTANCE = new WifiStartRequest();

        @Deprecated
        public static final Parser<WifiStartRequest> PARSER = new AbstractParser<WifiStartRequest>() { // from class: com.google.android.projection.proto.WifiDiscoveryProtos.WifiStartRequest.1
            @Override // com.google.protobuf.Parser
            public WifiStartRequest parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
                return new WifiStartRequest(codedInputStream, extensionRegistryLite);
            }
        };

        public static WifiStartRequest getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return WifiDiscoveryProtos.internal_static_wifi_discovery_WifiStartRequest_descriptor;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static WifiStartRequest parseDelimitedFrom(InputStream inputStream) {
            return (WifiStartRequest) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static WifiStartRequest parseFrom(ByteBuffer byteBuffer) {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Parser<WifiStartRequest> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof WifiStartRequest)) {
                return super.equals(obj);
            }
            WifiStartRequest wifiStartRequest = (WifiStartRequest) obj;
            if (hasIpAddress() != wifiStartRequest.hasIpAddress()) {
                return false;
            }
            if ((hasIpAddress() && !getIpAddress().equals(wifiStartRequest.getIpAddress())) || hasPort() != wifiStartRequest.hasPort()) {
                return false;
            }
            if ((!hasPort() || getPort() == wifiStartRequest.getPort()) && hasStartRequestReason() == wifiStartRequest.hasStartRequestReason()) {
                return (!hasStartRequestReason() || this.startRequestReason_ == wifiStartRequest.startRequestReason_) && this.unknownFields.equals(wifiStartRequest.unknownFields);
            }
            return false;
        }

        @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiStartRequestOrBuilder
        public String getIpAddress() {
            Object obj = this.ipAddress_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.ipAddress_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiStartRequestOrBuilder
        public ByteString getIpAddressBytes() {
            Object obj = this.ipAddress_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.ipAddress_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<WifiStartRequest> getParserForType() {
            return PARSER;
        }

        @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiStartRequestOrBuilder
        public int getPort() {
            return this.port_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i2 = this.memoizedSize;
            if (i2 != -1) {
                return i2;
            }
            int iComputeStringSize = (this.bitField0_ & 1) != 0 ? 0 + GeneratedMessageV3.computeStringSize(1, this.ipAddress_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeStringSize += CodedOutputStream.computeInt32Size(2, this.port_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeStringSize += CodedOutputStream.computeEnumSize(3, this.startRequestReason_);
            }
            int serializedSize = this.unknownFields.getSerializedSize() + iComputeStringSize;
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiStartRequestOrBuilder
        public StartRequestReason getStartRequestReason() {
            StartRequestReason startRequestReasonValueOf = StartRequestReason.valueOf(this.startRequestReason_);
            return startRequestReasonValueOf == null ? StartRequestReason.USER_REQUEST : startRequestReasonValueOf;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiStartRequestOrBuilder
        public boolean hasIpAddress() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiStartRequestOrBuilder
        public boolean hasPort() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiStartRequestOrBuilder
        public boolean hasStartRequestReason() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i2 = this.memoizedHashCode;
            if (i2 != 0) {
                return i2;
            }
            int iHashCode = getDescriptor().hashCode() + MetricsProto.MetricsEvent.APP_SPECIAL_PERMISSION_PREMIUM_SMS_DENY;
            if (hasIpAddress()) {
                iHashCode = m.D(iHashCode, 37, 1, 53) + getIpAddress().hashCode();
            }
            if (hasPort()) {
                iHashCode = m.D(iHashCode, 37, 2, 53) + getPort();
            }
            if (hasStartRequestReason()) {
                iHashCode = m.D(iHashCode, 37, 3, 53) + this.startRequestReason_;
            }
            int iHashCode2 = this.unknownFields.hashCode() + (iHashCode * 29);
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return WifiDiscoveryProtos.internal_static_wifi_discovery_WifiStartRequest_fieldAccessorTable.ensureFieldAccessorsInitialized(WifiStartRequest.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b2 = this.memoizedIsInitialized;
            if (b2 == 1) {
                return true;
            }
            if (b2 == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
            return new WifiStartRequest();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) {
            if ((this.bitField0_ & 1) != 0) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.ipAddress_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeInt32(2, this.port_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeEnum(3, this.startRequestReason_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements WifiStartRequestOrBuilder {
            private int bitField0_;
            private Object ipAddress_;
            private int port_;
            private int startRequestReason_;

            public static final Descriptors.Descriptor getDescriptor() {
                return WifiDiscoveryProtos.internal_static_wifi_discovery_WifiStartRequest_descriptor;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            public Builder clearIpAddress() {
                this.bitField0_ &= -2;
                this.ipAddress_ = WifiStartRequest.getDefaultInstance().getIpAddress();
                onChanged();
                return this;
            }

            public Builder clearPort() {
                this.bitField0_ &= -3;
                this.port_ = 0;
                onChanged();
                return this;
            }

            public Builder clearStartRequestReason() {
                this.bitField0_ &= -5;
                this.startRequestReason_ = 0;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return WifiDiscoveryProtos.internal_static_wifi_discovery_WifiStartRequest_descriptor;
            }

            @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiStartRequestOrBuilder
            public String getIpAddress() {
                Object obj = this.ipAddress_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.ipAddress_ = stringUtf8;
                }
                return stringUtf8;
            }

            @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiStartRequestOrBuilder
            public ByteString getIpAddressBytes() {
                Object obj = this.ipAddress_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.ipAddress_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiStartRequestOrBuilder
            public int getPort() {
                return this.port_;
            }

            @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiStartRequestOrBuilder
            public StartRequestReason getStartRequestReason() {
                StartRequestReason startRequestReasonValueOf = StartRequestReason.valueOf(this.startRequestReason_);
                return startRequestReasonValueOf == null ? StartRequestReason.USER_REQUEST : startRequestReasonValueOf;
            }

            @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiStartRequestOrBuilder
            public boolean hasIpAddress() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiStartRequestOrBuilder
            public boolean hasPort() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiStartRequestOrBuilder
            public boolean hasStartRequestReason() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return WifiDiscoveryProtos.internal_static_wifi_discovery_WifiStartRequest_fieldAccessorTable.ensureFieldAccessorsInitialized(WifiStartRequest.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public Builder setIpAddress(String str) {
                str.getClass();
                this.bitField0_ |= 1;
                this.ipAddress_ = str;
                onChanged();
                return this;
            }

            public Builder setIpAddressBytes(ByteString byteString) {
                byteString.getClass();
                this.bitField0_ |= 1;
                this.ipAddress_ = byteString;
                onChanged();
                return this;
            }

            public Builder setPort(int i2) {
                this.bitField0_ |= 2;
                this.port_ = i2;
                onChanged();
                return this;
            }

            public Builder setStartRequestReason(StartRequestReason startRequestReason) {
                startRequestReason.getClass();
                this.bitField0_ |= 4;
                this.startRequestReason_ = startRequestReason.getNumber();
                onChanged();
                return this;
            }

            private Builder() {
                this.ipAddress_ = "";
                this.startRequestReason_ = 0;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public WifiStartRequest build() {
                WifiStartRequest wifiStartRequestBuildPartial = buildPartial();
                if (wifiStartRequestBuildPartial.isInitialized()) {
                    return wifiStartRequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) wifiStartRequestBuildPartial);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public WifiStartRequest buildPartial() {
                WifiStartRequest wifiStartRequest = new WifiStartRequest(this);
                int i2 = this.bitField0_;
                int i3 = (i2 & 1) != 0 ? 1 : 0;
                wifiStartRequest.ipAddress_ = this.ipAddress_;
                if ((i2 & 2) != 0) {
                    wifiStartRequest.port_ = this.port_;
                    i3 |= 2;
                }
                if ((i2 & 4) != 0) {
                    i3 |= 4;
                }
                wifiStartRequest.startRequestReason_ = this.startRequestReason_;
                wifiStartRequest.bitField0_ = i3;
                onBuilt();
                return wifiStartRequest;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public WifiStartRequest getDefaultInstanceForType() {
                return WifiStartRequest.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.setField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i2, Object obj) {
                return (Builder) super.setRepeatedField(fieldDescriptor, i2, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public final Builder setUnknownFields(UnknownFieldSet unknownFieldSet) {
                return (Builder) super.setUnknownFields(unknownFieldSet);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                return (Builder) super.clearOneof(oneofDescriptor);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeUnknownFields(UnknownFieldSet unknownFieldSet) {
                return (Builder) super.mergeUnknownFields(unknownFieldSet);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.ipAddress_ = "";
                int i2 = this.bitField0_ & (-2);
                this.port_ = 0;
                this.startRequestReason_ = 0;
                this.bitField0_ = i2 & (-3) & (-5);
                return this;
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.ipAddress_ = "";
                this.startRequestReason_ = 0;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* JADX INFO: renamed from: clone */
            public Builder mo58clone() {
                return (Builder) super.mo58clone();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof WifiStartRequest) {
                    return mergeFrom((WifiStartRequest) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(WifiStartRequest wifiStartRequest) {
                if (wifiStartRequest == WifiStartRequest.getDefaultInstance()) {
                    return this;
                }
                if (wifiStartRequest.hasIpAddress()) {
                    this.bitField0_ |= 1;
                    this.ipAddress_ = wifiStartRequest.ipAddress_;
                    onChanged();
                }
                if (wifiStartRequest.hasPort()) {
                    setPort(wifiStartRequest.getPort());
                }
                if (wifiStartRequest.hasStartRequestReason()) {
                    setStartRequestReason(wifiStartRequest.getStartRequestReason());
                }
                mergeUnknownFields(((GeneratedMessageV3) wifiStartRequest).unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Code duplicated, block: B:16:0x0021  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
                WifiStartRequest wifiStartRequest = null;
                try {
                    try {
                        WifiStartRequest partialFrom = WifiStartRequest.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                        if (partialFrom != null) {
                            mergeFrom(partialFrom);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e2) {
                        WifiStartRequest wifiStartRequest2 = (WifiStartRequest) e2.getUnfinishedMessage();
                        try {
                            throw e2.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            wifiStartRequest = wifiStartRequest2;
                            if (wifiStartRequest != null) {
                                mergeFrom(wifiStartRequest);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (wifiStartRequest != null) {
                        mergeFrom(wifiStartRequest);
                    }
                    throw th;
                }
            }
        }

        public static Builder newBuilder(WifiStartRequest wifiStartRequest) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(wifiStartRequest);
        }

        public static WifiStartRequest parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        private WifiStartRequest(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static WifiStartRequest parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) {
            return (WifiStartRequest) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static WifiStartRequest parseFrom(ByteString byteString) {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public WifiStartRequest getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        public static WifiStartRequest parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private WifiStartRequest() {
            this.memoizedIsInitialized = (byte) -1;
            this.ipAddress_ = "";
            this.startRequestReason_ = 0;
        }

        public static WifiStartRequest parseFrom(byte[] bArr) {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static WifiStartRequest parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static WifiStartRequest parseFrom(InputStream inputStream) {
            return (WifiStartRequest) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private WifiStartRequest(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
            this();
            extensionRegistryLite.getClass();
            UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
            boolean z2 = false;
            while (!z2) {
                try {
                    try {
                        int tag = codedInputStream.readTag();
                        if (tag != 0) {
                            if (tag == 10) {
                                ByteString bytes = codedInputStream.readBytes();
                                this.bitField0_ = 1 | this.bitField0_;
                                this.ipAddress_ = bytes;
                            } else if (tag == 16) {
                                this.bitField0_ |= 2;
                                this.port_ = codedInputStream.readInt32();
                            } else if (tag != 24) {
                                if (!parseUnknownField(codedInputStream, builderNewBuilder, extensionRegistryLite, tag)) {
                                }
                            } else {
                                int i2 = codedInputStream.readEnum();
                                if (StartRequestReason.valueOf(i2) == null) {
                                    builderNewBuilder.mergeVarintField(3, i2);
                                } else {
                                    this.bitField0_ |= 4;
                                    this.startRequestReason_ = i2;
                                }
                            }
                        }
                        z2 = true;
                    } catch (InvalidProtocolBufferException e2) {
                        throw e2.setUnfinishedMessage(this);
                    } catch (IOException e3) {
                        throw new InvalidProtocolBufferException(e3).setUnfinishedMessage(this);
                    }
                } catch (Throwable th) {
                    this.unknownFields = builderNewBuilder.build();
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            this.unknownFields = builderNewBuilder.build();
            makeExtensionsImmutable();
        }

        public static WifiStartRequest parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) {
            return (WifiStartRequest) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static WifiStartRequest parseFrom(CodedInputStream codedInputStream) {
            return (WifiStartRequest) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static WifiStartRequest parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
            return (WifiStartRequest) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }
    }

    public interface WifiStartRequestOrBuilder extends MessageOrBuilder {
        String getIpAddress();

        ByteString getIpAddressBytes();

        int getPort();

        StartRequestReason getStartRequestReason();

        boolean hasIpAddress();

        boolean hasPort();

        boolean hasStartRequestReason();
    }

    public static final class WifiStartResponse extends GeneratedMessageV3 implements WifiStartResponseOrBuilder {
        public static final int IP_ADDRESS_FIELD_NUMBER = 1;
        public static final int PORT_FIELD_NUMBER = 2;
        public static final int STATUS_FIELD_NUMBER = 3;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private volatile Object ipAddress_;
        private byte memoizedIsInitialized;
        private int port_;
        private int status_;
        private static final WifiStartResponse DEFAULT_INSTANCE = new WifiStartResponse();

        @Deprecated
        public static final Parser<WifiStartResponse> PARSER = new AbstractParser<WifiStartResponse>() { // from class: com.google.android.projection.proto.WifiDiscoveryProtos.WifiStartResponse.1
            @Override // com.google.protobuf.Parser
            public WifiStartResponse parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
                return new WifiStartResponse(codedInputStream, extensionRegistryLite);
            }
        };

        public static WifiStartResponse getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return WifiDiscoveryProtos.internal_static_wifi_discovery_WifiStartResponse_descriptor;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static WifiStartResponse parseDelimitedFrom(InputStream inputStream) {
            return (WifiStartResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static WifiStartResponse parseFrom(ByteBuffer byteBuffer) {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Parser<WifiStartResponse> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof WifiStartResponse)) {
                return super.equals(obj);
            }
            WifiStartResponse wifiStartResponse = (WifiStartResponse) obj;
            if (hasIpAddress() != wifiStartResponse.hasIpAddress()) {
                return false;
            }
            if ((hasIpAddress() && !getIpAddress().equals(wifiStartResponse.getIpAddress())) || hasPort() != wifiStartResponse.hasPort()) {
                return false;
            }
            if ((!hasPort() || getPort() == wifiStartResponse.getPort()) && hasStatus() == wifiStartResponse.hasStatus()) {
                return (!hasStatus() || this.status_ == wifiStartResponse.status_) && this.unknownFields.equals(wifiStartResponse.unknownFields);
            }
            return false;
        }

        @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiStartResponseOrBuilder
        public String getIpAddress() {
            Object obj = this.ipAddress_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.ipAddress_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiStartResponseOrBuilder
        public ByteString getIpAddressBytes() {
            Object obj = this.ipAddress_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.ipAddress_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<WifiStartResponse> getParserForType() {
            return PARSER;
        }

        @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiStartResponseOrBuilder
        public int getPort() {
            return this.port_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i2 = this.memoizedSize;
            if (i2 != -1) {
                return i2;
            }
            int iComputeStringSize = (this.bitField0_ & 1) != 0 ? 0 + GeneratedMessageV3.computeStringSize(1, this.ipAddress_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeStringSize += CodedOutputStream.computeInt32Size(2, this.port_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeStringSize += CodedOutputStream.computeEnumSize(3, this.status_);
            }
            int serializedSize = this.unknownFields.getSerializedSize() + iComputeStringSize;
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiStartResponseOrBuilder
        public MessageStatus getStatus() {
            MessageStatus messageStatusValueOf = MessageStatus.valueOf(this.status_);
            return messageStatusValueOf == null ? MessageStatus.STATUS_UNSOLICITED_MESSAGE : messageStatusValueOf;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiStartResponseOrBuilder
        public boolean hasIpAddress() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiStartResponseOrBuilder
        public boolean hasPort() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiStartResponseOrBuilder
        public boolean hasStatus() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i2 = this.memoizedHashCode;
            if (i2 != 0) {
                return i2;
            }
            int iHashCode = getDescriptor().hashCode() + MetricsProto.MetricsEvent.APP_SPECIAL_PERMISSION_PREMIUM_SMS_DENY;
            if (hasIpAddress()) {
                iHashCode = m.D(iHashCode, 37, 1, 53) + getIpAddress().hashCode();
            }
            if (hasPort()) {
                iHashCode = m.D(iHashCode, 37, 2, 53) + getPort();
            }
            if (hasStatus()) {
                iHashCode = m.D(iHashCode, 37, 3, 53) + this.status_;
            }
            int iHashCode2 = this.unknownFields.hashCode() + (iHashCode * 29);
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return WifiDiscoveryProtos.internal_static_wifi_discovery_WifiStartResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(WifiStartResponse.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b2 = this.memoizedIsInitialized;
            if (b2 == 1) {
                return true;
            }
            if (b2 == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
            return new WifiStartResponse();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) {
            if ((this.bitField0_ & 1) != 0) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.ipAddress_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeInt32(2, this.port_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeEnum(3, this.status_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements WifiStartResponseOrBuilder {
            private int bitField0_;
            private Object ipAddress_;
            private int port_;
            private int status_;

            public static final Descriptors.Descriptor getDescriptor() {
                return WifiDiscoveryProtos.internal_static_wifi_discovery_WifiStartResponse_descriptor;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            public Builder clearIpAddress() {
                this.bitField0_ &= -2;
                this.ipAddress_ = WifiStartResponse.getDefaultInstance().getIpAddress();
                onChanged();
                return this;
            }

            public Builder clearPort() {
                this.bitField0_ &= -3;
                this.port_ = 0;
                onChanged();
                return this;
            }

            public Builder clearStatus() {
                this.bitField0_ &= -5;
                this.status_ = 1;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return WifiDiscoveryProtos.internal_static_wifi_discovery_WifiStartResponse_descriptor;
            }

            @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiStartResponseOrBuilder
            public String getIpAddress() {
                Object obj = this.ipAddress_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.ipAddress_ = stringUtf8;
                }
                return stringUtf8;
            }

            @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiStartResponseOrBuilder
            public ByteString getIpAddressBytes() {
                Object obj = this.ipAddress_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.ipAddress_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiStartResponseOrBuilder
            public int getPort() {
                return this.port_;
            }

            @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiStartResponseOrBuilder
            public MessageStatus getStatus() {
                MessageStatus messageStatusValueOf = MessageStatus.valueOf(this.status_);
                return messageStatusValueOf == null ? MessageStatus.STATUS_UNSOLICITED_MESSAGE : messageStatusValueOf;
            }

            @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiStartResponseOrBuilder
            public boolean hasIpAddress() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiStartResponseOrBuilder
            public boolean hasPort() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiStartResponseOrBuilder
            public boolean hasStatus() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return WifiDiscoveryProtos.internal_static_wifi_discovery_WifiStartResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(WifiStartResponse.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public Builder setIpAddress(String str) {
                str.getClass();
                this.bitField0_ |= 1;
                this.ipAddress_ = str;
                onChanged();
                return this;
            }

            public Builder setIpAddressBytes(ByteString byteString) {
                byteString.getClass();
                this.bitField0_ |= 1;
                this.ipAddress_ = byteString;
                onChanged();
                return this;
            }

            public Builder setPort(int i2) {
                this.bitField0_ |= 2;
                this.port_ = i2;
                onChanged();
                return this;
            }

            public Builder setStatus(MessageStatus messageStatus) {
                messageStatus.getClass();
                this.bitField0_ |= 4;
                this.status_ = messageStatus.getNumber();
                onChanged();
                return this;
            }

            private Builder() {
                this.ipAddress_ = "";
                this.status_ = 1;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public WifiStartResponse build() {
                WifiStartResponse wifiStartResponseBuildPartial = buildPartial();
                if (wifiStartResponseBuildPartial.isInitialized()) {
                    return wifiStartResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) wifiStartResponseBuildPartial);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public WifiStartResponse buildPartial() {
                WifiStartResponse wifiStartResponse = new WifiStartResponse(this);
                int i2 = this.bitField0_;
                int i3 = (i2 & 1) != 0 ? 1 : 0;
                wifiStartResponse.ipAddress_ = this.ipAddress_;
                if ((i2 & 2) != 0) {
                    wifiStartResponse.port_ = this.port_;
                    i3 |= 2;
                }
                if ((i2 & 4) != 0) {
                    i3 |= 4;
                }
                wifiStartResponse.status_ = this.status_;
                wifiStartResponse.bitField0_ = i3;
                onBuilt();
                return wifiStartResponse;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public WifiStartResponse getDefaultInstanceForType() {
                return WifiStartResponse.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.setField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i2, Object obj) {
                return (Builder) super.setRepeatedField(fieldDescriptor, i2, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public final Builder setUnknownFields(UnknownFieldSet unknownFieldSet) {
                return (Builder) super.setUnknownFields(unknownFieldSet);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                return (Builder) super.clearOneof(oneofDescriptor);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeUnknownFields(UnknownFieldSet unknownFieldSet) {
                return (Builder) super.mergeUnknownFields(unknownFieldSet);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.ipAddress_ = "";
                int i2 = this.bitField0_ & (-2);
                this.port_ = 0;
                this.status_ = 1;
                this.bitField0_ = i2 & (-3) & (-5);
                return this;
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.ipAddress_ = "";
                this.status_ = 1;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* JADX INFO: renamed from: clone */
            public Builder mo58clone() {
                return (Builder) super.mo58clone();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof WifiStartResponse) {
                    return mergeFrom((WifiStartResponse) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(WifiStartResponse wifiStartResponse) {
                if (wifiStartResponse == WifiStartResponse.getDefaultInstance()) {
                    return this;
                }
                if (wifiStartResponse.hasIpAddress()) {
                    this.bitField0_ |= 1;
                    this.ipAddress_ = wifiStartResponse.ipAddress_;
                    onChanged();
                }
                if (wifiStartResponse.hasPort()) {
                    setPort(wifiStartResponse.getPort());
                }
                if (wifiStartResponse.hasStatus()) {
                    setStatus(wifiStartResponse.getStatus());
                }
                mergeUnknownFields(((GeneratedMessageV3) wifiStartResponse).unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Code duplicated, block: B:16:0x0021  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
                WifiStartResponse wifiStartResponse = null;
                try {
                    try {
                        WifiStartResponse partialFrom = WifiStartResponse.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                        if (partialFrom != null) {
                            mergeFrom(partialFrom);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e2) {
                        WifiStartResponse wifiStartResponse2 = (WifiStartResponse) e2.getUnfinishedMessage();
                        try {
                            throw e2.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            wifiStartResponse = wifiStartResponse2;
                            if (wifiStartResponse != null) {
                                mergeFrom(wifiStartResponse);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (wifiStartResponse != null) {
                        mergeFrom(wifiStartResponse);
                    }
                    throw th;
                }
            }
        }

        public static Builder newBuilder(WifiStartResponse wifiStartResponse) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(wifiStartResponse);
        }

        public static WifiStartResponse parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        private WifiStartResponse(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static WifiStartResponse parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) {
            return (WifiStartResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static WifiStartResponse parseFrom(ByteString byteString) {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public WifiStartResponse getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        public static WifiStartResponse parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private WifiStartResponse() {
            this.memoizedIsInitialized = (byte) -1;
            this.ipAddress_ = "";
            this.status_ = 1;
        }

        public static WifiStartResponse parseFrom(byte[] bArr) {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static WifiStartResponse parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static WifiStartResponse parseFrom(InputStream inputStream) {
            return (WifiStartResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private WifiStartResponse(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
            this();
            extensionRegistryLite.getClass();
            UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
            boolean z2 = false;
            while (!z2) {
                try {
                    try {
                        int tag = codedInputStream.readTag();
                        if (tag != 0) {
                            if (tag == 10) {
                                ByteString bytes = codedInputStream.readBytes();
                                this.bitField0_ = 1 | this.bitField0_;
                                this.ipAddress_ = bytes;
                            } else if (tag == 16) {
                                this.bitField0_ |= 2;
                                this.port_ = codedInputStream.readInt32();
                            } else if (tag != 24) {
                                if (!parseUnknownField(codedInputStream, builderNewBuilder, extensionRegistryLite, tag)) {
                                }
                            } else {
                                int i2 = codedInputStream.readEnum();
                                if (MessageStatus.valueOf(i2) == null) {
                                    builderNewBuilder.mergeVarintField(3, i2);
                                } else {
                                    this.bitField0_ |= 4;
                                    this.status_ = i2;
                                }
                            }
                        }
                        z2 = true;
                    } catch (InvalidProtocolBufferException e2) {
                        throw e2.setUnfinishedMessage(this);
                    } catch (IOException e3) {
                        throw new InvalidProtocolBufferException(e3).setUnfinishedMessage(this);
                    }
                } catch (Throwable th) {
                    this.unknownFields = builderNewBuilder.build();
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            this.unknownFields = builderNewBuilder.build();
            makeExtensionsImmutable();
        }

        public static WifiStartResponse parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) {
            return (WifiStartResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static WifiStartResponse parseFrom(CodedInputStream codedInputStream) {
            return (WifiStartResponse) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static WifiStartResponse parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
            return (WifiStartResponse) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }
    }

    public interface WifiStartResponseOrBuilder extends MessageOrBuilder {
        String getIpAddress();

        ByteString getIpAddressBytes();

        int getPort();

        MessageStatus getStatus();

        boolean hasIpAddress();

        boolean hasPort();

        boolean hasStatus();
    }

    public static final class WifiVersionRequest extends GeneratedMessageV3 implements WifiVersionRequestOrBuilder {
        public static final int HEADUNIT_INFO_FIELD_NUMBER = 5;
        public static final int MAJOR_VERSION_FIELD_NUMBER = 1;
        public static final int MINOR_VERSION_FIELD_NUMBER = 2;
        public static final int SUPPORTED_WIFI_CHANNELS_FIELD_NUMBER = 4;
        public static final int SUPPORTED_WIFI_CHANNEL_TYPE_FIELD_NUMBER = 3;
        public static final int WIFI_PROJECTION_PROTOCOL_INFO_FIELD_NUMBER = 6;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private Common.HeadUnitInfo headunitInfo_;
        private int majorVersion_;
        private byte memoizedIsInitialized;
        private int minorVersion_;
        private int supportedWifiChannelType_;
        private Internal.IntList supportedWifiChannels_;
        private WifiProjectionProtocolInfo wifiProjectionProtocolInfo_;
        private static final WifiVersionRequest DEFAULT_INSTANCE = new WifiVersionRequest();

        @Deprecated
        public static final Parser<WifiVersionRequest> PARSER = new AbstractParser<WifiVersionRequest>() { // from class: com.google.android.projection.proto.WifiDiscoveryProtos.WifiVersionRequest.1
            @Override // com.google.protobuf.Parser
            public WifiVersionRequest parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
                return new WifiVersionRequest(codedInputStream, extensionRegistryLite);
            }
        };

        public static WifiVersionRequest getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return WifiDiscoveryProtos.internal_static_wifi_discovery_WifiVersionRequest_descriptor;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static WifiVersionRequest parseDelimitedFrom(InputStream inputStream) {
            return (WifiVersionRequest) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static WifiVersionRequest parseFrom(ByteBuffer byteBuffer) {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Parser<WifiVersionRequest> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof WifiVersionRequest)) {
                return super.equals(obj);
            }
            WifiVersionRequest wifiVersionRequest = (WifiVersionRequest) obj;
            if (hasMajorVersion() != wifiVersionRequest.hasMajorVersion()) {
                return false;
            }
            if ((hasMajorVersion() && getMajorVersion() != wifiVersionRequest.getMajorVersion()) || hasMinorVersion() != wifiVersionRequest.hasMinorVersion()) {
                return false;
            }
            if ((hasMinorVersion() && getMinorVersion() != wifiVersionRequest.getMinorVersion()) || hasSupportedWifiChannelType() != wifiVersionRequest.hasSupportedWifiChannelType()) {
                return false;
            }
            if ((hasSupportedWifiChannelType() && this.supportedWifiChannelType_ != wifiVersionRequest.supportedWifiChannelType_) || !getSupportedWifiChannelsList().equals(wifiVersionRequest.getSupportedWifiChannelsList()) || hasHeadunitInfo() != wifiVersionRequest.hasHeadunitInfo()) {
                return false;
            }
            if ((!hasHeadunitInfo() || getHeadunitInfo().equals(wifiVersionRequest.getHeadunitInfo())) && hasWifiProjectionProtocolInfo() == wifiVersionRequest.hasWifiProjectionProtocolInfo()) {
                return (!hasWifiProjectionProtocolInfo() || getWifiProjectionProtocolInfo().equals(wifiVersionRequest.getWifiProjectionProtocolInfo())) && this.unknownFields.equals(wifiVersionRequest.unknownFields);
            }
            return false;
        }

        @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiVersionRequestOrBuilder
        public Common.HeadUnitInfo getHeadunitInfo() {
            Common.HeadUnitInfo headUnitInfo = this.headunitInfo_;
            return headUnitInfo == null ? Common.HeadUnitInfo.getDefaultInstance() : headUnitInfo;
        }

        @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiVersionRequestOrBuilder
        public Common.HeadUnitInfoOrBuilder getHeadunitInfoOrBuilder() {
            Common.HeadUnitInfo headUnitInfo = this.headunitInfo_;
            return headUnitInfo == null ? Common.HeadUnitInfo.getDefaultInstance() : headUnitInfo;
        }

        @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiVersionRequestOrBuilder
        public int getMajorVersion() {
            return this.majorVersion_;
        }

        @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiVersionRequestOrBuilder
        public int getMinorVersion() {
            return this.minorVersion_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<WifiVersionRequest> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i2 = this.memoizedSize;
            if (i2 != -1) {
                return i2;
            }
            int iComputeInt32Size = (this.bitField0_ & 1) != 0 ? CodedOutputStream.computeInt32Size(1, this.majorVersion_) + 0 : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeInt32Size += CodedOutputStream.computeInt32Size(2, this.minorVersion_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeInt32Size += CodedOutputStream.computeEnumSize(3, this.supportedWifiChannelType_);
            }
            int iComputeInt32SizeNoTag = 0;
            for (int i3 = 0; i3 < this.supportedWifiChannels_.size(); i3++) {
                iComputeInt32SizeNoTag += CodedOutputStream.computeInt32SizeNoTag(this.supportedWifiChannels_.getInt(i3));
            }
            int size = (getSupportedWifiChannelsList().size() * 1) + iComputeInt32Size + iComputeInt32SizeNoTag;
            if ((this.bitField0_ & 8) != 0) {
                size += CodedOutputStream.computeMessageSize(5, getHeadunitInfo());
            }
            if ((this.bitField0_ & 16) != 0) {
                size += CodedOutputStream.computeMessageSize(6, getWifiProjectionProtocolInfo());
            }
            int serializedSize = this.unknownFields.getSerializedSize() + size;
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiVersionRequestOrBuilder
        public WifiChannelType getSupportedWifiChannelType() {
            WifiChannelType wifiChannelTypeValueOf = WifiChannelType.valueOf(this.supportedWifiChannelType_);
            return wifiChannelTypeValueOf == null ? WifiChannelType.CHANNELS_5GHZ_ONLY : wifiChannelTypeValueOf;
        }

        @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiVersionRequestOrBuilder
        public int getSupportedWifiChannels(int i2) {
            return this.supportedWifiChannels_.getInt(i2);
        }

        @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiVersionRequestOrBuilder
        public int getSupportedWifiChannelsCount() {
            return this.supportedWifiChannels_.size();
        }

        @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiVersionRequestOrBuilder
        public List<Integer> getSupportedWifiChannelsList() {
            return this.supportedWifiChannels_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiVersionRequestOrBuilder
        public WifiProjectionProtocolInfo getWifiProjectionProtocolInfo() {
            WifiProjectionProtocolInfo wifiProjectionProtocolInfo = this.wifiProjectionProtocolInfo_;
            return wifiProjectionProtocolInfo == null ? WifiProjectionProtocolInfo.getDefaultInstance() : wifiProjectionProtocolInfo;
        }

        @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiVersionRequestOrBuilder
        public WifiProjectionProtocolInfoOrBuilder getWifiProjectionProtocolInfoOrBuilder() {
            WifiProjectionProtocolInfo wifiProjectionProtocolInfo = this.wifiProjectionProtocolInfo_;
            return wifiProjectionProtocolInfo == null ? WifiProjectionProtocolInfo.getDefaultInstance() : wifiProjectionProtocolInfo;
        }

        @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiVersionRequestOrBuilder
        public boolean hasHeadunitInfo() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiVersionRequestOrBuilder
        public boolean hasMajorVersion() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiVersionRequestOrBuilder
        public boolean hasMinorVersion() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiVersionRequestOrBuilder
        public boolean hasSupportedWifiChannelType() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiVersionRequestOrBuilder
        public boolean hasWifiProjectionProtocolInfo() {
            return (this.bitField0_ & 16) != 0;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i2 = this.memoizedHashCode;
            if (i2 != 0) {
                return i2;
            }
            int iHashCode = getDescriptor().hashCode() + MetricsProto.MetricsEvent.APP_SPECIAL_PERMISSION_PREMIUM_SMS_DENY;
            if (hasMajorVersion()) {
                iHashCode = m.D(iHashCode, 37, 1, 53) + getMajorVersion();
            }
            if (hasMinorVersion()) {
                iHashCode = m.D(iHashCode, 37, 2, 53) + getMinorVersion();
            }
            if (hasSupportedWifiChannelType()) {
                iHashCode = m.D(iHashCode, 37, 3, 53) + this.supportedWifiChannelType_;
            }
            if (getSupportedWifiChannelsCount() > 0) {
                iHashCode = m.D(iHashCode, 37, 4, 53) + getSupportedWifiChannelsList().hashCode();
            }
            if (hasHeadunitInfo()) {
                iHashCode = m.D(iHashCode, 37, 5, 53) + getHeadunitInfo().hashCode();
            }
            if (hasWifiProjectionProtocolInfo()) {
                iHashCode = m.D(iHashCode, 37, 6, 53) + getWifiProjectionProtocolInfo().hashCode();
            }
            int iHashCode2 = this.unknownFields.hashCode() + (iHashCode * 29);
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return WifiDiscoveryProtos.internal_static_wifi_discovery_WifiVersionRequest_fieldAccessorTable.ensureFieldAccessorsInitialized(WifiVersionRequest.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b2 = this.memoizedIsInitialized;
            if (b2 == 1) {
                return true;
            }
            if (b2 == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
            return new WifiVersionRequest();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) {
            if ((this.bitField0_ & 1) != 0) {
                codedOutputStream.writeInt32(1, this.majorVersion_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeInt32(2, this.minorVersion_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeEnum(3, this.supportedWifiChannelType_);
            }
            for (int i2 = 0; i2 < this.supportedWifiChannels_.size(); i2++) {
                codedOutputStream.writeInt32(4, this.supportedWifiChannels_.getInt(i2));
            }
            if ((this.bitField0_ & 8) != 0) {
                codedOutputStream.writeMessage(5, getHeadunitInfo());
            }
            if ((this.bitField0_ & 16) != 0) {
                codedOutputStream.writeMessage(6, getWifiProjectionProtocolInfo());
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements WifiVersionRequestOrBuilder {
            private int bitField0_;
            private SingleFieldBuilderV3<Common.HeadUnitInfo, Common.HeadUnitInfo.Builder, Common.HeadUnitInfoOrBuilder> headunitInfoBuilder_;
            private Common.HeadUnitInfo headunitInfo_;
            private int majorVersion_;
            private int minorVersion_;
            private int supportedWifiChannelType_;
            private Internal.IntList supportedWifiChannels_;
            private SingleFieldBuilderV3<WifiProjectionProtocolInfo, WifiProjectionProtocolInfo.Builder, WifiProjectionProtocolInfoOrBuilder> wifiProjectionProtocolInfoBuilder_;
            private WifiProjectionProtocolInfo wifiProjectionProtocolInfo_;

            private void ensureSupportedWifiChannelsIsMutable() {
                if ((this.bitField0_ & 8) == 0) {
                    this.supportedWifiChannels_ = GeneratedMessageV3.mutableCopy(this.supportedWifiChannels_);
                    this.bitField0_ |= 8;
                }
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return WifiDiscoveryProtos.internal_static_wifi_discovery_WifiVersionRequest_descriptor;
            }

            private SingleFieldBuilderV3<Common.HeadUnitInfo, Common.HeadUnitInfo.Builder, Common.HeadUnitInfoOrBuilder> getHeadunitInfoFieldBuilder() {
                if (this.headunitInfoBuilder_ == null) {
                    this.headunitInfoBuilder_ = new SingleFieldBuilderV3<>(getHeadunitInfo(), getParentForChildren(), isClean());
                    this.headunitInfo_ = null;
                }
                return this.headunitInfoBuilder_;
            }

            private SingleFieldBuilderV3<WifiProjectionProtocolInfo, WifiProjectionProtocolInfo.Builder, WifiProjectionProtocolInfoOrBuilder> getWifiProjectionProtocolInfoFieldBuilder() {
                if (this.wifiProjectionProtocolInfoBuilder_ == null) {
                    this.wifiProjectionProtocolInfoBuilder_ = new SingleFieldBuilderV3<>(getWifiProjectionProtocolInfo(), getParentForChildren(), isClean());
                    this.wifiProjectionProtocolInfo_ = null;
                }
                return this.wifiProjectionProtocolInfoBuilder_;
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    getHeadunitInfoFieldBuilder();
                    getWifiProjectionProtocolInfoFieldBuilder();
                }
            }

            public Builder addAllSupportedWifiChannels(Iterable<? extends Integer> iterable) {
                ensureSupportedWifiChannelsIsMutable();
                AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.supportedWifiChannels_);
                onChanged();
                return this;
            }

            public Builder addSupportedWifiChannels(int i2) {
                ensureSupportedWifiChannelsIsMutable();
                this.supportedWifiChannels_.addInt(i2);
                onChanged();
                return this;
            }

            public Builder clearHeadunitInfo() {
                SingleFieldBuilderV3<Common.HeadUnitInfo, Common.HeadUnitInfo.Builder, Common.HeadUnitInfoOrBuilder> singleFieldBuilderV3 = this.headunitInfoBuilder_;
                if (singleFieldBuilderV3 == null) {
                    this.headunitInfo_ = null;
                    onChanged();
                } else {
                    singleFieldBuilderV3.clear();
                }
                this.bitField0_ &= -17;
                return this;
            }

            public Builder clearMajorVersion() {
                this.bitField0_ &= -2;
                this.majorVersion_ = 0;
                onChanged();
                return this;
            }

            public Builder clearMinorVersion() {
                this.bitField0_ &= -3;
                this.minorVersion_ = 0;
                onChanged();
                return this;
            }

            public Builder clearSupportedWifiChannelType() {
                this.bitField0_ &= -5;
                this.supportedWifiChannelType_ = 0;
                onChanged();
                return this;
            }

            public Builder clearSupportedWifiChannels() {
                this.supportedWifiChannels_ = GeneratedMessageV3.emptyIntList();
                this.bitField0_ &= -9;
                onChanged();
                return this;
            }

            public Builder clearWifiProjectionProtocolInfo() {
                SingleFieldBuilderV3<WifiProjectionProtocolInfo, WifiProjectionProtocolInfo.Builder, WifiProjectionProtocolInfoOrBuilder> singleFieldBuilderV3 = this.wifiProjectionProtocolInfoBuilder_;
                if (singleFieldBuilderV3 == null) {
                    this.wifiProjectionProtocolInfo_ = null;
                    onChanged();
                } else {
                    singleFieldBuilderV3.clear();
                }
                this.bitField0_ &= -33;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return WifiDiscoveryProtos.internal_static_wifi_discovery_WifiVersionRequest_descriptor;
            }

            @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiVersionRequestOrBuilder
            public Common.HeadUnitInfo getHeadunitInfo() {
                SingleFieldBuilderV3<Common.HeadUnitInfo, Common.HeadUnitInfo.Builder, Common.HeadUnitInfoOrBuilder> singleFieldBuilderV3 = this.headunitInfoBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return (Common.HeadUnitInfo) singleFieldBuilderV3.getMessage();
                }
                Common.HeadUnitInfo headUnitInfo = this.headunitInfo_;
                return headUnitInfo == null ? Common.HeadUnitInfo.getDefaultInstance() : headUnitInfo;
            }

            public Common.HeadUnitInfo.Builder getHeadunitInfoBuilder() {
                this.bitField0_ |= 16;
                onChanged();
                return (Common.HeadUnitInfo.Builder) getHeadunitInfoFieldBuilder().getBuilder();
            }

            @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiVersionRequestOrBuilder
            public Common.HeadUnitInfoOrBuilder getHeadunitInfoOrBuilder() {
                SingleFieldBuilderV3<Common.HeadUnitInfo, Common.HeadUnitInfo.Builder, Common.HeadUnitInfoOrBuilder> singleFieldBuilderV3 = this.headunitInfoBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return (Common.HeadUnitInfoOrBuilder) singleFieldBuilderV3.getMessageOrBuilder();
                }
                Common.HeadUnitInfo headUnitInfo = this.headunitInfo_;
                return headUnitInfo == null ? Common.HeadUnitInfo.getDefaultInstance() : headUnitInfo;
            }

            @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiVersionRequestOrBuilder
            public int getMajorVersion() {
                return this.majorVersion_;
            }

            @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiVersionRequestOrBuilder
            public int getMinorVersion() {
                return this.minorVersion_;
            }

            @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiVersionRequestOrBuilder
            public WifiChannelType getSupportedWifiChannelType() {
                WifiChannelType wifiChannelTypeValueOf = WifiChannelType.valueOf(this.supportedWifiChannelType_);
                return wifiChannelTypeValueOf == null ? WifiChannelType.CHANNELS_5GHZ_ONLY : wifiChannelTypeValueOf;
            }

            @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiVersionRequestOrBuilder
            public int getSupportedWifiChannels(int i2) {
                return this.supportedWifiChannels_.getInt(i2);
            }

            @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiVersionRequestOrBuilder
            public int getSupportedWifiChannelsCount() {
                return this.supportedWifiChannels_.size();
            }

            @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiVersionRequestOrBuilder
            public List<Integer> getSupportedWifiChannelsList() {
                return (this.bitField0_ & 8) != 0 ? Collections.unmodifiableList(this.supportedWifiChannels_) : this.supportedWifiChannels_;
            }

            @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiVersionRequestOrBuilder
            public WifiProjectionProtocolInfo getWifiProjectionProtocolInfo() {
                SingleFieldBuilderV3<WifiProjectionProtocolInfo, WifiProjectionProtocolInfo.Builder, WifiProjectionProtocolInfoOrBuilder> singleFieldBuilderV3 = this.wifiProjectionProtocolInfoBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return (WifiProjectionProtocolInfo) singleFieldBuilderV3.getMessage();
                }
                WifiProjectionProtocolInfo wifiProjectionProtocolInfo = this.wifiProjectionProtocolInfo_;
                return wifiProjectionProtocolInfo == null ? WifiProjectionProtocolInfo.getDefaultInstance() : wifiProjectionProtocolInfo;
            }

            public WifiProjectionProtocolInfo.Builder getWifiProjectionProtocolInfoBuilder() {
                this.bitField0_ |= 32;
                onChanged();
                return (WifiProjectionProtocolInfo.Builder) getWifiProjectionProtocolInfoFieldBuilder().getBuilder();
            }

            @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiVersionRequestOrBuilder
            public WifiProjectionProtocolInfoOrBuilder getWifiProjectionProtocolInfoOrBuilder() {
                SingleFieldBuilderV3<WifiProjectionProtocolInfo, WifiProjectionProtocolInfo.Builder, WifiProjectionProtocolInfoOrBuilder> singleFieldBuilderV3 = this.wifiProjectionProtocolInfoBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return (WifiProjectionProtocolInfoOrBuilder) singleFieldBuilderV3.getMessageOrBuilder();
                }
                WifiProjectionProtocolInfo wifiProjectionProtocolInfo = this.wifiProjectionProtocolInfo_;
                return wifiProjectionProtocolInfo == null ? WifiProjectionProtocolInfo.getDefaultInstance() : wifiProjectionProtocolInfo;
            }

            @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiVersionRequestOrBuilder
            public boolean hasHeadunitInfo() {
                return (this.bitField0_ & 16) != 0;
            }

            @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiVersionRequestOrBuilder
            public boolean hasMajorVersion() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiVersionRequestOrBuilder
            public boolean hasMinorVersion() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiVersionRequestOrBuilder
            public boolean hasSupportedWifiChannelType() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiVersionRequestOrBuilder
            public boolean hasWifiProjectionProtocolInfo() {
                return (this.bitField0_ & 32) != 0;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return WifiDiscoveryProtos.internal_static_wifi_discovery_WifiVersionRequest_fieldAccessorTable.ensureFieldAccessorsInitialized(WifiVersionRequest.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public Builder mergeHeadunitInfo(Common.HeadUnitInfo headUnitInfo) {
                Common.HeadUnitInfo headUnitInfo2;
                SingleFieldBuilderV3<Common.HeadUnitInfo, Common.HeadUnitInfo.Builder, Common.HeadUnitInfoOrBuilder> singleFieldBuilderV3 = this.headunitInfoBuilder_;
                if (singleFieldBuilderV3 == null) {
                    if ((this.bitField0_ & 16) == 0 || (headUnitInfo2 = this.headunitInfo_) == null || headUnitInfo2 == Common.HeadUnitInfo.getDefaultInstance()) {
                        this.headunitInfo_ = headUnitInfo;
                    } else {
                        this.headunitInfo_ = Common.HeadUnitInfo.newBuilder(this.headunitInfo_).mergeFrom(headUnitInfo).buildPartial();
                    }
                    onChanged();
                } else {
                    singleFieldBuilderV3.mergeFrom(headUnitInfo);
                }
                this.bitField0_ |= 16;
                return this;
            }

            public Builder mergeWifiProjectionProtocolInfo(WifiProjectionProtocolInfo wifiProjectionProtocolInfo) {
                WifiProjectionProtocolInfo wifiProjectionProtocolInfo2;
                SingleFieldBuilderV3<WifiProjectionProtocolInfo, WifiProjectionProtocolInfo.Builder, WifiProjectionProtocolInfoOrBuilder> singleFieldBuilderV3 = this.wifiProjectionProtocolInfoBuilder_;
                if (singleFieldBuilderV3 == null) {
                    if ((this.bitField0_ & 32) == 0 || (wifiProjectionProtocolInfo2 = this.wifiProjectionProtocolInfo_) == null || wifiProjectionProtocolInfo2 == WifiProjectionProtocolInfo.getDefaultInstance()) {
                        this.wifiProjectionProtocolInfo_ = wifiProjectionProtocolInfo;
                    } else {
                        this.wifiProjectionProtocolInfo_ = WifiProjectionProtocolInfo.newBuilder(this.wifiProjectionProtocolInfo_).mergeFrom(wifiProjectionProtocolInfo).buildPartial();
                    }
                    onChanged();
                } else {
                    singleFieldBuilderV3.mergeFrom(wifiProjectionProtocolInfo);
                }
                this.bitField0_ |= 32;
                return this;
            }

            public Builder setHeadunitInfo(Common.HeadUnitInfo headUnitInfo) {
                SingleFieldBuilderV3<Common.HeadUnitInfo, Common.HeadUnitInfo.Builder, Common.HeadUnitInfoOrBuilder> singleFieldBuilderV3 = this.headunitInfoBuilder_;
                if (singleFieldBuilderV3 == null) {
                    headUnitInfo.getClass();
                    this.headunitInfo_ = headUnitInfo;
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(headUnitInfo);
                }
                this.bitField0_ |= 16;
                return this;
            }

            public Builder setMajorVersion(int i2) {
                this.bitField0_ |= 1;
                this.majorVersion_ = i2;
                onChanged();
                return this;
            }

            public Builder setMinorVersion(int i2) {
                this.bitField0_ |= 2;
                this.minorVersion_ = i2;
                onChanged();
                return this;
            }

            public Builder setSupportedWifiChannelType(WifiChannelType wifiChannelType) {
                wifiChannelType.getClass();
                this.bitField0_ |= 4;
                this.supportedWifiChannelType_ = wifiChannelType.getNumber();
                onChanged();
                return this;
            }

            public Builder setSupportedWifiChannels(int i2, int i3) {
                ensureSupportedWifiChannelsIsMutable();
                this.supportedWifiChannels_.setInt(i2, i3);
                onChanged();
                return this;
            }

            public Builder setWifiProjectionProtocolInfo(WifiProjectionProtocolInfo wifiProjectionProtocolInfo) {
                SingleFieldBuilderV3<WifiProjectionProtocolInfo, WifiProjectionProtocolInfo.Builder, WifiProjectionProtocolInfoOrBuilder> singleFieldBuilderV3 = this.wifiProjectionProtocolInfoBuilder_;
                if (singleFieldBuilderV3 == null) {
                    wifiProjectionProtocolInfo.getClass();
                    this.wifiProjectionProtocolInfo_ = wifiProjectionProtocolInfo;
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(wifiProjectionProtocolInfo);
                }
                this.bitField0_ |= 32;
                return this;
            }

            private Builder() {
                this.supportedWifiChannelType_ = 0;
                this.supportedWifiChannels_ = GeneratedMessageV3.emptyIntList();
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public WifiVersionRequest build() {
                WifiVersionRequest wifiVersionRequestBuildPartial = buildPartial();
                if (wifiVersionRequestBuildPartial.isInitialized()) {
                    return wifiVersionRequestBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) wifiVersionRequestBuildPartial);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public WifiVersionRequest buildPartial() {
                int i2;
                WifiVersionRequest wifiVersionRequest = new WifiVersionRequest(this);
                int i3 = this.bitField0_;
                if ((i3 & 1) != 0) {
                    wifiVersionRequest.majorVersion_ = this.majorVersion_;
                    i2 = 1;
                } else {
                    i2 = 0;
                }
                if ((i3 & 2) != 0) {
                    wifiVersionRequest.minorVersion_ = this.minorVersion_;
                    i2 |= 2;
                }
                if ((i3 & 4) != 0) {
                    i2 |= 4;
                }
                wifiVersionRequest.supportedWifiChannelType_ = this.supportedWifiChannelType_;
                if ((this.bitField0_ & 8) != 0) {
                    this.supportedWifiChannels_.makeImmutable();
                    this.bitField0_ &= -9;
                }
                wifiVersionRequest.supportedWifiChannels_ = this.supportedWifiChannels_;
                if ((i3 & 16) != 0) {
                    SingleFieldBuilderV3<Common.HeadUnitInfo, Common.HeadUnitInfo.Builder, Common.HeadUnitInfoOrBuilder> singleFieldBuilderV3 = this.headunitInfoBuilder_;
                    if (singleFieldBuilderV3 == null) {
                        wifiVersionRequest.headunitInfo_ = this.headunitInfo_;
                    } else {
                        wifiVersionRequest.headunitInfo_ = (Common.HeadUnitInfo) singleFieldBuilderV3.build();
                    }
                    i2 |= 8;
                }
                if ((i3 & 32) != 0) {
                    SingleFieldBuilderV3<WifiProjectionProtocolInfo, WifiProjectionProtocolInfo.Builder, WifiProjectionProtocolInfoOrBuilder> singleFieldBuilderV4 = this.wifiProjectionProtocolInfoBuilder_;
                    if (singleFieldBuilderV4 == null) {
                        wifiVersionRequest.wifiProjectionProtocolInfo_ = this.wifiProjectionProtocolInfo_;
                    } else {
                        wifiVersionRequest.wifiProjectionProtocolInfo_ = (WifiProjectionProtocolInfo) singleFieldBuilderV4.build();
                    }
                    i2 |= 16;
                }
                wifiVersionRequest.bitField0_ = i2;
                onBuilt();
                return wifiVersionRequest;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public WifiVersionRequest getDefaultInstanceForType() {
                return WifiVersionRequest.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.setField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i2, Object obj) {
                return (Builder) super.setRepeatedField(fieldDescriptor, i2, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public final Builder setUnknownFields(UnknownFieldSet unknownFieldSet) {
                return (Builder) super.setUnknownFields(unknownFieldSet);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                return (Builder) super.clearOneof(oneofDescriptor);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeUnknownFields(UnknownFieldSet unknownFieldSet) {
                return (Builder) super.mergeUnknownFields(unknownFieldSet);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.majorVersion_ = 0;
                int i2 = this.bitField0_ & (-2);
                this.minorVersion_ = 0;
                this.supportedWifiChannelType_ = 0;
                this.bitField0_ = i2 & (-3) & (-5);
                this.supportedWifiChannels_ = GeneratedMessageV3.emptyIntList();
                this.bitField0_ &= -9;
                SingleFieldBuilderV3<Common.HeadUnitInfo, Common.HeadUnitInfo.Builder, Common.HeadUnitInfoOrBuilder> singleFieldBuilderV3 = this.headunitInfoBuilder_;
                if (singleFieldBuilderV3 == null) {
                    this.headunitInfo_ = null;
                } else {
                    singleFieldBuilderV3.clear();
                }
                this.bitField0_ &= -17;
                SingleFieldBuilderV3<WifiProjectionProtocolInfo, WifiProjectionProtocolInfo.Builder, WifiProjectionProtocolInfoOrBuilder> singleFieldBuilderV4 = this.wifiProjectionProtocolInfoBuilder_;
                if (singleFieldBuilderV4 == null) {
                    this.wifiProjectionProtocolInfo_ = null;
                } else {
                    singleFieldBuilderV4.clear();
                }
                this.bitField0_ &= -33;
                return this;
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.supportedWifiChannelType_ = 0;
                this.supportedWifiChannels_ = GeneratedMessageV3.emptyIntList();
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* JADX INFO: renamed from: clone */
            public Builder mo58clone() {
                return (Builder) super.mo58clone();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof WifiVersionRequest) {
                    return mergeFrom((WifiVersionRequest) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder setHeadunitInfo(Common.HeadUnitInfo.Builder builder) {
                SingleFieldBuilderV3<Common.HeadUnitInfo, Common.HeadUnitInfo.Builder, Common.HeadUnitInfoOrBuilder> singleFieldBuilderV3 = this.headunitInfoBuilder_;
                if (singleFieldBuilderV3 == null) {
                    this.headunitInfo_ = builder.build();
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(builder.build());
                }
                this.bitField0_ |= 16;
                return this;
            }

            public Builder setWifiProjectionProtocolInfo(WifiProjectionProtocolInfo.Builder builder) {
                SingleFieldBuilderV3<WifiProjectionProtocolInfo, WifiProjectionProtocolInfo.Builder, WifiProjectionProtocolInfoOrBuilder> singleFieldBuilderV3 = this.wifiProjectionProtocolInfoBuilder_;
                if (singleFieldBuilderV3 == null) {
                    this.wifiProjectionProtocolInfo_ = builder.build();
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(builder.build());
                }
                this.bitField0_ |= 32;
                return this;
            }

            public Builder mergeFrom(WifiVersionRequest wifiVersionRequest) {
                if (wifiVersionRequest == WifiVersionRequest.getDefaultInstance()) {
                    return this;
                }
                if (wifiVersionRequest.hasMajorVersion()) {
                    setMajorVersion(wifiVersionRequest.getMajorVersion());
                }
                if (wifiVersionRequest.hasMinorVersion()) {
                    setMinorVersion(wifiVersionRequest.getMinorVersion());
                }
                if (wifiVersionRequest.hasSupportedWifiChannelType()) {
                    setSupportedWifiChannelType(wifiVersionRequest.getSupportedWifiChannelType());
                }
                if (!wifiVersionRequest.supportedWifiChannels_.isEmpty()) {
                    if (this.supportedWifiChannels_.isEmpty()) {
                        this.supportedWifiChannels_ = wifiVersionRequest.supportedWifiChannels_;
                        this.bitField0_ &= -9;
                    } else {
                        ensureSupportedWifiChannelsIsMutable();
                        this.supportedWifiChannels_.addAll(wifiVersionRequest.supportedWifiChannels_);
                    }
                    onChanged();
                }
                if (wifiVersionRequest.hasHeadunitInfo()) {
                    mergeHeadunitInfo(wifiVersionRequest.getHeadunitInfo());
                }
                if (wifiVersionRequest.hasWifiProjectionProtocolInfo()) {
                    mergeWifiProjectionProtocolInfo(wifiVersionRequest.getWifiProjectionProtocolInfo());
                }
                mergeUnknownFields(((GeneratedMessageV3) wifiVersionRequest).unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Code duplicated, block: B:16:0x0021  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
                WifiVersionRequest wifiVersionRequest = null;
                try {
                    try {
                        WifiVersionRequest partialFrom = WifiVersionRequest.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                        if (partialFrom != null) {
                            mergeFrom(partialFrom);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e2) {
                        WifiVersionRequest wifiVersionRequest2 = (WifiVersionRequest) e2.getUnfinishedMessage();
                        try {
                            throw e2.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            wifiVersionRequest = wifiVersionRequest2;
                            if (wifiVersionRequest != null) {
                                mergeFrom(wifiVersionRequest);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (wifiVersionRequest != null) {
                        mergeFrom(wifiVersionRequest);
                    }
                    throw th;
                }
            }
        }

        public static Builder newBuilder(WifiVersionRequest wifiVersionRequest) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(wifiVersionRequest);
        }

        public static WifiVersionRequest parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        private WifiVersionRequest(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static WifiVersionRequest parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) {
            return (WifiVersionRequest) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static WifiVersionRequest parseFrom(ByteString byteString) {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public WifiVersionRequest getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        public static WifiVersionRequest parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private WifiVersionRequest() {
            this.memoizedIsInitialized = (byte) -1;
            this.supportedWifiChannelType_ = 0;
            this.supportedWifiChannels_ = GeneratedMessageV3.emptyIntList();
        }

        public static WifiVersionRequest parseFrom(byte[] bArr) {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static WifiVersionRequest parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static WifiVersionRequest parseFrom(InputStream inputStream) {
            return (WifiVersionRequest) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private WifiVersionRequest(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
            this();
            extensionRegistryLite.getClass();
            UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
            boolean z2 = false;
            int i2 = 0;
            while (!z2) {
                try {
                    try {
                        try {
                            int tag = codedInputStream.readTag();
                            if (tag != 0) {
                                if (tag == 8) {
                                    this.bitField0_ |= 1;
                                    this.majorVersion_ = codedInputStream.readInt32();
                                } else if (tag == 16) {
                                    this.bitField0_ |= 2;
                                    this.minorVersion_ = codedInputStream.readInt32();
                                } else if (tag == 24) {
                                    int i3 = codedInputStream.readEnum();
                                    if (WifiChannelType.valueOf(i3) == null) {
                                        builderNewBuilder.mergeVarintField(3, i3);
                                    } else {
                                        this.bitField0_ |= 4;
                                        this.supportedWifiChannelType_ = i3;
                                    }
                                } else if (tag == 32) {
                                    int i4 = (i2 == true ? 1 : 0) & 8;
                                    i2 = i2;
                                    if (i4 == 0) {
                                        this.supportedWifiChannels_ = GeneratedMessageV3.newIntList();
                                        i2 = (i2 == true ? 1 : 0) | 8;
                                    }
                                    this.supportedWifiChannels_.addInt(codedInputStream.readInt32());
                                } else if (tag != 34) {
                                    if (tag == 42) {
                                        Common.HeadUnitInfo.Builder builder = (this.bitField0_ & 8) != 0 ? this.headunitInfo_.toBuilder() : null;
                                        Common.HeadUnitInfo headUnitInfo = (Common.HeadUnitInfo) codedInputStream.readMessage(Common.HeadUnitInfo.PARSER, extensionRegistryLite);
                                        this.headunitInfo_ = headUnitInfo;
                                        if (builder != null) {
                                            builder.mergeFrom(headUnitInfo);
                                            this.headunitInfo_ = builder.buildPartial();
                                        }
                                        this.bitField0_ |= 8;
                                    } else if (tag != 50) {
                                        if (!parseUnknownField(codedInputStream, builderNewBuilder, extensionRegistryLite, tag)) {
                                        }
                                    } else {
                                        WifiProjectionProtocolInfo.Builder builder2 = (this.bitField0_ & 16) != 0 ? this.wifiProjectionProtocolInfo_.toBuilder() : null;
                                        WifiProjectionProtocolInfo wifiProjectionProtocolInfo = (WifiProjectionProtocolInfo) codedInputStream.readMessage(WifiProjectionProtocolInfo.PARSER, extensionRegistryLite);
                                        this.wifiProjectionProtocolInfo_ = wifiProjectionProtocolInfo;
                                        if (builder2 != null) {
                                            builder2.mergeFrom(wifiProjectionProtocolInfo);
                                            this.wifiProjectionProtocolInfo_ = builder2.buildPartial();
                                        }
                                        this.bitField0_ |= 16;
                                    }
                                } else {
                                    int iPushLimit = codedInputStream.pushLimit(codedInputStream.readRawVarint32());
                                    int i5 = (i2 == true ? 1 : 0) & 8;
                                    i2 = i2;
                                    if (i5 == 0 && codedInputStream.getBytesUntilLimit() > 0) {
                                        i2 = i2;
                                        this.supportedWifiChannels_ = GeneratedMessageV3.newIntList();
                                        i2 = (i2 == true ? 1 : 0) | 8;
                                    }
                                    i2 = i2;
                                    while (codedInputStream.getBytesUntilLimit() > 0) {
                                        this.supportedWifiChannels_.addInt(codedInputStream.readInt32());
                                    }
                                    codedInputStream.popLimit(iPushLimit);
                                }
                            }
                            z2 = true;
                        } catch (InvalidProtocolBufferException e2) {
                            throw e2.setUnfinishedMessage(this);
                        }
                    } catch (IOException e3) {
                        throw new InvalidProtocolBufferException(e3).setUnfinishedMessage(this);
                    }
                } catch (Throwable th) {
                    if (((i2 == true ? 1 : 0) & 8) != 0) {
                        this.supportedWifiChannels_.makeImmutable();
                    }
                    this.unknownFields = builderNewBuilder.build();
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            if (((i2 == true ? 1 : 0) & 8) != 0) {
                this.supportedWifiChannels_.makeImmutable();
            }
            this.unknownFields = builderNewBuilder.build();
            makeExtensionsImmutable();
        }

        public static WifiVersionRequest parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) {
            return (WifiVersionRequest) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static WifiVersionRequest parseFrom(CodedInputStream codedInputStream) {
            return (WifiVersionRequest) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static WifiVersionRequest parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
            return (WifiVersionRequest) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }
    }

    public interface WifiVersionRequestOrBuilder extends MessageOrBuilder {
        Common.HeadUnitInfo getHeadunitInfo();

        Common.HeadUnitInfoOrBuilder getHeadunitInfoOrBuilder();

        int getMajorVersion();

        int getMinorVersion();

        WifiChannelType getSupportedWifiChannelType();

        int getSupportedWifiChannels(int i2);

        int getSupportedWifiChannelsCount();

        List<Integer> getSupportedWifiChannelsList();

        WifiProjectionProtocolInfo getWifiProjectionProtocolInfo();

        WifiProjectionProtocolInfoOrBuilder getWifiProjectionProtocolInfoOrBuilder();

        boolean hasHeadunitInfo();

        boolean hasMajorVersion();

        boolean hasMinorVersion();

        boolean hasSupportedWifiChannelType();

        boolean hasWifiProjectionProtocolInfo();
    }

    public static final class WifiVersionResponse extends GeneratedMessageV3 implements WifiVersionResponseOrBuilder {
        public static final int DEVICE_SERIAL_FIELD_NUMBER = 3;
        public static final int MAJOR_VERSION_FIELD_NUMBER = 1;
        public static final int MINOR_VERSION_FIELD_NUMBER = 2;
        public static final int PHONE_INFO_FIELD_NUMBER = 6;
        public static final int SELECTED_WIFI_CHANNEL_TYPE_FIELD_NUMBER = 5;
        public static final int VERSION_STATUS_FIELD_NUMBER = 4;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private volatile Object deviceSerial_;
        private int majorVersion_;
        private byte memoizedIsInitialized;
        private int minorVersion_;
        private Common.PhoneInfo phoneInfo_;
        private int selectedWifiChannelType_;
        private int versionStatus_;
        private static final WifiVersionResponse DEFAULT_INSTANCE = new WifiVersionResponse();

        @Deprecated
        public static final Parser<WifiVersionResponse> PARSER = new AbstractParser<WifiVersionResponse>() { // from class: com.google.android.projection.proto.WifiDiscoveryProtos.WifiVersionResponse.1
            @Override // com.google.protobuf.Parser
            public WifiVersionResponse parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
                return new WifiVersionResponse(codedInputStream, extensionRegistryLite);
            }
        };

        public static WifiVersionResponse getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return WifiDiscoveryProtos.internal_static_wifi_discovery_WifiVersionResponse_descriptor;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static WifiVersionResponse parseDelimitedFrom(InputStream inputStream) {
            return (WifiVersionResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static WifiVersionResponse parseFrom(ByteBuffer byteBuffer) {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Parser<WifiVersionResponse> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof WifiVersionResponse)) {
                return super.equals(obj);
            }
            WifiVersionResponse wifiVersionResponse = (WifiVersionResponse) obj;
            if (hasMajorVersion() != wifiVersionResponse.hasMajorVersion()) {
                return false;
            }
            if ((hasMajorVersion() && getMajorVersion() != wifiVersionResponse.getMajorVersion()) || hasMinorVersion() != wifiVersionResponse.hasMinorVersion()) {
                return false;
            }
            if ((hasMinorVersion() && getMinorVersion() != wifiVersionResponse.getMinorVersion()) || hasDeviceSerial() != wifiVersionResponse.hasDeviceSerial()) {
                return false;
            }
            if ((hasDeviceSerial() && !getDeviceSerial().equals(wifiVersionResponse.getDeviceSerial())) || hasVersionStatus() != wifiVersionResponse.hasVersionStatus()) {
                return false;
            }
            if ((hasVersionStatus() && this.versionStatus_ != wifiVersionResponse.versionStatus_) || hasSelectedWifiChannelType() != wifiVersionResponse.hasSelectedWifiChannelType()) {
                return false;
            }
            if ((!hasSelectedWifiChannelType() || this.selectedWifiChannelType_ == wifiVersionResponse.selectedWifiChannelType_) && hasPhoneInfo() == wifiVersionResponse.hasPhoneInfo()) {
                return (!hasPhoneInfo() || getPhoneInfo().equals(wifiVersionResponse.getPhoneInfo())) && this.unknownFields.equals(wifiVersionResponse.unknownFields);
            }
            return false;
        }

        @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiVersionResponseOrBuilder
        public String getDeviceSerial() {
            Object obj = this.deviceSerial_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.deviceSerial_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiVersionResponseOrBuilder
        public ByteString getDeviceSerialBytes() {
            Object obj = this.deviceSerial_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.deviceSerial_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiVersionResponseOrBuilder
        public int getMajorVersion() {
            return this.majorVersion_;
        }

        @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiVersionResponseOrBuilder
        public int getMinorVersion() {
            return this.minorVersion_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<WifiVersionResponse> getParserForType() {
            return PARSER;
        }

        @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiVersionResponseOrBuilder
        public Common.PhoneInfo getPhoneInfo() {
            Common.PhoneInfo phoneInfo = this.phoneInfo_;
            return phoneInfo == null ? Common.PhoneInfo.getDefaultInstance() : phoneInfo;
        }

        @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiVersionResponseOrBuilder
        public Common.PhoneInfoOrBuilder getPhoneInfoOrBuilder() {
            Common.PhoneInfo phoneInfo = this.phoneInfo_;
            return phoneInfo == null ? Common.PhoneInfo.getDefaultInstance() : phoneInfo;
        }

        @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiVersionResponseOrBuilder
        public WifiChannelType getSelectedWifiChannelType() {
            WifiChannelType wifiChannelTypeValueOf = WifiChannelType.valueOf(this.selectedWifiChannelType_);
            return wifiChannelTypeValueOf == null ? WifiChannelType.CHANNELS_5GHZ_ONLY : wifiChannelTypeValueOf;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i2 = this.memoizedSize;
            if (i2 != -1) {
                return i2;
            }
            int iComputeInt32Size = (this.bitField0_ & 1) != 0 ? 0 + CodedOutputStream.computeInt32Size(1, this.majorVersion_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                iComputeInt32Size += CodedOutputStream.computeInt32Size(2, this.minorVersion_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeInt32Size += GeneratedMessageV3.computeStringSize(3, this.deviceSerial_);
            }
            if ((this.bitField0_ & 8) != 0) {
                iComputeInt32Size += CodedOutputStream.computeEnumSize(4, this.versionStatus_);
            }
            if ((this.bitField0_ & 16) != 0) {
                iComputeInt32Size += CodedOutputStream.computeEnumSize(5, this.selectedWifiChannelType_);
            }
            if ((this.bitField0_ & 32) != 0) {
                iComputeInt32Size += CodedOutputStream.computeMessageSize(6, getPhoneInfo());
            }
            int serializedSize = this.unknownFields.getSerializedSize() + iComputeInt32Size;
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiVersionResponseOrBuilder
        public MessageStatus getVersionStatus() {
            MessageStatus messageStatusValueOf = MessageStatus.valueOf(this.versionStatus_);
            return messageStatusValueOf == null ? MessageStatus.STATUS_UNSOLICITED_MESSAGE : messageStatusValueOf;
        }

        @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiVersionResponseOrBuilder
        public boolean hasDeviceSerial() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiVersionResponseOrBuilder
        public boolean hasMajorVersion() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiVersionResponseOrBuilder
        public boolean hasMinorVersion() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiVersionResponseOrBuilder
        public boolean hasPhoneInfo() {
            return (this.bitField0_ & 32) != 0;
        }

        @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiVersionResponseOrBuilder
        public boolean hasSelectedWifiChannelType() {
            return (this.bitField0_ & 16) != 0;
        }

        @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiVersionResponseOrBuilder
        public boolean hasVersionStatus() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i2 = this.memoizedHashCode;
            if (i2 != 0) {
                return i2;
            }
            int iHashCode = getDescriptor().hashCode() + MetricsProto.MetricsEvent.APP_SPECIAL_PERMISSION_PREMIUM_SMS_DENY;
            if (hasMajorVersion()) {
                iHashCode = m.D(iHashCode, 37, 1, 53) + getMajorVersion();
            }
            if (hasMinorVersion()) {
                iHashCode = m.D(iHashCode, 37, 2, 53) + getMinorVersion();
            }
            if (hasDeviceSerial()) {
                iHashCode = m.D(iHashCode, 37, 3, 53) + getDeviceSerial().hashCode();
            }
            if (hasVersionStatus()) {
                iHashCode = m.D(iHashCode, 37, 4, 53) + this.versionStatus_;
            }
            if (hasSelectedWifiChannelType()) {
                iHashCode = m.D(iHashCode, 37, 5, 53) + this.selectedWifiChannelType_;
            }
            if (hasPhoneInfo()) {
                iHashCode = m.D(iHashCode, 37, 6, 53) + getPhoneInfo().hashCode();
            }
            int iHashCode2 = this.unknownFields.hashCode() + (iHashCode * 29);
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return WifiDiscoveryProtos.internal_static_wifi_discovery_WifiVersionResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(WifiVersionResponse.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b2 = this.memoizedIsInitialized;
            if (b2 == 1) {
                return true;
            }
            if (b2 == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
            return new WifiVersionResponse();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) {
            if ((this.bitField0_ & 1) != 0) {
                codedOutputStream.writeInt32(1, this.majorVersion_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeInt32(2, this.minorVersion_);
            }
            if ((this.bitField0_ & 4) != 0) {
                GeneratedMessageV3.writeString(codedOutputStream, 3, this.deviceSerial_);
            }
            if ((this.bitField0_ & 8) != 0) {
                codedOutputStream.writeEnum(4, this.versionStatus_);
            }
            if ((this.bitField0_ & 16) != 0) {
                codedOutputStream.writeEnum(5, this.selectedWifiChannelType_);
            }
            if ((this.bitField0_ & 32) != 0) {
                codedOutputStream.writeMessage(6, getPhoneInfo());
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements WifiVersionResponseOrBuilder {
            private int bitField0_;
            private Object deviceSerial_;
            private int majorVersion_;
            private int minorVersion_;
            private SingleFieldBuilderV3<Common.PhoneInfo, Common.PhoneInfo.Builder, Common.PhoneInfoOrBuilder> phoneInfoBuilder_;
            private Common.PhoneInfo phoneInfo_;
            private int selectedWifiChannelType_;
            private int versionStatus_;

            public static final Descriptors.Descriptor getDescriptor() {
                return WifiDiscoveryProtos.internal_static_wifi_discovery_WifiVersionResponse_descriptor;
            }

            private SingleFieldBuilderV3<Common.PhoneInfo, Common.PhoneInfo.Builder, Common.PhoneInfoOrBuilder> getPhoneInfoFieldBuilder() {
                if (this.phoneInfoBuilder_ == null) {
                    this.phoneInfoBuilder_ = new SingleFieldBuilderV3<>(getPhoneInfo(), getParentForChildren(), isClean());
                    this.phoneInfo_ = null;
                }
                return this.phoneInfoBuilder_;
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    getPhoneInfoFieldBuilder();
                }
            }

            public Builder clearDeviceSerial() {
                this.bitField0_ &= -5;
                this.deviceSerial_ = WifiVersionResponse.getDefaultInstance().getDeviceSerial();
                onChanged();
                return this;
            }

            public Builder clearMajorVersion() {
                this.bitField0_ &= -2;
                this.majorVersion_ = 0;
                onChanged();
                return this;
            }

            public Builder clearMinorVersion() {
                this.bitField0_ &= -3;
                this.minorVersion_ = 0;
                onChanged();
                return this;
            }

            public Builder clearPhoneInfo() {
                SingleFieldBuilderV3<Common.PhoneInfo, Common.PhoneInfo.Builder, Common.PhoneInfoOrBuilder> singleFieldBuilderV3 = this.phoneInfoBuilder_;
                if (singleFieldBuilderV3 == null) {
                    this.phoneInfo_ = null;
                    onChanged();
                } else {
                    singleFieldBuilderV3.clear();
                }
                this.bitField0_ &= -33;
                return this;
            }

            public Builder clearSelectedWifiChannelType() {
                this.bitField0_ &= -17;
                this.selectedWifiChannelType_ = 0;
                onChanged();
                return this;
            }

            public Builder clearVersionStatus() {
                this.bitField0_ &= -9;
                this.versionStatus_ = 1;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return WifiDiscoveryProtos.internal_static_wifi_discovery_WifiVersionResponse_descriptor;
            }

            @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiVersionResponseOrBuilder
            public String getDeviceSerial() {
                Object obj = this.deviceSerial_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.deviceSerial_ = stringUtf8;
                }
                return stringUtf8;
            }

            @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiVersionResponseOrBuilder
            public ByteString getDeviceSerialBytes() {
                Object obj = this.deviceSerial_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.deviceSerial_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiVersionResponseOrBuilder
            public int getMajorVersion() {
                return this.majorVersion_;
            }

            @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiVersionResponseOrBuilder
            public int getMinorVersion() {
                return this.minorVersion_;
            }

            @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiVersionResponseOrBuilder
            public Common.PhoneInfo getPhoneInfo() {
                SingleFieldBuilderV3<Common.PhoneInfo, Common.PhoneInfo.Builder, Common.PhoneInfoOrBuilder> singleFieldBuilderV3 = this.phoneInfoBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return (Common.PhoneInfo) singleFieldBuilderV3.getMessage();
                }
                Common.PhoneInfo phoneInfo = this.phoneInfo_;
                return phoneInfo == null ? Common.PhoneInfo.getDefaultInstance() : phoneInfo;
            }

            public Common.PhoneInfo.Builder getPhoneInfoBuilder() {
                this.bitField0_ |= 32;
                onChanged();
                return (Common.PhoneInfo.Builder) getPhoneInfoFieldBuilder().getBuilder();
            }

            @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiVersionResponseOrBuilder
            public Common.PhoneInfoOrBuilder getPhoneInfoOrBuilder() {
                SingleFieldBuilderV3<Common.PhoneInfo, Common.PhoneInfo.Builder, Common.PhoneInfoOrBuilder> singleFieldBuilderV3 = this.phoneInfoBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return (Common.PhoneInfoOrBuilder) singleFieldBuilderV3.getMessageOrBuilder();
                }
                Common.PhoneInfo phoneInfo = this.phoneInfo_;
                return phoneInfo == null ? Common.PhoneInfo.getDefaultInstance() : phoneInfo;
            }

            @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiVersionResponseOrBuilder
            public WifiChannelType getSelectedWifiChannelType() {
                WifiChannelType wifiChannelTypeValueOf = WifiChannelType.valueOf(this.selectedWifiChannelType_);
                return wifiChannelTypeValueOf == null ? WifiChannelType.CHANNELS_5GHZ_ONLY : wifiChannelTypeValueOf;
            }

            @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiVersionResponseOrBuilder
            public MessageStatus getVersionStatus() {
                MessageStatus messageStatusValueOf = MessageStatus.valueOf(this.versionStatus_);
                return messageStatusValueOf == null ? MessageStatus.STATUS_UNSOLICITED_MESSAGE : messageStatusValueOf;
            }

            @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiVersionResponseOrBuilder
            public boolean hasDeviceSerial() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiVersionResponseOrBuilder
            public boolean hasMajorVersion() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiVersionResponseOrBuilder
            public boolean hasMinorVersion() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiVersionResponseOrBuilder
            public boolean hasPhoneInfo() {
                return (this.bitField0_ & 32) != 0;
            }

            @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiVersionResponseOrBuilder
            public boolean hasSelectedWifiChannelType() {
                return (this.bitField0_ & 16) != 0;
            }

            @Override // com.google.android.projection.proto.WifiDiscoveryProtos.WifiVersionResponseOrBuilder
            public boolean hasVersionStatus() {
                return (this.bitField0_ & 8) != 0;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return WifiDiscoveryProtos.internal_static_wifi_discovery_WifiVersionResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(WifiVersionResponse.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public Builder mergePhoneInfo(Common.PhoneInfo phoneInfo) {
                Common.PhoneInfo phoneInfo2;
                SingleFieldBuilderV3<Common.PhoneInfo, Common.PhoneInfo.Builder, Common.PhoneInfoOrBuilder> singleFieldBuilderV3 = this.phoneInfoBuilder_;
                if (singleFieldBuilderV3 == null) {
                    if ((this.bitField0_ & 32) == 0 || (phoneInfo2 = this.phoneInfo_) == null || phoneInfo2 == Common.PhoneInfo.getDefaultInstance()) {
                        this.phoneInfo_ = phoneInfo;
                    } else {
                        this.phoneInfo_ = Common.PhoneInfo.newBuilder(this.phoneInfo_).mergeFrom(phoneInfo).buildPartial();
                    }
                    onChanged();
                } else {
                    singleFieldBuilderV3.mergeFrom(phoneInfo);
                }
                this.bitField0_ |= 32;
                return this;
            }

            public Builder setDeviceSerial(String str) {
                str.getClass();
                this.bitField0_ |= 4;
                this.deviceSerial_ = str;
                onChanged();
                return this;
            }

            public Builder setDeviceSerialBytes(ByteString byteString) {
                byteString.getClass();
                this.bitField0_ |= 4;
                this.deviceSerial_ = byteString;
                onChanged();
                return this;
            }

            public Builder setMajorVersion(int i2) {
                this.bitField0_ |= 1;
                this.majorVersion_ = i2;
                onChanged();
                return this;
            }

            public Builder setMinorVersion(int i2) {
                this.bitField0_ |= 2;
                this.minorVersion_ = i2;
                onChanged();
                return this;
            }

            public Builder setPhoneInfo(Common.PhoneInfo phoneInfo) {
                SingleFieldBuilderV3<Common.PhoneInfo, Common.PhoneInfo.Builder, Common.PhoneInfoOrBuilder> singleFieldBuilderV3 = this.phoneInfoBuilder_;
                if (singleFieldBuilderV3 == null) {
                    phoneInfo.getClass();
                    this.phoneInfo_ = phoneInfo;
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(phoneInfo);
                }
                this.bitField0_ |= 32;
                return this;
            }

            public Builder setSelectedWifiChannelType(WifiChannelType wifiChannelType) {
                wifiChannelType.getClass();
                this.bitField0_ |= 16;
                this.selectedWifiChannelType_ = wifiChannelType.getNumber();
                onChanged();
                return this;
            }

            public Builder setVersionStatus(MessageStatus messageStatus) {
                messageStatus.getClass();
                this.bitField0_ |= 8;
                this.versionStatus_ = messageStatus.getNumber();
                onChanged();
                return this;
            }

            private Builder() {
                this.deviceSerial_ = "";
                this.versionStatus_ = 1;
                this.selectedWifiChannelType_ = 0;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public WifiVersionResponse build() {
                WifiVersionResponse wifiVersionResponseBuildPartial = buildPartial();
                if (wifiVersionResponseBuildPartial.isInitialized()) {
                    return wifiVersionResponseBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) wifiVersionResponseBuildPartial);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public WifiVersionResponse buildPartial() {
                int i2;
                WifiVersionResponse wifiVersionResponse = new WifiVersionResponse(this);
                int i3 = this.bitField0_;
                if ((i3 & 1) != 0) {
                    wifiVersionResponse.majorVersion_ = this.majorVersion_;
                    i2 = 1;
                } else {
                    i2 = 0;
                }
                if ((i3 & 2) != 0) {
                    wifiVersionResponse.minorVersion_ = this.minorVersion_;
                    i2 |= 2;
                }
                if ((i3 & 4) != 0) {
                    i2 |= 4;
                }
                wifiVersionResponse.deviceSerial_ = this.deviceSerial_;
                if ((i3 & 8) != 0) {
                    i2 |= 8;
                }
                wifiVersionResponse.versionStatus_ = this.versionStatus_;
                if ((i3 & 16) != 0) {
                    i2 |= 16;
                }
                wifiVersionResponse.selectedWifiChannelType_ = this.selectedWifiChannelType_;
                if ((i3 & 32) != 0) {
                    SingleFieldBuilderV3<Common.PhoneInfo, Common.PhoneInfo.Builder, Common.PhoneInfoOrBuilder> singleFieldBuilderV3 = this.phoneInfoBuilder_;
                    if (singleFieldBuilderV3 == null) {
                        wifiVersionResponse.phoneInfo_ = this.phoneInfo_;
                    } else {
                        wifiVersionResponse.phoneInfo_ = (Common.PhoneInfo) singleFieldBuilderV3.build();
                    }
                    i2 |= 32;
                }
                wifiVersionResponse.bitField0_ = i2;
                onBuilt();
                return wifiVersionResponse;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public WifiVersionResponse getDefaultInstanceForType() {
                return WifiVersionResponse.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.setField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i2, Object obj) {
                return (Builder) super.setRepeatedField(fieldDescriptor, i2, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public final Builder setUnknownFields(UnknownFieldSet unknownFieldSet) {
                return (Builder) super.setUnknownFields(unknownFieldSet);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                return (Builder) super.clearOneof(oneofDescriptor);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeUnknownFields(UnknownFieldSet unknownFieldSet) {
                return (Builder) super.mergeUnknownFields(unknownFieldSet);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.majorVersion_ = 0;
                int i2 = this.bitField0_ & (-2);
                this.minorVersion_ = 0;
                this.deviceSerial_ = "";
                this.versionStatus_ = 1;
                this.selectedWifiChannelType_ = 0;
                this.bitField0_ = i2 & (-3) & (-5) & (-9) & (-17);
                SingleFieldBuilderV3<Common.PhoneInfo, Common.PhoneInfo.Builder, Common.PhoneInfoOrBuilder> singleFieldBuilderV3 = this.phoneInfoBuilder_;
                if (singleFieldBuilderV3 == null) {
                    this.phoneInfo_ = null;
                } else {
                    singleFieldBuilderV3.clear();
                }
                this.bitField0_ &= -33;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* JADX INFO: renamed from: clone */
            public Builder mo58clone() {
                return (Builder) super.mo58clone();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof WifiVersionResponse) {
                    return mergeFrom((WifiVersionResponse) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder setPhoneInfo(Common.PhoneInfo.Builder builder) {
                SingleFieldBuilderV3<Common.PhoneInfo, Common.PhoneInfo.Builder, Common.PhoneInfoOrBuilder> singleFieldBuilderV3 = this.phoneInfoBuilder_;
                if (singleFieldBuilderV3 == null) {
                    this.phoneInfo_ = builder.build();
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(builder.build());
                }
                this.bitField0_ |= 32;
                return this;
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.deviceSerial_ = "";
                this.versionStatus_ = 1;
                this.selectedWifiChannelType_ = 0;
                maybeForceBuilderInitialization();
            }

            public Builder mergeFrom(WifiVersionResponse wifiVersionResponse) {
                if (wifiVersionResponse == WifiVersionResponse.getDefaultInstance()) {
                    return this;
                }
                if (wifiVersionResponse.hasMajorVersion()) {
                    setMajorVersion(wifiVersionResponse.getMajorVersion());
                }
                if (wifiVersionResponse.hasMinorVersion()) {
                    setMinorVersion(wifiVersionResponse.getMinorVersion());
                }
                if (wifiVersionResponse.hasDeviceSerial()) {
                    this.bitField0_ |= 4;
                    this.deviceSerial_ = wifiVersionResponse.deviceSerial_;
                    onChanged();
                }
                if (wifiVersionResponse.hasVersionStatus()) {
                    setVersionStatus(wifiVersionResponse.getVersionStatus());
                }
                if (wifiVersionResponse.hasSelectedWifiChannelType()) {
                    setSelectedWifiChannelType(wifiVersionResponse.getSelectedWifiChannelType());
                }
                if (wifiVersionResponse.hasPhoneInfo()) {
                    mergePhoneInfo(wifiVersionResponse.getPhoneInfo());
                }
                mergeUnknownFields(((GeneratedMessageV3) wifiVersionResponse).unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Code duplicated, block: B:16:0x0021  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
                WifiVersionResponse wifiVersionResponse = null;
                try {
                    try {
                        WifiVersionResponse partialFrom = WifiVersionResponse.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                        if (partialFrom != null) {
                            mergeFrom(partialFrom);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e2) {
                        WifiVersionResponse wifiVersionResponse2 = (WifiVersionResponse) e2.getUnfinishedMessage();
                        try {
                            throw e2.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            wifiVersionResponse = wifiVersionResponse2;
                            if (wifiVersionResponse != null) {
                                mergeFrom(wifiVersionResponse);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (wifiVersionResponse != null) {
                        mergeFrom(wifiVersionResponse);
                    }
                    throw th;
                }
            }
        }

        public static Builder newBuilder(WifiVersionResponse wifiVersionResponse) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(wifiVersionResponse);
        }

        public static WifiVersionResponse parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        private WifiVersionResponse(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static WifiVersionResponse parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) {
            return (WifiVersionResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static WifiVersionResponse parseFrom(ByteString byteString) {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public WifiVersionResponse getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        public static WifiVersionResponse parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private WifiVersionResponse() {
            this.memoizedIsInitialized = (byte) -1;
            this.deviceSerial_ = "";
            this.versionStatus_ = 1;
            this.selectedWifiChannelType_ = 0;
        }

        public static WifiVersionResponse parseFrom(byte[] bArr) {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static WifiVersionResponse parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static WifiVersionResponse parseFrom(InputStream inputStream) {
            return (WifiVersionResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static WifiVersionResponse parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) {
            return (WifiVersionResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        private WifiVersionResponse(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
            this();
            extensionRegistryLite.getClass();
            UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
            boolean z2 = false;
            while (!z2) {
                try {
                    try {
                        int tag = codedInputStream.readTag();
                        if (tag != 0) {
                            if (tag == 8) {
                                this.bitField0_ |= 1;
                                this.majorVersion_ = codedInputStream.readInt32();
                            } else if (tag == 16) {
                                this.bitField0_ |= 2;
                                this.minorVersion_ = codedInputStream.readInt32();
                            } else if (tag == 26) {
                                ByteString bytes = codedInputStream.readBytes();
                                this.bitField0_ |= 4;
                                this.deviceSerial_ = bytes;
                            } else if (tag == 32) {
                                int i2 = codedInputStream.readEnum();
                                if (MessageStatus.valueOf(i2) == null) {
                                    builderNewBuilder.mergeVarintField(4, i2);
                                } else {
                                    this.bitField0_ |= 8;
                                    this.versionStatus_ = i2;
                                }
                            } else if (tag == 40) {
                                int i3 = codedInputStream.readEnum();
                                if (WifiChannelType.valueOf(i3) == null) {
                                    builderNewBuilder.mergeVarintField(5, i3);
                                } else {
                                    this.bitField0_ |= 16;
                                    this.selectedWifiChannelType_ = i3;
                                }
                            } else if (tag != 50) {
                                if (!parseUnknownField(codedInputStream, builderNewBuilder, extensionRegistryLite, tag)) {
                                }
                            } else {
                                Common.PhoneInfo.Builder builder = (this.bitField0_ & 32) != 0 ? this.phoneInfo_.toBuilder() : null;
                                Common.PhoneInfo phoneInfo = (Common.PhoneInfo) codedInputStream.readMessage(Common.PhoneInfo.PARSER, extensionRegistryLite);
                                this.phoneInfo_ = phoneInfo;
                                if (builder != null) {
                                    builder.mergeFrom(phoneInfo);
                                    this.phoneInfo_ = builder.buildPartial();
                                }
                                this.bitField0_ |= 32;
                            }
                        }
                        z2 = true;
                    } catch (InvalidProtocolBufferException e2) {
                        throw e2.setUnfinishedMessage(this);
                    } catch (IOException e3) {
                        throw new InvalidProtocolBufferException(e3).setUnfinishedMessage(this);
                    }
                } catch (Throwable th) {
                    this.unknownFields = builderNewBuilder.build();
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            this.unknownFields = builderNewBuilder.build();
            makeExtensionsImmutable();
        }

        public static WifiVersionResponse parseFrom(CodedInputStream codedInputStream) {
            return (WifiVersionResponse) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static WifiVersionResponse parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
            return (WifiVersionResponse) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }
    }

    public interface WifiVersionResponseOrBuilder extends MessageOrBuilder {
        String getDeviceSerial();

        ByteString getDeviceSerialBytes();

        int getMajorVersion();

        int getMinorVersion();

        Common.PhoneInfo getPhoneInfo();

        Common.PhoneInfoOrBuilder getPhoneInfoOrBuilder();

        WifiChannelType getSelectedWifiChannelType();

        MessageStatus getVersionStatus();

        boolean hasDeviceSerial();

        boolean hasMajorVersion();

        boolean hasMinorVersion();

        boolean hasPhoneInfo();

        boolean hasSelectedWifiChannelType();

        boolean hasVersionStatus();
    }

    static {
        Descriptors.Descriptor descriptor2 = getDescriptor().getMessageTypes().get(0);
        internal_static_wifi_discovery_WifiProjectionProtocolInfo_descriptor = descriptor2;
        internal_static_wifi_discovery_WifiProjectionProtocolInfo_fieldAccessorTable = new GeneratedMessageV3.FieldAccessorTable(descriptor2, new String[]{"IpAddress", "Port"});
        Descriptors.Descriptor descriptor3 = getDescriptor().getMessageTypes().get(1);
        internal_static_wifi_discovery_WifiVersionRequest_descriptor = descriptor3;
        internal_static_wifi_discovery_WifiVersionRequest_fieldAccessorTable = new GeneratedMessageV3.FieldAccessorTable(descriptor3, new String[]{"MajorVersion", "MinorVersion", "SupportedWifiChannelType", "SupportedWifiChannels", "HeadunitInfo", "WifiProjectionProtocolInfo"});
        Descriptors.Descriptor descriptor4 = getDescriptor().getMessageTypes().get(2);
        internal_static_wifi_discovery_WifiVersionResponse_descriptor = descriptor4;
        internal_static_wifi_discovery_WifiVersionResponse_fieldAccessorTable = new GeneratedMessageV3.FieldAccessorTable(descriptor4, new String[]{"MajorVersion", "MinorVersion", "DeviceSerial", "VersionStatus", "SelectedWifiChannelType", "PhoneInfo"});
        Descriptors.Descriptor descriptor5 = getDescriptor().getMessageTypes().get(3);
        internal_static_wifi_discovery_WifiConnectionRejection_descriptor = descriptor5;
        internal_static_wifi_discovery_WifiConnectionRejection_fieldAccessorTable = new GeneratedMessageV3.FieldAccessorTable(descriptor5, new String[]{"RejectionReason"});
        Descriptors.Descriptor descriptor6 = getDescriptor().getMessageTypes().get(4);
        internal_static_wifi_discovery_WifiStartRequest_descriptor = descriptor6;
        internal_static_wifi_discovery_WifiStartRequest_fieldAccessorTable = new GeneratedMessageV3.FieldAccessorTable(descriptor6, new String[]{"IpAddress", "Port", "StartRequestReason"});
        Descriptors.Descriptor descriptor7 = getDescriptor().getMessageTypes().get(5);
        internal_static_wifi_discovery_WifiStartResponse_descriptor = descriptor7;
        internal_static_wifi_discovery_WifiStartResponse_fieldAccessorTable = new GeneratedMessageV3.FieldAccessorTable(descriptor7, new String[]{"IpAddress", "Port", "Status"});
        Descriptors.Descriptor descriptor8 = getDescriptor().getMessageTypes().get(6);
        internal_static_wifi_discovery_WifiInfoRequest_descriptor = descriptor8;
        internal_static_wifi_discovery_WifiInfoRequest_fieldAccessorTable = new GeneratedMessageV3.FieldAccessorTable(descriptor8, new String[0]);
        Descriptors.Descriptor descriptor9 = getDescriptor().getMessageTypes().get(7);
        internal_static_wifi_discovery_WifiInfoResponse_descriptor = descriptor9;
        internal_static_wifi_discovery_WifiInfoResponse_fieldAccessorTable = new GeneratedMessageV3.FieldAccessorTable(descriptor9, new String[]{"WifiSsid", "WifiPassword", "WifiBssid", "WifiSecurityMode", "AccessPointType"});
        Descriptors.Descriptor descriptor10 = getDescriptor().getMessageTypes().get(8);
        internal_static_wifi_discovery_WifiConnectStatus_descriptor = descriptor10;
        internal_static_wifi_discovery_WifiConnectStatus_fieldAccessorTable = new GeneratedMessageV3.FieldAccessorTable(descriptor10, new String[]{"ConnectStatus", "ErrorMessageHint"});
        Descriptors.Descriptor descriptor11 = getDescriptor().getMessageTypes().get(9);
        internal_static_wifi_discovery_WifiPingRequest_descriptor = descriptor11;
        internal_static_wifi_discovery_WifiPingRequest_fieldAccessorTable = new GeneratedMessageV3.FieldAccessorTable(descriptor11, new String[]{"TimestampMs", "Data"});
        Descriptors.Descriptor descriptor12 = getDescriptor().getMessageTypes().get(10);
        internal_static_wifi_discovery_WifiPingResponse_descriptor = descriptor12;
        internal_static_wifi_discovery_WifiPingResponse_fieldAccessorTable = new GeneratedMessageV3.FieldAccessorTable(descriptor12, new String[]{"TimestampMs", "Data"});
        Common.getDescriptor();
    }

    private WifiDiscoveryProtos() {
    }

    public static Descriptors.FileDescriptor getDescriptor() {
        return descriptor;
    }

    public static void registerAllExtensions(ExtensionRegistryLite extensionRegistryLite) {
    }

    public static void registerAllExtensions(ExtensionRegistry extensionRegistry) {
        registerAllExtensions((ExtensionRegistryLite) extensionRegistry);
    }
}
