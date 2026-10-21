package com.google.android.projection.proto;

import com.google.protobuf.Descriptors;
import com.google.protobuf.ExtensionRegistry;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.Internal;
import com.google.protobuf.ProtocolMessageEnum;

/* JADX INFO: loaded from: classes3.dex */
public final class WifiProjectionProtocol {
    private static Descriptors.FileDescriptor descriptor = Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n\u001ewifi_projection_protocol.proto\u0012\u0018wifi_projection_protocol*m\n\rTransportType\u0012\u001a\n\u0016TRANSPORT_TYPE_UNKNOWN\u0010\u0000\u0012#\n\u001fTRANSPORT_TYPE_BLUETOOTH_RFCOMM\u0010\u0001\u0012\u001b\n\u0017TRANSPORT_TYPE_WIFI_TCP\u0010\u0002*»\u0002\n\u0015ProjectionStartResult\u0012#\n\u001fPROJECTION_START_RESULT_UNKNOWN\u0010\u0000\u00122\n*PROJECTION_START_RESULT_START_REQUEST_SENT\u0010\u0001\u001a\u0002\b\u0001\u0012,\n(PROJECTION_START_RESULT_DEVICE_NOT_READY\u0010\u0002\u00123\n/PROJECTION_START_RESULT_START_RESPONSE_RECEIVED\u0010\u0003\u00120\n,PROJECTION_START_RESULT_START_REQUEST_FAILED\u0010\u0004\u00124\n0PROJECTION_START_RESULT_ALREADY_ATTEMPTING_START\u0010\u0005*\u0083\u0001\n\u0010MessageDirection\u0012\u001d\n\u0019MESSAGE_DIRECTION_UNKNOWN\u0010\u0000\u0012&\n\"MESSAGE_DIRECTION_TO_REMOTE_DEVICE\u0010\u0001\u0012(\n$MESSAGE_DIRECTION_FROM_REMOTE_DEVICE\u0010\u0002B?\n#com.google.android.projection.protoB\u0016WifiProjectionProtocolH\u0003"}, new Descriptors.FileDescriptor[0]);

    public enum MessageDirection implements ProtocolMessageEnum {
        MESSAGE_DIRECTION_UNKNOWN(0),
        MESSAGE_DIRECTION_TO_REMOTE_DEVICE(1),
        MESSAGE_DIRECTION_FROM_REMOTE_DEVICE(2);

        public static final int MESSAGE_DIRECTION_FROM_REMOTE_DEVICE_VALUE = 2;
        public static final int MESSAGE_DIRECTION_TO_REMOTE_DEVICE_VALUE = 1;
        public static final int MESSAGE_DIRECTION_UNKNOWN_VALUE = 0;
        private final int value;
        private static final Internal.EnumLiteMap<MessageDirection> internalValueMap = new Internal.EnumLiteMap<MessageDirection>() { // from class: com.google.android.projection.proto.WifiProjectionProtocol.MessageDirection.1
            @Override // com.google.protobuf.Internal.EnumLiteMap
            public MessageDirection findValueByNumber(int i2) {
                return MessageDirection.forNumber(i2);
            }
        };
        private static final MessageDirection[] VALUES = values();

        MessageDirection(int i2) {
            this.value = i2;
        }

        public static MessageDirection forNumber(int i2) {
            if (i2 == 0) {
                return MESSAGE_DIRECTION_UNKNOWN;
            }
            if (i2 == 1) {
                return MESSAGE_DIRECTION_TO_REMOTE_DEVICE;
            }
            if (i2 != 2) {
                return null;
            }
            return MESSAGE_DIRECTION_FROM_REMOTE_DEVICE;
        }

        public static final Descriptors.EnumDescriptor getDescriptor() {
            return WifiProjectionProtocol.getDescriptor().getEnumTypes().get(2);
        }

