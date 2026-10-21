.class public final Lcom/google/android/projection/proto/WifiDiscoveryProtos;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiPingResponse;,
        Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiPingResponseOrBuilder;,
        Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiPingRequest;,
        Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiPingRequestOrBuilder;,
        Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiConnectStatus;,
        Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiConnectStatusOrBuilder;,
        Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;,
        Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponseOrBuilder;,
        Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoRequest;,
        Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoRequestOrBuilder;,
        Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiStartResponse;,
        Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiStartResponseOrBuilder;,
        Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiStartRequest;,
        Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiStartRequestOrBuilder;,
        Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiConnectionRejection;,
        Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiConnectionRejectionOrBuilder;,
        Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;,
        Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponseOrBuilder;,
        Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;,
        Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequestOrBuilder;,
        Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiProjectionProtocolInfo;,
        Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiProjectionProtocolInfoOrBuilder;,
        Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiConstants;,
        Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;,
        Lcom/google/android/projection/proto/WifiDiscoveryProtos$ConnectionRejectionReason;,
        Lcom/google/android/projection/proto/WifiDiscoveryProtos$StartRequestReason;,
        Lcom/google/android/projection/proto/WifiDiscoveryProtos$AccessPointType;,
        Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiChannelType;,
        Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;,
        Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static final internal_static_wifi_discovery_WifiConnectStatus_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_wifi_discovery_WifiConnectStatus_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_wifi_discovery_WifiConnectionRejection_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_wifi_discovery_WifiConnectionRejection_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_wifi_discovery_WifiInfoRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_wifi_discovery_WifiInfoRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_wifi_discovery_WifiInfoResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_wifi_discovery_WifiInfoResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_wifi_discovery_WifiPingRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_wifi_discovery_WifiPingRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_wifi_discovery_WifiPingResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_wifi_discovery_WifiPingResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_wifi_discovery_WifiProjectionProtocolInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_wifi_discovery_WifiProjectionProtocolInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_wifi_discovery_WifiStartRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_wifi_discovery_WifiStartRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_wifi_discovery_WifiStartResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_wifi_discovery_WifiStartResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_wifi_discovery_WifiVersionRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_wifi_discovery_WifiVersionRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_wifi_discovery_WifiVersionResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_wifi_discovery_WifiVersionResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    .line 1
    const-string v0, "\n\u0014wifi_discovery.proto\u0012\u000ewifi_discovery\u001a\u000ccommon.proto\">\n\u001aWifiProjectionProtocolInfo\u0012\u0012\n\nip_address\u0018\u0001 \u0001(\t\u0012\u000c\n\u0004port\u0018\u0002 \u0001(\u0005\"\u00a9\u0002\n\u0012WifiVersionRequest\u0012\u0015\n\rmajor_version\u0018\u0001 \u0001(\u0005\u0012\u0015\n\rminor_version\u0018\u0002 \u0001(\u0005\u0012D\n\u001bsupported_wifi_channel_type\u0018\u0003 \u0001(\u000e2\u001f.wifi_discovery.WifiChannelType\u0012\u001f\n\u0017supported_wifi_channels\u0018\u0004 \u0003(\u0005\u0012+\n\rheadunit_info\u0018\u0005 \u0001(\u000b2\u0014.common.HeadUnitInfo\u0012Q\n\u001dwifi_projection_protocol_info\u0018\u0006 \u0001(\u000b2*.wifi_discovery.WifiProjectionProtocolInfo\"\u00fd\u0001\n\u0013WifiVersionResponse\u0012\u0015\n\rmajor_version\u0018\u0001 \u0001(\u0005\u0012\u0015\n\rminor_version\u0018\u0002 \u0001(\u0005\u0012\u0015\n\rdevice_serial\u0018\u0003 \u0001(\t\u00125\n\u000eversion_status\u0018\u0004 \u0001(\u000e2\u001d.wifi_discovery.MessageStatus\u0012C\n\u001aselected_wifi_channel_type\u0018\u0005 \u0001(\u000e2\u001f.wifi_discovery.WifiChannelType\u0012%\n\nphone_info\u0018\u0006 \u0001(\u000b2\u0011.common.PhoneInfo\"^\n\u0017WifiConnectionRejection\u0012C\n\u0010rejection_reason\u0018\u0001 \u0001(\u000e2).wifi_discovery.ConnectionRejectionReason\"v\n\u0010WifiStartRequest\u0012\u0012\n\nip_address\u0018\u0001 \u0001(\t\u0012\u000c\n\u0004port\u0018\u0002 \u0001(\u0005\u0012@\n\u0014start_request_reason\u0018\u0003 \u0001(\u000e2\".wifi_discovery.StartRequestReason\"d\n\u0011WifiStartResponse\u0012\u0012\n\nip_address\u0018\u0001 \u0001(\t\u0012\u000c\n\u0004port\u0018\u0002 \u0001(\u0005\u0012-\n\u0006status\u0018\u0003 \u0001(\u000e2\u001d.wifi_discovery.MessageStatus\"\u0011\n\u000fWifiInfoRequest\"\u00ca\u0001\n\u0010WifiInfoResponse\u0012\u0011\n\twifi_ssid\u0018\u0001 \u0001(\t\u0012\u0015\n\rwifi_password\u0018\u0002 \u0001(\t\u0012\u0012\n\nwifi_bssid\u0018\u0003 \u0001(\t\u0012<\n\u0012wifi_security_mode\u0018\u0004 \u0001(\u000e2 .wifi_discovery.WifiSecurityMode\u0012:\n\u0011access_point_type\u0018\u0005 \u0001(\u000e2\u001f.wifi_discovery.AccessPointType\"f\n\u0011WifiConnectStatus\u00125\n\u000econnect_status\u0018\u0001 \u0001(\u000e2\u001d.wifi_discovery.MessageStatus\u0012\u001a\n\u0012error_message_hint\u0018\u0002 \u0001(\t\"5\n\u000fWifiPingRequest\u0012\u0014\n\u000ctimestamp_ms\u0018\u0001 \u0001(\u0003\u0012\u000c\n\u0004data\u0018\u0002 \u0001(\u000c\"6\n\u0010WifiPingResponse\u0012\u0014\n\u000ctimestamp_ms\u0018\u0001 \u0001(\u0003\u0012\u000c\n\u0004data\u0018\u0002 \u0001(\u000c*\u00fb\u0002\n\u000fWifiMessageType\u0012!\n\u001dMESSAGE_WIFI_REQUEST_START_BT\u0010\u0001\u0012 \n\u001cMESSAGE_WIFI_REQUEST_INFO_BT\u0010\u0002\u0012!\n\u001dMESSAGE_WIFI_RESPONSE_INFO_BT\u0010\u0003\u0012#\n\u001fMESSAGE_WIFI_VERSION_REQUEST_BT\u0010\u0004\u0012$\n MESSAGE_WIFI_VERSION_RESPONSE_BT\u0010\u0005\u0012\"\n\u001eMESSAGE_WIFI_CONNECT_STATUS_BT\u0010\u0006\u0012\"\n\u001eMESSAGE_WIFI_RESPONSE_START_BT\u0010\u0007\u0012 \n\u001cMESSAGE_WIFI_PING_REQUEST_BT\u0010\u0008\u0012!\n\u001dMESSAGE_WIFI_PING_RESPONSE_BT\u0010\t\u0012(\n$MESSAGE_WIFI_CONNECTION_REJECTION_BT\u0010\n*\u00f9\u0001\n\u0010WifiSecurityMode\u0012\u0019\n\u0015UNKNOWN_SECURITY_MODE\u0010\u0000\u0012\u0008\n\u0004OPEN\u0010\u0001\u0012\n\n\u0006WEP_64\u0010\u0002\u0012\u000b\n\u0007WEP_128\u0010\u0003\u0012\u0010\n\u000cWPA_PERSONAL\u0010\u0004\u0012\u0011\n\rWPA2_PERSONAL\u0010\u0008\u0012\u0015\n\u0011WPA_WPA2_PERSONAL\u0010\u000c\u0012\u0012\n\u000eWPA_ENTERPRISE\u0010\u0014\u0012\u0013\n\u000fWPA2_ENTERPRISE\u0010\u0018\u0012\u0017\n\u0013WPA_WPA2_ENTERPRISE\u0010\u001c\u0012\u0011\n\rWPA3_PERSONAL\u0010 \u0012\u0016\n\u0012WPA2_WPA3_PERSONAL\u0010(*u\n\u000fWifiChannelType\u0012\u0016\n\u0012CHANNELS_5GHZ_ONLY\u0010\u0000\u0012\u0017\n\u0013CHANNELS_24GHZ_ONLY\u0010\u0001\u0012\u0016\n\u0012CHANNELS_DUAL_BAND\u0010\u0002\u0012\u0019\n\u0015NO_CHANNELS_SUPPORTED\u0010\u0003*.\n\u000fAccessPointType\u0012\n\n\u0006STATIC\u0010\u0000\u0012\u000f\n\u0007DYNAMIC\u0010\u0001\u001a\u0002\u0008\u0001*N\n\u0012StartRequestReason\u0012\u0010\n\u000cUSER_REQUEST\u0010\u0000\u0012\u000f\n\u000bAUTO_LAUNCH\u0010\u0001\u0012\u0015\n\u0011AUTOMATIC_RESTART\u0010\u0002*\u0080\u0001\n\u0019ConnectionRejectionReason\u0012\'\n#CONNECTION_REJECTION_REASON_UNKNOWN\u0010\u0000\u0012:\n6CONNECTION_REJECTION_REASON_MOBILE_DEVICE_ID_NOT_FOUND\u0010\u0001*\u00a9\u0004\n\rMessageStatus\u0012\u001e\n\u001aSTATUS_UNSOLICITED_MESSAGE\u0010\u0001\u0012\u0012\n\u000eSTATUS_SUCCESS\u0010\u0000\u0012)\n\u001cSTATUS_NO_COMPATIBLE_VERSION\u0010\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u0001\u0012-\n STATUS_WIFI_INACCESSIBLE_CHANNEL\u0010\u00fe\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u0001\u0012.\n!STATUS_WIFI_INCORRECT_CREDENTIALS\u0010\u00fd\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u0001\u0012.\n!STATUS_PROJECTION_ALREADY_STARTED\u0010\u00fc\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u0001\u0012!\n\u0014STATUS_WIFI_DISABLED\u0010\u00fb\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u0001\u0012(\n\u001bSTATUS_WIFI_NOT_YET_STARTED\u0010\u00fa\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u0001\u0012 \n\u0013STATUS_INVALID_HOST\u0010\u00f9\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u0001\u0012.\n!STATUS_NO_SUPPORTED_WIFI_CHANNELS\u0010\u00f8\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u0001\u00124\n\'STATUS_INSTRUCT_USER_TO_CHECK_THE_PHONE\u0010\u00f7\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u0001\u0012\'\n\u001aSTATUS_PHONE_WIFI_DISABLED\u0010\u00f6\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u0001\u0012,\n\u001fSTATUS_WIFI_NETWORK_UNAVAILABLE\u0010\u00f5\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u0001*G\n\rWifiConstants\u0012\u001a\n\u0016PROTOCOL_MAJOR_VERSION\u0010\u0004\u0012\u001a\n\u0016PROTOCOL_MINOR_VERSION\u0010\u0003B<\n#com.google.android.projection.protoB\u0013WifiDiscoveryProtosH\u0003"

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    new-array v2, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 9
    .line 10
    invoke-static {}, Lcom/google/android/projection/proto/Common;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    const/4 v4, 0x0

    .line 15
    aput-object v3, v2, v4

    .line 16
    .line 17
    invoke-static {v0, v2}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 22
    .line 23
    invoke-static {}, Lcom/google/android/projection/proto/WifiDiscoveryProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 36
    .line 37
    sput-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos;->internal_static_wifi_discovery_WifiProjectionProtocolInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 38
    .line 39
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 40
    .line 41
    const-string v3, "IpAddress"

    .line 42
    .line 43
    const-string v5, "Port"

    .line 44
    .line 45
    filled-new-array {v3, v5}, [Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    invoke-direct {v2, v0, v6}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    sput-object v2, Lcom/google/android/projection/proto/WifiDiscoveryProtos;->internal_static_wifi_discovery_WifiProjectionProtocolInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 53
    .line 54
    invoke-static {}, Lcom/google/android/projection/proto/WifiDiscoveryProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 67
    .line 68
    sput-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos;->internal_static_wifi_discovery_WifiVersionRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 69
    .line 70
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 71
    .line 72
    const-string v6, "MajorVersion"

    .line 73
    .line 74
    const-string v7, "MinorVersion"

    .line 75
    .line 76
    const-string v8, "SupportedWifiChannelType"

    .line 77
    .line 78
    const-string v9, "SupportedWifiChannels"

    .line 79
    .line 80
    const-string v10, "HeadunitInfo"

    .line 81
    .line 82
    const-string v11, "WifiProjectionProtocolInfo"

    .line 83
    .line 84
    filled-new-array/range {v6 .. v11}, [Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    sput-object v1, Lcom/google/android/projection/proto/WifiDiscoveryProtos;->internal_static_wifi_discovery_WifiVersionRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 92
    .line 93
    invoke-static {}, Lcom/google/android/projection/proto/WifiDiscoveryProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    const/4 v1, 0x2

    .line 102
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 107
    .line 108
    sput-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos;->internal_static_wifi_discovery_WifiVersionResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 109
    .line 110
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 111
    .line 112
    const-string v6, "MajorVersion"

    .line 113
    .line 114
    const-string v7, "MinorVersion"

    .line 115
    .line 116
    const-string v8, "DeviceSerial"

    .line 117
    .line 118
    const-string v9, "VersionStatus"

    .line 119
    .line 120
    const-string v10, "SelectedWifiChannelType"

    .line 121
    .line 122
    const-string v11, "PhoneInfo"

    .line 123
    .line 124
    filled-new-array/range {v6 .. v11}, [Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    sput-object v1, Lcom/google/android/projection/proto/WifiDiscoveryProtos;->internal_static_wifi_discovery_WifiVersionResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 132
    .line 133
    invoke-static {}, Lcom/google/android/projection/proto/WifiDiscoveryProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    const/4 v1, 0x3

    .line 142
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 147
    .line 148
    sput-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos;->internal_static_wifi_discovery_WifiConnectionRejection_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 149
    .line 150
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 151
    .line 152
    const-string v2, "RejectionReason"

    .line 153
    .line 154
    filled-new-array {v2}, [Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    sput-object v1, Lcom/google/android/projection/proto/WifiDiscoveryProtos;->internal_static_wifi_discovery_WifiConnectionRejection_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 162
    .line 163
    invoke-static {}, Lcom/google/android/projection/proto/WifiDiscoveryProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    const/4 v1, 0x4

    .line 172
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 177
    .line 178
    sput-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos;->internal_static_wifi_discovery_WifiStartRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 179
    .line 180
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 181
    .line 182
    const-string v2, "StartRequestReason"

    .line 183
    .line 184
    filled-new-array {v3, v5, v2}, [Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    sput-object v1, Lcom/google/android/projection/proto/WifiDiscoveryProtos;->internal_static_wifi_discovery_WifiStartRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 192
    .line 193
    invoke-static {}, Lcom/google/android/projection/proto/WifiDiscoveryProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    const/4 v1, 0x5

    .line 202
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 207
    .line 208
    sput-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos;->internal_static_wifi_discovery_WifiStartResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 209
    .line 210
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 211
    .line 212
    const-string v2, "Status"

    .line 213
    .line 214
    filled-new-array {v3, v5, v2}, [Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    sput-object v1, Lcom/google/android/projection/proto/WifiDiscoveryProtos;->internal_static_wifi_discovery_WifiStartResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 222
    .line 223
    invoke-static {}, Lcom/google/android/projection/proto/WifiDiscoveryProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    const/4 v1, 0x6

    .line 232
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 237
    .line 238
    sput-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos;->internal_static_wifi_discovery_WifiInfoRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 239
    .line 240
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 241
    .line 242
    new-array v2, v4, [Ljava/lang/String;

    .line 243
    .line 244
    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    sput-object v1, Lcom/google/android/projection/proto/WifiDiscoveryProtos;->internal_static_wifi_discovery_WifiInfoRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 248
    .line 249
    invoke-static {}, Lcom/google/android/projection/proto/WifiDiscoveryProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    const/4 v1, 0x7

    .line 258
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 263
    .line 264
    sput-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos;->internal_static_wifi_discovery_WifiInfoResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 265
    .line 266
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 267
    .line 268
    const-string v2, "WifiSecurityMode"

    .line 269
    .line 270
    const-string v3, "AccessPointType"

    .line 271
    .line 272
    const-string v4, "WifiSsid"

    .line 273
    .line 274
    const-string v5, "WifiPassword"

    .line 275
    .line 276
    const-string v6, "WifiBssid"

    .line 277
    .line 278
    filled-new-array {v4, v5, v6, v2, v3}, [Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v2

    .line 282
    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    sput-object v1, Lcom/google/android/projection/proto/WifiDiscoveryProtos;->internal_static_wifi_discovery_WifiInfoResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 286
    .line 287
    invoke-static {}, Lcom/google/android/projection/proto/WifiDiscoveryProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    const/16 v1, 0x8

    .line 296
    .line 297
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 302
    .line 303
    sput-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos;->internal_static_wifi_discovery_WifiConnectStatus_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 304
    .line 305
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 306
    .line 307
    const-string v2, "ConnectStatus"

    .line 308
    .line 309
    const-string v3, "ErrorMessageHint"

    .line 310
    .line 311
    filled-new-array {v2, v3}, [Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v2

    .line 315
    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    sput-object v1, Lcom/google/android/projection/proto/WifiDiscoveryProtos;->internal_static_wifi_discovery_WifiConnectStatus_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 319
    .line 320
    invoke-static {}, Lcom/google/android/projection/proto/WifiDiscoveryProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    const/16 v1, 0x9

    .line 329
    .line 330
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 335
    .line 336
    sput-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos;->internal_static_wifi_discovery_WifiPingRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 337
    .line 338
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 339
    .line 340
    const-string v2, "TimestampMs"

    .line 341
    .line 342
    const-string v3, "Data"

    .line 343
    .line 344
    filled-new-array {v2, v3}, [Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v4

    .line 348
    invoke-direct {v1, v0, v4}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    sput-object v1, Lcom/google/android/projection/proto/WifiDiscoveryProtos;->internal_static_wifi_discovery_WifiPingRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 352
    .line 353
    invoke-static {}, Lcom/google/android/projection/proto/WifiDiscoveryProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 354
    .line 355
    .line 356
    move-result-object v0

    .line 357
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    const/16 v1, 0xa

    .line 362
    .line 363
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 364
    .line 365
    .line 366
    move-result-object v0

    .line 367
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 368
    .line 369
    sput-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos;->internal_static_wifi_discovery_WifiPingResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 370
    .line 371
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 372
    .line 373
    filled-new-array {v2, v3}, [Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v2

    .line 377
    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    sput-object v1, Lcom/google/android/projection/proto/WifiDiscoveryProtos;->internal_static_wifi_discovery_WifiPingResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 381
    .line 382
    invoke-static {}, Lcom/google/android/projection/proto/Common;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 383
    .line 384
    .line 385
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos;->internal_static_wifi_discovery_WifiProjectionProtocolInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static synthetic access$100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos;->internal_static_wifi_discovery_WifiProjectionProtocolInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public static synthetic access$10100()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos;->internal_static_wifi_discovery_WifiConnectStatus_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static synthetic access$10200()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos;->internal_static_wifi_discovery_WifiConnectStatus_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public static synthetic access$1100()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos;->internal_static_wifi_discovery_WifiVersionRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static synthetic access$11200()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos;->internal_static_wifi_discovery_WifiPingRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static synthetic access$11300()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos;->internal_static_wifi_discovery_WifiPingRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public static synthetic access$1200()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos;->internal_static_wifi_discovery_WifiVersionRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public static synthetic access$12300()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos;->internal_static_wifi_discovery_WifiPingResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static synthetic access$12400()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos;->internal_static_wifi_discovery_WifiPingResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public static synthetic access$3000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos;->internal_static_wifi_discovery_WifiVersionResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static synthetic access$3100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos;->internal_static_wifi_discovery_WifiVersionResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public static synthetic access$4500()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos;->internal_static_wifi_discovery_WifiConnectionRejection_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static synthetic access$4600()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos;->internal_static_wifi_discovery_WifiConnectionRejection_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public static synthetic access$5500()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos;->internal_static_wifi_discovery_WifiStartRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static synthetic access$5600()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos;->internal_static_wifi_discovery_WifiStartRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public static synthetic access$6700()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos;->internal_static_wifi_discovery_WifiStartResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static synthetic access$6800()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos;->internal_static_wifi_discovery_WifiStartResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public static synthetic access$7900()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos;->internal_static_wifi_discovery_WifiInfoRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static synthetic access$8000()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos;->internal_static_wifi_discovery_WifiInfoRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public static synthetic access$8700()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos;->internal_static_wifi_discovery_WifiInfoResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static synthetic access$8800()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos;->internal_static_wifi_discovery_WifiInfoResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0

    .line 2
    invoke-static {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos;->registerAllExtensions(Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 0

    .line 1
    return-void
.end method