        public static Internal.EnumLiteMap<MessageDirection> internalGetValueMap() {
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
        public static MessageDirection valueOf(int i2) {
            return forNumber(i2);
        }

        public static MessageDirection valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() == getDescriptor()) {
                return VALUES[enumValueDescriptor.getIndex()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    public enum ProjectionStartResult implements ProtocolMessageEnum {
        PROJECTION_START_RESULT_UNKNOWN(0),
        PROJECTION_START_RESULT_START_REQUEST_SENT(1),
        PROJECTION_START_RESULT_DEVICE_NOT_READY(2),
        PROJECTION_START_RESULT_START_RESPONSE_RECEIVED(3),
        PROJECTION_START_RESULT_START_REQUEST_FAILED(4),
        PROJECTION_START_RESULT_ALREADY_ATTEMPTING_START(5);

        public static final int PROJECTION_START_RESULT_ALREADY_ATTEMPTING_START_VALUE = 5;
        public static final int PROJECTION_START_RESULT_DEVICE_NOT_READY_VALUE = 2;
        public static final int PROJECTION_START_RESULT_START_REQUEST_FAILED_VALUE = 4;

        @Deprecated
        public static final int PROJECTION_START_RESULT_START_REQUEST_SENT_VALUE = 1;
        public static final int PROJECTION_START_RESULT_START_RESPONSE_RECEIVED_VALUE = 3;
        public static final int PROJECTION_START_RESULT_UNKNOWN_VALUE = 0;
        private final int value;
        private static final Internal.EnumLiteMap<ProjectionStartResult> internalValueMap = new Internal.EnumLiteMap<ProjectionStartResult>() { // from class: com.google.android.projection.proto.WifiProjectionProtocol.ProjectionStartResult.1
            @Override // com.google.protobuf.Internal.EnumLiteMap
            public ProjectionStartResult findValueByNumber(int i2) {
                return ProjectionStartResult.forNumber(i2);
            }
        };
        private static final ProjectionStartResult[] VALUES = values();

        ProjectionStartResult(int i2) {
            this.value = i2;
        }

        public static ProjectionStartResult forNumber(int i2) {
            if (i2 == 0) {
                return PROJECTION_START_RESULT_UNKNOWN;
            }
            if (i2 == 1) {
                return PROJECTION_START_RESULT_START_REQUEST_SENT;
            }
            if (i2 == 2) {
                return PROJECTION_START_RESULT_DEVICE_NOT_READY;
            }
            if (i2 == 3) {
                return PROJECTION_START_RESULT_START_RESPONSE_RECEIVED;
            }
            if (i2 == 4) {
                return PROJECTION_START_RESULT_START_REQUEST_FAILED;
            }
            if (i2 != 5) {
                return null;
            }
            return PROJECTION_START_RESULT_ALREADY_ATTEMPTING_START;
        }

        public static final Descriptors.EnumDescriptor getDescriptor() {
            return WifiProjectionProtocol.getDescriptor().getEnumTypes().get(1);
        }

        public static Internal.EnumLiteMap<ProjectionStartResult> internalGetValueMap() {
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
        public static ProjectionStartResult valueOf(int i2) {
            return forNumber(i2);
        }

        public static ProjectionStartResult valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() == getDescriptor()) {
                return VALUES[enumValueDescriptor.getIndex()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    public enum TransportType implements ProtocolMessageEnum {
        TRANSPORT_TYPE_UNKNOWN(0),
        TRANSPORT_TYPE_BLUETOOTH_RFCOMM(1),
        TRANSPORT_TYPE_WIFI_TCP(2);

        public static final int TRANSPORT_TYPE_BLUETOOTH_RFCOMM_VALUE = 1;
        public static final int TRANSPORT_TYPE_UNKNOWN_VALUE = 0;
        public static final int TRANSPORT_TYPE_WIFI_TCP_VALUE = 2;
        private final int value;
        private static final Internal.EnumLiteMap<TransportType> internalValueMap = new Internal.EnumLiteMap<TransportType>() { // from class: com.google.android.projection.proto.WifiProjectionProtocol.TransportType.1
            @Override // com.google.protobuf.Internal.EnumLiteMap
            public TransportType findValueByNumber(int i2) {
                return TransportType.forNumber(i2);
            }
        };
        private static final TransportType[] VALUES = values();

        TransportType(int i2) {
            this.value = i2;
        }

        public static TransportType forNumber(int i2) {
            if (i2 == 0) {
                return TRANSPORT_TYPE_UNKNOWN;
            }
            if (i2 == 1) {
                return TRANSPORT_TYPE_BLUETOOTH_RFCOMM;
            }
            if (i2 != 2) {
                return null;
            }
            return TRANSPORT_TYPE_WIFI_TCP;
        }

        public static final Descriptors.EnumDescriptor getDescriptor() {
            return WifiProjectionProtocol.getDescriptor().getEnumTypes().get(0);
        }

        public static Internal.EnumLiteMap<TransportType> internalGetValueMap() {
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
        public static TransportType valueOf(int i2) {
            return forNumber(i2);
        }

        public static TransportType valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() == getDescriptor()) {
                return VALUES[enumValueDescriptor.getIndex()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    private WifiProjectionProtocol() {
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
