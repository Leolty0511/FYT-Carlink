package com.android.server.wifi.nano;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.android.framework.protobuf.nano.CodedInputByteBufferNano;
import com.android.framework.protobuf.nano.CodedOutputByteBufferNano;
import com.android.framework.protobuf.nano.InternalNano;
import com.android.framework.protobuf.nano.InvalidProtocolBufferNanoException;
import com.android.framework.protobuf.nano.MessageNano;
import com.android.framework.protobuf.nano.WireFormatNano;
import com.android.internal.logging.nano.MetricsProto;

/* JADX INFO: loaded from: classes3.dex */
public interface WifiMetricsProto {

    public static final class AlertReasonCount extends MessageNano {
        private static volatile AlertReasonCount[] _emptyArray;
        public int count;
        public int reason;

        public AlertReasonCount() {
            clear();
        }

        public static AlertReasonCount[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new AlertReasonCount[0];
                    }
                }
            }
            return _emptyArray;
        }

        public static AlertReasonCount parseFrom(byte[] bArr) {
            return (AlertReasonCount) MessageNano.mergeFrom(new AlertReasonCount(), bArr);
        }

        public AlertReasonCount clear() {
            this.reason = 0;
            this.count = 0;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public int computeSerializedSize() {
            int iComputeSerializedSize = super.computeSerializedSize();
            int i2 = this.reason;
            if (i2 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(1, i2);
            }
            int i3 = this.count;
            return i3 != 0 ? iComputeSerializedSize + CodedOutputByteBufferNano.computeInt32Size(2, i3) : iComputeSerializedSize;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws CodedOutputByteBufferNano.OutOfSpaceException {
            int i2 = this.reason;
            if (i2 != 0) {
                codedOutputByteBufferNano.writeInt32(1, i2);
            }
            int i3 = this.count;
            if (i3 != 0) {
                codedOutputByteBufferNano.writeInt32(2, i3);
            }
            super.writeTo(codedOutputByteBufferNano);
        }

        public static AlertReasonCount parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
            return new AlertReasonCount().mergeFrom(codedInputByteBufferNano);
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public AlertReasonCount mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws InvalidProtocolBufferNanoException {
            while (true) {
                int tag = codedInputByteBufferNano.readTag();
                if (tag == 0) {
                    return this;
                }
                if (tag == 8) {
                    this.reason = codedInputByteBufferNano.readInt32();
                } else if (tag == 16) {
                    this.count = codedInputByteBufferNano.readInt32();
                } else if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                    return this;
                }
            }
        }
    }

    public static final class ConnectToNetworkNotificationAndActionCount extends MessageNano {
        public static final int ACTION_CONNECT_TO_NETWORK = 2;
        public static final int ACTION_PICK_WIFI_NETWORK = 3;
        public static final int ACTION_PICK_WIFI_NETWORK_AFTER_CONNECT_FAILURE = 4;
        public static final int ACTION_UNKNOWN = 0;
        public static final int ACTION_USER_DISMISSED_NOTIFICATION = 1;
        public static final int NOTIFICATION_CONNECTED_TO_NETWORK = 3;
        public static final int NOTIFICATION_CONNECTING_TO_NETWORK = 2;
        public static final int NOTIFICATION_FAILED_TO_CONNECT = 4;
        public static final int NOTIFICATION_RECOMMEND_NETWORK = 1;
        public static final int NOTIFICATION_UNKNOWN = 0;
        public static final int RECOMMENDER_OPEN = 1;
        public static final int RECOMMENDER_UNKNOWN = 0;
        private static volatile ConnectToNetworkNotificationAndActionCount[] _emptyArray;
        public int action;
        public int count;
        public int notification;
        public int recommender;

        public ConnectToNetworkNotificationAndActionCount() {
            clear();
        }

        public static ConnectToNetworkNotificationAndActionCount[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new ConnectToNetworkNotificationAndActionCount[0];
                    }
                }
            }
            return _emptyArray;
        }

        public static ConnectToNetworkNotificationAndActionCount parseFrom(byte[] bArr) {
            return (ConnectToNetworkNotificationAndActionCount) MessageNano.mergeFrom(new ConnectToNetworkNotificationAndActionCount(), bArr);
        }

        public ConnectToNetworkNotificationAndActionCount clear() {
            this.notification = 0;
            this.action = 0;
            this.recommender = 0;
            this.count = 0;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public int computeSerializedSize() {
            int iComputeSerializedSize = super.computeSerializedSize();
            int i2 = this.notification;
            if (i2 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(1, i2);
            }
            int i3 = this.action;
            if (i3 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(2, i3);
            }
            int i4 = this.recommender;
            if (i4 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(3, i4);
            }
            int i5 = this.count;
            return i5 != 0 ? iComputeSerializedSize + CodedOutputByteBufferNano.computeInt32Size(4, i5) : iComputeSerializedSize;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws CodedOutputByteBufferNano.OutOfSpaceException {
            int i2 = this.notification;
            if (i2 != 0) {
                codedOutputByteBufferNano.writeInt32(1, i2);
            }
            int i3 = this.action;
            if (i3 != 0) {
                codedOutputByteBufferNano.writeInt32(2, i3);
            }
            int i4 = this.recommender;
            if (i4 != 0) {
                codedOutputByteBufferNano.writeInt32(3, i4);
            }
            int i5 = this.count;
            if (i5 != 0) {
                codedOutputByteBufferNano.writeInt32(4, i5);
            }
            super.writeTo(codedOutputByteBufferNano);
        }

        public static ConnectToNetworkNotificationAndActionCount parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
            return new ConnectToNetworkNotificationAndActionCount().mergeFrom(codedInputByteBufferNano);
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public ConnectToNetworkNotificationAndActionCount mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws InvalidProtocolBufferNanoException {
            while (true) {
                int tag = codedInputByteBufferNano.readTag();
                if (tag == 0) {
                    return this;
                }
                if (tag == 8) {
                    int int32 = codedInputByteBufferNano.readInt32();
                    if (int32 == 0 || int32 == 1 || int32 == 2 || int32 == 3 || int32 == 4) {
                        this.notification = int32;
                    }
                } else if (tag == 16) {
                    int int33 = codedInputByteBufferNano.readInt32();
                    if (int33 == 0 || int33 == 1 || int33 == 2 || int33 == 3 || int33 == 4) {
                        this.action = int33;
                    }
                } else if (tag == 24) {
                    int int34 = codedInputByteBufferNano.readInt32();
                    if (int34 == 0 || int34 == 1) {
                        this.recommender = int34;
                    }
                } else if (tag == 32) {
                    this.count = codedInputByteBufferNano.readInt32();
                } else if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                    return this;
                }
            }
        }
    }

    public static final class ConnectionEvent extends MessageNano {
        public static final int HLF_DHCP = 2;
        public static final int HLF_NONE = 1;
        public static final int HLF_NO_INTERNET = 3;
        public static final int HLF_UNKNOWN = 0;
        public static final int HLF_UNWANTED = 4;
        public static final int ROAM_DBDC = 2;
        public static final int ROAM_ENTERPRISE = 3;
        public static final int ROAM_NONE = 1;
        public static final int ROAM_UNKNOWN = 0;
        public static final int ROAM_UNRELATED = 5;
        public static final int ROAM_USER_SELECTED = 4;
        private static volatile ConnectionEvent[] _emptyArray;
        public boolean automaticBugReportTaken;
        public int connectionResult;
        public int connectivityLevelFailureCode;
        public int durationTakenToConnectMillis;
        public int level2FailureCode;
        public int roamType;
        public RouterFingerPrint routerFingerprint;
        public int signalStrength;
        public long startTimeMillis;

        public ConnectionEvent() {
            clear();
        }

        public static ConnectionEvent[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new ConnectionEvent[0];
                    }
                }
            }
            return _emptyArray;
        }

        public static ConnectionEvent parseFrom(byte[] bArr) {
            return (ConnectionEvent) MessageNano.mergeFrom(new ConnectionEvent(), bArr);
        }

        public ConnectionEvent clear() {
            this.startTimeMillis = 0L;
            this.durationTakenToConnectMillis = 0;
            this.routerFingerprint = null;
            this.signalStrength = 0;
            this.roamType = 0;
            this.connectionResult = 0;
            this.level2FailureCode = 0;
            this.connectivityLevelFailureCode = 0;
            this.automaticBugReportTaken = false;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public int computeSerializedSize() {
            int iComputeSerializedSize = super.computeSerializedSize();
            long j2 = this.startTimeMillis;
            if (j2 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(1, j2);
            }
            int i2 = this.durationTakenToConnectMillis;
            if (i2 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(2, i2);
            }
            RouterFingerPrint routerFingerPrint = this.routerFingerprint;
            if (routerFingerPrint != null) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(3, routerFingerPrint);
            }
            int i3 = this.signalStrength;
            if (i3 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(4, i3);
            }
            int i4 = this.roamType;
            if (i4 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(5, i4);
            }
            int i5 = this.connectionResult;
            if (i5 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(6, i5);
            }
            int i6 = this.level2FailureCode;
            if (i6 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(7, i6);
            }
            int i7 = this.connectivityLevelFailureCode;
            if (i7 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(8, i7);
            }
            boolean z2 = this.automaticBugReportTaken;
            return z2 ? iComputeSerializedSize + CodedOutputByteBufferNano.computeBoolSize(9, z2) : iComputeSerializedSize;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws CodedOutputByteBufferNano.OutOfSpaceException {
            long j2 = this.startTimeMillis;
            if (j2 != 0) {
                codedOutputByteBufferNano.writeInt64(1, j2);
            }
            int i2 = this.durationTakenToConnectMillis;
            if (i2 != 0) {
                codedOutputByteBufferNano.writeInt32(2, i2);
            }
            RouterFingerPrint routerFingerPrint = this.routerFingerprint;
            if (routerFingerPrint != null) {
                codedOutputByteBufferNano.writeMessage(3, routerFingerPrint);
            }
            int i3 = this.signalStrength;
            if (i3 != 0) {
                codedOutputByteBufferNano.writeInt32(4, i3);
            }
            int i4 = this.roamType;
            if (i4 != 0) {
                codedOutputByteBufferNano.writeInt32(5, i4);
            }
            int i5 = this.connectionResult;
            if (i5 != 0) {
                codedOutputByteBufferNano.writeInt32(6, i5);
            }
            int i6 = this.level2FailureCode;
            if (i6 != 0) {
                codedOutputByteBufferNano.writeInt32(7, i6);
            }
            int i7 = this.connectivityLevelFailureCode;
            if (i7 != 0) {
                codedOutputByteBufferNano.writeInt32(8, i7);
            }
            boolean z2 = this.automaticBugReportTaken;
            if (z2) {
                codedOutputByteBufferNano.writeBool(9, z2);
            }
            super.writeTo(codedOutputByteBufferNano);
        }

        public static ConnectionEvent parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
            return new ConnectionEvent().mergeFrom(codedInputByteBufferNano);
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public ConnectionEvent mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws InvalidProtocolBufferNanoException {
            while (true) {
                int tag = codedInputByteBufferNano.readTag();
                if (tag == 0) {
                    return this;
                }
                if (tag == 8) {
                    this.startTimeMillis = codedInputByteBufferNano.readInt64();
                } else if (tag == 16) {
                    this.durationTakenToConnectMillis = codedInputByteBufferNano.readInt32();
                } else if (tag == 26) {
                    if (this.routerFingerprint == null) {
                        this.routerFingerprint = new RouterFingerPrint();
                    }
                    codedInputByteBufferNano.readMessage(this.routerFingerprint);
                } else if (tag == 32) {
                    this.signalStrength = codedInputByteBufferNano.readInt32();
                } else if (tag == 40) {
                    int int32 = codedInputByteBufferNano.readInt32();
                    if (int32 == 0 || int32 == 1 || int32 == 2 || int32 == 3 || int32 == 4 || int32 == 5) {
                        this.roamType = int32;
                    }
                } else if (tag == 48) {
                    this.connectionResult = codedInputByteBufferNano.readInt32();
                } else if (tag == 56) {
                    this.level2FailureCode = codedInputByteBufferNano.readInt32();
                } else if (tag == 64) {
                    int int33 = codedInputByteBufferNano.readInt32();
                    if (int33 == 0 || int33 == 1 || int33 == 2 || int33 == 3 || int33 == 4) {
                        this.connectivityLevelFailureCode = int33;
                    }
                } else if (tag == 72) {
                    this.automaticBugReportTaken = codedInputByteBufferNano.readBool();
                } else if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                    return this;
                }
            }
        }
    }

    public static final class NumConnectableNetworksBucket extends MessageNano {
        private static volatile NumConnectableNetworksBucket[] _emptyArray;
        public int count;
        public int numConnectableNetworks;

        public NumConnectableNetworksBucket() {
            clear();
        }

        public static NumConnectableNetworksBucket[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new NumConnectableNetworksBucket[0];
                    }
                }
            }
            return _emptyArray;
        }

        public static NumConnectableNetworksBucket parseFrom(byte[] bArr) {
            return (NumConnectableNetworksBucket) MessageNano.mergeFrom(new NumConnectableNetworksBucket(), bArr);
        }

        public NumConnectableNetworksBucket clear() {
            this.numConnectableNetworks = 0;
            this.count = 0;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public int computeSerializedSize() {
            int iComputeSerializedSize = super.computeSerializedSize();
            int i2 = this.numConnectableNetworks;
            if (i2 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(1, i2);
            }
            int i3 = this.count;
            return i3 != 0 ? iComputeSerializedSize + CodedOutputByteBufferNano.computeInt32Size(2, i3) : iComputeSerializedSize;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws CodedOutputByteBufferNano.OutOfSpaceException {
            int i2 = this.numConnectableNetworks;
            if (i2 != 0) {
                codedOutputByteBufferNano.writeInt32(1, i2);
            }
            int i3 = this.count;
            if (i3 != 0) {
                codedOutputByteBufferNano.writeInt32(2, i3);
            }
            super.writeTo(codedOutputByteBufferNano);
        }

        public static NumConnectableNetworksBucket parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
            return new NumConnectableNetworksBucket().mergeFrom(codedInputByteBufferNano);
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public NumConnectableNetworksBucket mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws InvalidProtocolBufferNanoException {
            while (true) {
                int tag = codedInputByteBufferNano.readTag();
                if (tag == 0) {
                    return this;
                }
                if (tag == 8) {
                    this.numConnectableNetworks = codedInputByteBufferNano.readInt32();
                } else if (tag == 16) {
                    this.count = codedInputByteBufferNano.readInt32();
                } else if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                    return this;
                }
            }
        }
    }

    public static final class PnoScanMetrics extends MessageNano {
        private static volatile PnoScanMetrics[] _emptyArray;
        public int numPnoFoundNetworkEvents;
        public int numPnoScanAttempts;
        public int numPnoScanFailed;
        public int numPnoScanFailedOverOffload;
        public int numPnoScanStartedOverOffload;

        public PnoScanMetrics() {
            clear();
        }

        public static PnoScanMetrics[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new PnoScanMetrics[0];
                    }
                }
            }
            return _emptyArray;
        }

        public static PnoScanMetrics parseFrom(byte[] bArr) {
            return (PnoScanMetrics) MessageNano.mergeFrom(new PnoScanMetrics(), bArr);
        }

        public PnoScanMetrics clear() {
            this.numPnoScanAttempts = 0;
            this.numPnoScanFailed = 0;
            this.numPnoScanStartedOverOffload = 0;
            this.numPnoScanFailedOverOffload = 0;
            this.numPnoFoundNetworkEvents = 0;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public int computeSerializedSize() {
            int iComputeSerializedSize = super.computeSerializedSize();
            int i2 = this.numPnoScanAttempts;
            if (i2 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(1, i2);
            }
            int i3 = this.numPnoScanFailed;
            if (i3 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(2, i3);
            }
            int i4 = this.numPnoScanStartedOverOffload;
            if (i4 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(3, i4);
            }
            int i5 = this.numPnoScanFailedOverOffload;
            if (i5 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(4, i5);
            }
            int i6 = this.numPnoFoundNetworkEvents;
            return i6 != 0 ? iComputeSerializedSize + CodedOutputByteBufferNano.computeInt32Size(5, i6) : iComputeSerializedSize;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws CodedOutputByteBufferNano.OutOfSpaceException {
            int i2 = this.numPnoScanAttempts;
            if (i2 != 0) {
                codedOutputByteBufferNano.writeInt32(1, i2);
            }
            int i3 = this.numPnoScanFailed;
            if (i3 != 0) {
                codedOutputByteBufferNano.writeInt32(2, i3);
            }
            int i4 = this.numPnoScanStartedOverOffload;
            if (i4 != 0) {
                codedOutputByteBufferNano.writeInt32(3, i4);
            }
            int i5 = this.numPnoScanFailedOverOffload;
            if (i5 != 0) {
                codedOutputByteBufferNano.writeInt32(4, i5);
            }
            int i6 = this.numPnoFoundNetworkEvents;
            if (i6 != 0) {
                codedOutputByteBufferNano.writeInt32(5, i6);
            }
            super.writeTo(codedOutputByteBufferNano);
        }

        public static PnoScanMetrics parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
            return new PnoScanMetrics().mergeFrom(codedInputByteBufferNano);
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public PnoScanMetrics mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws InvalidProtocolBufferNanoException {
            while (true) {
                int tag = codedInputByteBufferNano.readTag();
                if (tag == 0) {
                    return this;
                }
                if (tag == 8) {
                    this.numPnoScanAttempts = codedInputByteBufferNano.readInt32();
                } else if (tag == 16) {
                    this.numPnoScanFailed = codedInputByteBufferNano.readInt32();
                } else if (tag == 24) {
                    this.numPnoScanStartedOverOffload = codedInputByteBufferNano.readInt32();
                } else if (tag == 32) {
                    this.numPnoScanFailedOverOffload = codedInputByteBufferNano.readInt32();
                } else if (tag == 40) {
                    this.numPnoFoundNetworkEvents = codedInputByteBufferNano.readInt32();
                } else if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                    return this;
                }
            }
        }
    }

    public static final class RouterFingerPrint extends MessageNano {
        public static final int AUTH_ENTERPRISE = 3;
        public static final int AUTH_OPEN = 1;
        public static final int AUTH_PERSONAL = 2;
        public static final int AUTH_UNKNOWN = 0;
        public static final int ROAM_TYPE_DBDC = 3;
        public static final int ROAM_TYPE_ENTERPRISE = 2;
        public static final int ROAM_TYPE_NONE = 1;
        public static final int ROAM_TYPE_UNKNOWN = 0;
        public static final int ROUTER_TECH_A = 1;
        public static final int ROUTER_TECH_AC = 5;
        public static final int ROUTER_TECH_B = 2;
        public static final int ROUTER_TECH_G = 3;
        public static final int ROUTER_TECH_N = 4;
        public static final int ROUTER_TECH_OTHER = 6;
        public static final int ROUTER_TECH_UNKNOWN = 0;
        private static volatile RouterFingerPrint[] _emptyArray;
        public int authentication;
        public int channelInfo;
        public int dtim;
        public boolean hidden;
        public boolean passpoint;
        public int roamType;
        public int routerTechnology;
        public boolean supportsIpv6;

        public RouterFingerPrint() {
            clear();
        }

        public static RouterFingerPrint[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new RouterFingerPrint[0];
                    }
                }
            }
            return _emptyArray;
        }

        public static RouterFingerPrint parseFrom(byte[] bArr) {
            return (RouterFingerPrint) MessageNano.mergeFrom(new RouterFingerPrint(), bArr);
        }

        public RouterFingerPrint clear() {
            this.roamType = 0;
            this.channelInfo = 0;
            this.dtim = 0;
            this.authentication = 0;
            this.hidden = false;
            this.routerTechnology = 0;
            this.supportsIpv6 = false;
            this.passpoint = false;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public int computeSerializedSize() {
            int iComputeSerializedSize = super.computeSerializedSize();
            int i2 = this.roamType;
            if (i2 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(1, i2);
            }
            int i3 = this.channelInfo;
            if (i3 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(2, i3);
            }
            int i4 = this.dtim;
            if (i4 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(3, i4);
            }
            int i5 = this.authentication;
            if (i5 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(4, i5);
            }
            boolean z2 = this.hidden;
            if (z2) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(5, z2);
            }
            int i6 = this.routerTechnology;
            if (i6 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(6, i6);
            }
            boolean z3 = this.supportsIpv6;
            if (z3) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(7, z3);
            }
            boolean z4 = this.passpoint;
            return z4 ? iComputeSerializedSize + CodedOutputByteBufferNano.computeBoolSize(8, z4) : iComputeSerializedSize;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws CodedOutputByteBufferNano.OutOfSpaceException {
            int i2 = this.roamType;
            if (i2 != 0) {
                codedOutputByteBufferNano.writeInt32(1, i2);
            }
            int i3 = this.channelInfo;
            if (i3 != 0) {
                codedOutputByteBufferNano.writeInt32(2, i3);
            }
            int i4 = this.dtim;
            if (i4 != 0) {
                codedOutputByteBufferNano.writeInt32(3, i4);
            }
            int i5 = this.authentication;
            if (i5 != 0) {
                codedOutputByteBufferNano.writeInt32(4, i5);
            }
            boolean z2 = this.hidden;
            if (z2) {
                codedOutputByteBufferNano.writeBool(5, z2);
            }
            int i6 = this.routerTechnology;
            if (i6 != 0) {
                codedOutputByteBufferNano.writeInt32(6, i6);
            }
            boolean z3 = this.supportsIpv6;
            if (z3) {
                codedOutputByteBufferNano.writeBool(7, z3);
            }
            boolean z4 = this.passpoint;
            if (z4) {
                codedOutputByteBufferNano.writeBool(8, z4);
            }
            super.writeTo(codedOutputByteBufferNano);
        }

        public static RouterFingerPrint parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
            return new RouterFingerPrint().mergeFrom(codedInputByteBufferNano);
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public RouterFingerPrint mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws InvalidProtocolBufferNanoException {
            while (true) {
                int tag = codedInputByteBufferNano.readTag();
                if (tag == 0) {
                    return this;
                }
                if (tag == 8) {
                    int int32 = codedInputByteBufferNano.readInt32();
                    if (int32 == 0 || int32 == 1 || int32 == 2 || int32 == 3) {
                        this.roamType = int32;
                    }
                } else if (tag == 16) {
                    this.channelInfo = codedInputByteBufferNano.readInt32();
                } else if (tag == 24) {
                    this.dtim = codedInputByteBufferNano.readInt32();
                } else if (tag == 32) {
                    int int33 = codedInputByteBufferNano.readInt32();
                    if (int33 == 0 || int33 == 1 || int33 == 2 || int33 == 3) {
                        this.authentication = int33;
                    }
                } else if (tag == 40) {
                    this.hidden = codedInputByteBufferNano.readBool();
                } else if (tag == 48) {
                    int int34 = codedInputByteBufferNano.readInt32();
                    switch (int34) {
                        case 0:
                        case 1:
                        case 2:
                        case 3:
                        case 4:
                        case 5:
                        case 6:
                            this.routerTechnology = int34;
                            break;
                    }
                } else if (tag == 56) {
                    this.supportsIpv6 = codedInputByteBufferNano.readBool();
                } else if (tag == 64) {
                    this.passpoint = codedInputByteBufferNano.readBool();
                } else if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                    return this;
                }
            }
        }
    }

    public static final class RssiPollCount extends MessageNano {
        private static volatile RssiPollCount[] _emptyArray;
        public int count;
        public int rssi;

        public RssiPollCount() {
            clear();
        }

        public static RssiPollCount[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new RssiPollCount[0];
                    }
                }
            }
            return _emptyArray;
        }

        public static RssiPollCount parseFrom(byte[] bArr) {
            return (RssiPollCount) MessageNano.mergeFrom(new RssiPollCount(), bArr);
        }

        public RssiPollCount clear() {
            this.rssi = 0;
            this.count = 0;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public int computeSerializedSize() {
            int iComputeSerializedSize = super.computeSerializedSize();
            int i2 = this.rssi;
            if (i2 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(1, i2);
            }
            int i3 = this.count;
            return i3 != 0 ? iComputeSerializedSize + CodedOutputByteBufferNano.computeInt32Size(2, i3) : iComputeSerializedSize;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws CodedOutputByteBufferNano.OutOfSpaceException {
            int i2 = this.rssi;
            if (i2 != 0) {
                codedOutputByteBufferNano.writeInt32(1, i2);
            }
            int i3 = this.count;
            if (i3 != 0) {
                codedOutputByteBufferNano.writeInt32(2, i3);
            }
            super.writeTo(codedOutputByteBufferNano);
        }

        public static RssiPollCount parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
            return new RssiPollCount().mergeFrom(codedInputByteBufferNano);
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public RssiPollCount mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws InvalidProtocolBufferNanoException {
            while (true) {
                int tag = codedInputByteBufferNano.readTag();
                if (tag == 0) {
                    return this;
                }
                if (tag == 8) {
                    this.rssi = codedInputByteBufferNano.readInt32();
                } else if (tag == 16) {
                    this.count = codedInputByteBufferNano.readInt32();
                } else if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                    return this;
                }
            }
        }
    }

    public static final class SoftApDurationBucket extends MessageNano {
        private static volatile SoftApDurationBucket[] _emptyArray;
        public int bucketSizeSec;
        public int count;
        public int durationSec;

        public SoftApDurationBucket() {
            clear();
        }

        public static SoftApDurationBucket[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new SoftApDurationBucket[0];
                    }
                }
            }
            return _emptyArray;
        }

        public static SoftApDurationBucket parseFrom(byte[] bArr) {
            return (SoftApDurationBucket) MessageNano.mergeFrom(new SoftApDurationBucket(), bArr);
        }

        public SoftApDurationBucket clear() {
            this.durationSec = 0;
            this.bucketSizeSec = 0;
            this.count = 0;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public int computeSerializedSize() {
            int iComputeSerializedSize = super.computeSerializedSize();
            int i2 = this.durationSec;
            if (i2 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(1, i2);
            }
            int i3 = this.bucketSizeSec;
            if (i3 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(2, i3);
            }
            int i4 = this.count;
            return i4 != 0 ? iComputeSerializedSize + CodedOutputByteBufferNano.computeInt32Size(3, i4) : iComputeSerializedSize;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws CodedOutputByteBufferNano.OutOfSpaceException {
            int i2 = this.durationSec;
            if (i2 != 0) {
                codedOutputByteBufferNano.writeInt32(1, i2);
            }
            int i3 = this.bucketSizeSec;
            if (i3 != 0) {
                codedOutputByteBufferNano.writeInt32(2, i3);
            }
            int i4 = this.count;
            if (i4 != 0) {
                codedOutputByteBufferNano.writeInt32(3, i4);
            }
            super.writeTo(codedOutputByteBufferNano);
        }

        public static SoftApDurationBucket parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
            return new SoftApDurationBucket().mergeFrom(codedInputByteBufferNano);
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public SoftApDurationBucket mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws InvalidProtocolBufferNanoException {
            while (true) {
                int tag = codedInputByteBufferNano.readTag();
                if (tag == 0) {
                    return this;
                }
                if (tag == 8) {
                    this.durationSec = codedInputByteBufferNano.readInt32();
                } else if (tag == 16) {
                    this.bucketSizeSec = codedInputByteBufferNano.readInt32();
                } else if (tag == 24) {
                    this.count = codedInputByteBufferNano.readInt32();
                } else if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                    return this;
                }
            }
        }
    }

    public static final class SoftApReturnCodeCount extends MessageNano {
        public static final int SOFT_AP_FAILED_GENERAL_ERROR = 2;
        public static final int SOFT_AP_FAILED_NO_CHANNEL = 3;
        public static final int SOFT_AP_RETURN_CODE_UNKNOWN = 0;
        public static final int SOFT_AP_STARTED_SUCCESSFULLY = 1;
        private static volatile SoftApReturnCodeCount[] _emptyArray;
        public int count;
        public int returnCode;
        public int startResult;

        public SoftApReturnCodeCount() {
            clear();
        }

        public static SoftApReturnCodeCount[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new SoftApReturnCodeCount[0];
                    }
                }
            }
            return _emptyArray;
        }

        public static SoftApReturnCodeCount parseFrom(byte[] bArr) {
            return (SoftApReturnCodeCount) MessageNano.mergeFrom(new SoftApReturnCodeCount(), bArr);
        }

        public SoftApReturnCodeCount clear() {
            this.returnCode = 0;
            this.count = 0;
            this.startResult = 0;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public int computeSerializedSize() {
            int iComputeSerializedSize = super.computeSerializedSize();
            int i2 = this.returnCode;
            if (i2 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(1, i2);
            }
            int i3 = this.count;
            if (i3 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(2, i3);
            }
            int i4 = this.startResult;
            return i4 != 0 ? iComputeSerializedSize + CodedOutputByteBufferNano.computeInt32Size(3, i4) : iComputeSerializedSize;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws CodedOutputByteBufferNano.OutOfSpaceException {
            int i2 = this.returnCode;
            if (i2 != 0) {
                codedOutputByteBufferNano.writeInt32(1, i2);
            }
            int i3 = this.count;
            if (i3 != 0) {
                codedOutputByteBufferNano.writeInt32(2, i3);
            }
            int i4 = this.startResult;
            if (i4 != 0) {
                codedOutputByteBufferNano.writeInt32(3, i4);
            }
            super.writeTo(codedOutputByteBufferNano);
        }

        public static SoftApReturnCodeCount parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
            return new SoftApReturnCodeCount().mergeFrom(codedInputByteBufferNano);
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public SoftApReturnCodeCount mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws InvalidProtocolBufferNanoException {
            while (true) {
                int tag = codedInputByteBufferNano.readTag();
                if (tag == 0) {
                    return this;
                }
                if (tag == 8) {
                    this.returnCode = codedInputByteBufferNano.readInt32();
                } else if (tag == 16) {
                    this.count = codedInputByteBufferNano.readInt32();
                } else if (tag == 24) {
                    int int32 = codedInputByteBufferNano.readInt32();
                    if (int32 == 0 || int32 == 1 || int32 == 2 || int32 == 3) {
                        this.startResult = int32;
                    }
                } else if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                    return this;
                }
            }
        }
    }

    public static final class StaEvent extends MessageNano {
        public static final int AUTH_FAILURE_EAP_FAILURE = 4;
        public static final int AUTH_FAILURE_NONE = 1;
        public static final int AUTH_FAILURE_TIMEOUT = 2;
        public static final int AUTH_FAILURE_UNKNOWN = 0;
        public static final int AUTH_FAILURE_WRONG_PSWD = 3;
        public static final int DISCONNECT_API = 1;
        public static final int DISCONNECT_GENERIC = 2;
        public static final int DISCONNECT_P2P_DISCONNECT_WIFI_REQUEST = 5;
        public static final int DISCONNECT_RESET_SIM_NETWORKS = 6;
        public static final int DISCONNECT_ROAM_WATCHDOG_TIMER = 4;
        public static final int DISCONNECT_UNKNOWN = 0;
        public static final int DISCONNECT_UNWANTED = 3;
        public static final int STATE_ASSOCIATED = 6;
        public static final int STATE_ASSOCIATING = 5;
        public static final int STATE_AUTHENTICATING = 4;
        public static final int STATE_COMPLETED = 9;
        public static final int STATE_DISCONNECTED = 0;
        public static final int STATE_DORMANT = 10;
        public static final int STATE_FOUR_WAY_HANDSHAKE = 7;
        public static final int STATE_GROUP_HANDSHAKE = 8;
        public static final int STATE_INACTIVE = 2;
        public static final int STATE_INTERFACE_DISABLED = 1;
        public static final int STATE_INVALID = 12;
        public static final int STATE_SCANNING = 3;
        public static final int STATE_UNINITIALIZED = 11;
        public static final int TYPE_ASSOCIATION_REJECTION_EVENT = 1;
        public static final int TYPE_AUTHENTICATION_FAILURE_EVENT = 2;
        public static final int TYPE_CMD_ASSOCIATED_BSSID = 6;
        public static final int TYPE_CMD_IP_CONFIGURATION_LOST = 8;
        public static final int TYPE_CMD_IP_CONFIGURATION_SUCCESSFUL = 7;
        public static final int TYPE_CMD_IP_REACHABILITY_LOST = 9;
        public static final int TYPE_CMD_START_CONNECT = 11;
        public static final int TYPE_CMD_START_ROAM = 12;
        public static final int TYPE_CMD_TARGET_BSSID = 10;
        public static final int TYPE_CONNECT_NETWORK = 13;
        public static final int TYPE_FRAMEWORK_DISCONNECT = 15;
        public static final int TYPE_NETWORK_AGENT_VALID_NETWORK = 14;
        public static final int TYPE_NETWORK_CONNECTION_EVENT = 3;
        public static final int TYPE_NETWORK_DISCONNECTION_EVENT = 4;
        public static final int TYPE_SUPPLICANT_STATE_CHANGE_EVENT = 5;
        public static final int TYPE_UNKNOWN = 0;
        private static volatile StaEvent[] _emptyArray;
        public boolean associationTimedOut;
        public int authFailureReason;
        public ConfigInfo configInfo;
        public int frameworkDisconnectReason;
        public int lastFreq;
        public int lastLinkSpeed;
        public int lastRssi;
        public boolean localGen;
        public int reason;
        public long startTimeMillis;
        public int status;
        public int supplicantStateChangesBitmask;
        public int type;

        public static final class ConfigInfo extends MessageNano {
            private static volatile ConfigInfo[] _emptyArray;
            public int allowedAuthAlgorithms;
            public int allowedGroupCiphers;
            public int allowedKeyManagement;
            public int allowedPairwiseCiphers;
            public int allowedProtocols;
            public boolean hasEverConnected;
            public boolean hiddenSsid;
            public boolean isEphemeral;
            public boolean isPasspoint;
            public int scanFreq;
            public int scanRssi;

            public ConfigInfo() {
                clear();
            }

            public static ConfigInfo[] emptyArray() {
                if (_emptyArray == null) {
                    synchronized (InternalNano.LAZY_INIT_LOCK) {
                        if (_emptyArray == null) {
                            _emptyArray = new ConfigInfo[0];
                        }
                    }
                }
                return _emptyArray;
            }

            public static ConfigInfo parseFrom(byte[] bArr) {
                return (ConfigInfo) MessageNano.mergeFrom(new ConfigInfo(), bArr);
            }

            public ConfigInfo clear() {
                this.allowedKeyManagement = 0;
                this.allowedProtocols = 0;
                this.allowedAuthAlgorithms = 0;
                this.allowedPairwiseCiphers = 0;
                this.allowedGroupCiphers = 0;
                this.hiddenSsid = false;
                this.isPasspoint = false;
                this.isEphemeral = false;
                this.hasEverConnected = false;
                this.scanRssi = -127;
                this.scanFreq = -1;
                this.cachedSize = -1;
                return this;
            }

            @Override // com.android.framework.protobuf.nano.MessageNano
            public int computeSerializedSize() {
                int iComputeSerializedSize = super.computeSerializedSize();
                int i2 = this.allowedKeyManagement;
                if (i2 != 0) {
                    iComputeSerializedSize += CodedOutputByteBufferNano.computeUInt32Size(1, i2);
                }
                int i3 = this.allowedProtocols;
                if (i3 != 0) {
                    iComputeSerializedSize += CodedOutputByteBufferNano.computeUInt32Size(2, i3);
                }
                int i4 = this.allowedAuthAlgorithms;
                if (i4 != 0) {
                    iComputeSerializedSize += CodedOutputByteBufferNano.computeUInt32Size(3, i4);
                }
                int i5 = this.allowedPairwiseCiphers;
                if (i5 != 0) {
                    iComputeSerializedSize += CodedOutputByteBufferNano.computeUInt32Size(4, i5);
                }
                int i6 = this.allowedGroupCiphers;
                if (i6 != 0) {
                    iComputeSerializedSize += CodedOutputByteBufferNano.computeUInt32Size(5, i6);
                }
                boolean z2 = this.hiddenSsid;
                if (z2) {
                    iComputeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(6, z2);
                }
                boolean z3 = this.isPasspoint;
                if (z3) {
                    iComputeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(7, z3);
                }
                boolean z4 = this.isEphemeral;
                if (z4) {
                    iComputeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(8, z4);
                }
                boolean z5 = this.hasEverConnected;
                if (z5) {
                    iComputeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(9, z5);
                }
                int i7 = this.scanRssi;
                if (i7 != -127) {
                    iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(10, i7);
                }
                int i8 = this.scanFreq;
                return i8 != -1 ? iComputeSerializedSize + CodedOutputByteBufferNano.computeInt32Size(11, i8) : iComputeSerializedSize;
            }

            @Override // com.android.framework.protobuf.nano.MessageNano
            public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws CodedOutputByteBufferNano.OutOfSpaceException {
                int i2 = this.allowedKeyManagement;
                if (i2 != 0) {
                    codedOutputByteBufferNano.writeUInt32(1, i2);
                }
                int i3 = this.allowedProtocols;
                if (i3 != 0) {
                    codedOutputByteBufferNano.writeUInt32(2, i3);
                }
                int i4 = this.allowedAuthAlgorithms;
                if (i4 != 0) {
                    codedOutputByteBufferNano.writeUInt32(3, i4);
                }
                int i5 = this.allowedPairwiseCiphers;
                if (i5 != 0) {
                    codedOutputByteBufferNano.writeUInt32(4, i5);
                }
                int i6 = this.allowedGroupCiphers;
                if (i6 != 0) {
                    codedOutputByteBufferNano.writeUInt32(5, i6);
                }
                boolean z2 = this.hiddenSsid;
                if (z2) {
                    codedOutputByteBufferNano.writeBool(6, z2);
                }
                boolean z3 = this.isPasspoint;
                if (z3) {
                    codedOutputByteBufferNano.writeBool(7, z3);
                }
                boolean z4 = this.isEphemeral;
                if (z4) {
                    codedOutputByteBufferNano.writeBool(8, z4);
                }
                boolean z5 = this.hasEverConnected;
                if (z5) {
                    codedOutputByteBufferNano.writeBool(9, z5);
                }
                int i7 = this.scanRssi;
                if (i7 != -127) {
                    codedOutputByteBufferNano.writeInt32(10, i7);
                }
                int i8 = this.scanFreq;
                if (i8 != -1) {
                    codedOutputByteBufferNano.writeInt32(11, i8);
                }
                super.writeTo(codedOutputByteBufferNano);
            }

            public static ConfigInfo parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
                return new ConfigInfo().mergeFrom(codedInputByteBufferNano);
            }

            @Override // com.android.framework.protobuf.nano.MessageNano
            public ConfigInfo mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws InvalidProtocolBufferNanoException {
                while (true) {
                    int tag = codedInputByteBufferNano.readTag();
                    switch (tag) {
                        case 0:
                            return this;
                        case 8:
                            this.allowedKeyManagement = codedInputByteBufferNano.readUInt32();
                            break;
                        case 16:
                            this.allowedProtocols = codedInputByteBufferNano.readUInt32();
                            break;
                        case 24:
                            this.allowedAuthAlgorithms = codedInputByteBufferNano.readUInt32();
                            break;
                        case 32:
                            this.allowedPairwiseCiphers = codedInputByteBufferNano.readUInt32();
                            break;
                        case 40:
                            this.allowedGroupCiphers = codedInputByteBufferNano.readUInt32();
                            break;
                        case 48:
                            this.hiddenSsid = codedInputByteBufferNano.readBool();
                            break;
                        case 56:
                            this.isPasspoint = codedInputByteBufferNano.readBool();
                            break;
                        case 64:
                            this.isEphemeral = codedInputByteBufferNano.readBool();
                            break;
                        case 72:
                            this.hasEverConnected = codedInputByteBufferNano.readBool();
                            break;
                        case 80:
                            this.scanRssi = codedInputByteBufferNano.readInt32();
                            break;
                        case 88:
                            this.scanFreq = codedInputByteBufferNano.readInt32();
                            break;
                        default:
                            if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                                return this;
                            }
                            break;
                            break;
                    }
                }
            }
        }

        public StaEvent() {
            clear();
        }

        public static StaEvent[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new StaEvent[0];
                    }
                }
            }
            return _emptyArray;
        }

        public static StaEvent parseFrom(byte[] bArr) {
            return (StaEvent) MessageNano.mergeFrom(new StaEvent(), bArr);
        }

        public StaEvent clear() {
            this.type = 0;
            this.reason = -1;
            this.status = -1;
            this.localGen = false;
            this.configInfo = null;
            this.lastRssi = -127;
            this.lastLinkSpeed = -1;
            this.lastFreq = -1;
            this.supplicantStateChangesBitmask = 0;
            this.startTimeMillis = 0L;
            this.frameworkDisconnectReason = 0;
            this.associationTimedOut = false;
            this.authFailureReason = 0;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public int computeSerializedSize() {
            int iComputeSerializedSize = super.computeSerializedSize();
            int i2 = this.type;
            if (i2 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(1, i2);
            }
            int i3 = this.reason;
            if (i3 != -1) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(2, i3);
            }
            int i4 = this.status;
            if (i4 != -1) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(3, i4);
            }
            boolean z2 = this.localGen;
            if (z2) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(4, z2);
            }
            ConfigInfo configInfo = this.configInfo;
            if (configInfo != null) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(5, configInfo);
            }
            int i5 = this.lastRssi;
            if (i5 != -127) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(6, i5);
            }
            int i6 = this.lastLinkSpeed;
            if (i6 != -1) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(7, i6);
            }
            int i7 = this.lastFreq;
            if (i7 != -1) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(8, i7);
            }
            int i8 = this.supplicantStateChangesBitmask;
            if (i8 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeUInt32Size(9, i8);
            }
            long j2 = this.startTimeMillis;
            if (j2 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(10, j2);
            }
            int i9 = this.frameworkDisconnectReason;
            if (i9 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(11, i9);
            }
            boolean z3 = this.associationTimedOut;
            if (z3) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(12, z3);
            }
            int i10 = this.authFailureReason;
            return i10 != 0 ? iComputeSerializedSize + CodedOutputByteBufferNano.computeInt32Size(13, i10) : iComputeSerializedSize;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws CodedOutputByteBufferNano.OutOfSpaceException {
            int i2 = this.type;
            if (i2 != 0) {
                codedOutputByteBufferNano.writeInt32(1, i2);
            }
            int i3 = this.reason;
            if (i3 != -1) {
                codedOutputByteBufferNano.writeInt32(2, i3);
            }
            int i4 = this.status;
            if (i4 != -1) {
                codedOutputByteBufferNano.writeInt32(3, i4);
            }
            boolean z2 = this.localGen;
            if (z2) {
                codedOutputByteBufferNano.writeBool(4, z2);
            }
            ConfigInfo configInfo = this.configInfo;
            if (configInfo != null) {
                codedOutputByteBufferNano.writeMessage(5, configInfo);
            }
            int i5 = this.lastRssi;
            if (i5 != -127) {
                codedOutputByteBufferNano.writeInt32(6, i5);
            }
            int i6 = this.lastLinkSpeed;
            if (i6 != -1) {
                codedOutputByteBufferNano.writeInt32(7, i6);
            }
            int i7 = this.lastFreq;
            if (i7 != -1) {
                codedOutputByteBufferNano.writeInt32(8, i7);
            }
            int i8 = this.supplicantStateChangesBitmask;
            if (i8 != 0) {
                codedOutputByteBufferNano.writeUInt32(9, i8);
            }
            long j2 = this.startTimeMillis;
            if (j2 != 0) {
                codedOutputByteBufferNano.writeInt64(10, j2);
            }
            int i9 = this.frameworkDisconnectReason;
            if (i9 != 0) {
                codedOutputByteBufferNano.writeInt32(11, i9);
            }
            boolean z3 = this.associationTimedOut;
            if (z3) {
                codedOutputByteBufferNano.writeBool(12, z3);
            }
            int i10 = this.authFailureReason;
            if (i10 != 0) {
                codedOutputByteBufferNano.writeInt32(13, i10);
            }
            super.writeTo(codedOutputByteBufferNano);
        }

        public static StaEvent parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
            return new StaEvent().mergeFrom(codedInputByteBufferNano);
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public StaEvent mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws InvalidProtocolBufferNanoException {
            while (true) {
                int tag = codedInputByteBufferNano.readTag();
                switch (tag) {
                    case 0:
                        return this;
                    case 8:
                        int int32 = codedInputByteBufferNano.readInt32();
                        switch (int32) {
                            case 0:
                            case 1:
                            case 2:
                            case 3:
                            case 4:
                            case 5:
                            case 6:
                            case 7:
                            case 8:
                            case 9:
                            case 10:
                            case 11:
                            case 12:
                            case 13:
                            case 14:
                            case 15:
                                this.type = int32;
                                break;
                        }
                        break;
                    case 16:
                        this.reason = codedInputByteBufferNano.readInt32();
                        break;
                    case 24:
                        this.status = codedInputByteBufferNano.readInt32();
                        break;
                    case 32:
                        this.localGen = codedInputByteBufferNano.readBool();
                        break;
                    case 42:
                        if (this.configInfo == null) {
                            this.configInfo = new ConfigInfo();
                        }
                        codedInputByteBufferNano.readMessage(this.configInfo);
                        break;
                    case 48:
                        this.lastRssi = codedInputByteBufferNano.readInt32();
                        break;
                    case 56:
                        this.lastLinkSpeed = codedInputByteBufferNano.readInt32();
                        break;
                    case 64:
                        this.lastFreq = codedInputByteBufferNano.readInt32();
                        break;
                    case 72:
                        this.supplicantStateChangesBitmask = codedInputByteBufferNano.readUInt32();
                        break;
                    case 80:
                        this.startTimeMillis = codedInputByteBufferNano.readInt64();
                        break;
                    case 88:
                        int int33 = codedInputByteBufferNano.readInt32();
                        switch (int33) {
                            case 0:
                            case 1:
                            case 2:
                            case 3:
                            case 4:
                            case 5:
                            case 6:
                                this.frameworkDisconnectReason = int33;
                                break;
                        }
                        break;
                    case 96:
                        this.associationTimedOut = codedInputByteBufferNano.readBool();
                        break;
                    case 104:
                        int int34 = codedInputByteBufferNano.readInt32();
                        if (int34 == 0 || int34 == 1 || int34 == 2 || int34 == 3 || int34 == 4) {
                            this.authFailureReason = int34;
                        }
                        break;
                    default:
                        if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                            return this;
                        }
                        break;
                        break;
                }
            }
        }
    }

    public static final class WifiAwareLog extends MessageNano {
        public static final int ALREADY_ENABLED = 11;
        public static final int FOLLOWUP_TX_QUEUE_FULL = 12;
        public static final int INTERNAL_FAILURE = 2;
        public static final int INVALID_ARGS = 6;
        public static final int INVALID_NDP_ID = 8;
        public static final int INVALID_PEER_ID = 7;
        public static final int INVALID_SESSION_ID = 4;
        public static final int NAN_NOT_ALLOWED = 9;
        public static final int NO_OTA_ACK = 10;
        public static final int NO_RESOURCES_AVAILABLE = 5;
        public static final int PROTOCOL_FAILURE = 3;
        public static final int SUCCESS = 1;
        public static final int UNKNOWN = 0;
        public static final int UNKNOWN_HAL_STATUS = 14;
        public static final int UNSUPPORTED_CONCURRENCY_NAN_DISABLED = 13;
        private static volatile WifiAwareLog[] _emptyArray;
        public long availableTimeMs;
        public long enabledTimeMs;
        public HistogramBucket[] histogramAttachDurationMs;
        public NanStatusHistogramBucket[] histogramAttachSessionStatus;
        public HistogramBucket[] histogramAwareAvailableDurationMs;
        public HistogramBucket[] histogramAwareEnabledDurationMs;
        public HistogramBucket[] histogramNdpCreationTimeMs;
        public HistogramBucket[] histogramNdpSessionDataUsageMb;
        public HistogramBucket[] histogramNdpSessionDurationMs;
        public HistogramBucket[] histogramPublishSessionDurationMs;
        public NanStatusHistogramBucket[] histogramPublishStatus;
        public NanStatusHistogramBucket[] histogramRequestNdpOobStatus;
        public NanStatusHistogramBucket[] histogramRequestNdpStatus;
        public HistogramBucket[] histogramSubscribeSessionDurationMs;
        public NanStatusHistogramBucket[] histogramSubscribeStatus;
        public int maxConcurrentAttachSessionsInApp;
        public int maxConcurrentDiscoverySessionsInApp;
        public int maxConcurrentDiscoverySessionsInSystem;
        public int maxConcurrentNdiInApp;
        public int maxConcurrentNdiInSystem;
        public int maxConcurrentNdpInApp;
        public int maxConcurrentNdpInSystem;
        public int maxConcurrentNdpPerNdi;
        public int maxConcurrentPublishInApp;
        public int maxConcurrentPublishInSystem;
        public int maxConcurrentSecureNdpInApp;
        public int maxConcurrentSecureNdpInSystem;
        public int maxConcurrentSubscribeInApp;
        public int maxConcurrentSubscribeInSystem;
        public long ndpCreationTimeMsMax;
        public long ndpCreationTimeMsMin;
        public long ndpCreationTimeMsNumSamples;
        public long ndpCreationTimeMsSum;
        public long ndpCreationTimeMsSumOfSq;
        public int numApps;
        public int numAppsUsingIdentityCallback;
        public int numAppsWithDiscoverySessionFailureOutOfResources;

        public static final class HistogramBucket extends MessageNano {
            private static volatile HistogramBucket[] _emptyArray;
            public int count;
            public long end;
            public long start;

            public HistogramBucket() {
                clear();
            }

            public static HistogramBucket[] emptyArray() {
                if (_emptyArray == null) {
                    synchronized (InternalNano.LAZY_INIT_LOCK) {
                        if (_emptyArray == null) {
                            _emptyArray = new HistogramBucket[0];
                        }
                    }
                }
                return _emptyArray;
            }

            public static HistogramBucket parseFrom(byte[] bArr) {
                return (HistogramBucket) MessageNano.mergeFrom(new HistogramBucket(), bArr);
            }

            public HistogramBucket clear() {
                this.start = 0L;
                this.end = 0L;
                this.count = 0;
                this.cachedSize = -1;
                return this;
            }

            @Override // com.android.framework.protobuf.nano.MessageNano
            public int computeSerializedSize() {
                int iComputeSerializedSize = super.computeSerializedSize();
                long j2 = this.start;
                if (j2 != 0) {
                    iComputeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(1, j2);
                }
                long j3 = this.end;
                if (j3 != 0) {
                    iComputeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(2, j3);
                }
                int i2 = this.count;
                return i2 != 0 ? iComputeSerializedSize + CodedOutputByteBufferNano.computeInt32Size(3, i2) : iComputeSerializedSize;
            }

            @Override // com.android.framework.protobuf.nano.MessageNano
            public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws CodedOutputByteBufferNano.OutOfSpaceException {
                long j2 = this.start;
                if (j2 != 0) {
                    codedOutputByteBufferNano.writeInt64(1, j2);
                }
                long j3 = this.end;
                if (j3 != 0) {
                    codedOutputByteBufferNano.writeInt64(2, j3);
                }
                int i2 = this.count;
                if (i2 != 0) {
                    codedOutputByteBufferNano.writeInt32(3, i2);
                }
                super.writeTo(codedOutputByteBufferNano);
            }

            public static HistogramBucket parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
                return new HistogramBucket().mergeFrom(codedInputByteBufferNano);
            }

            @Override // com.android.framework.protobuf.nano.MessageNano
            public HistogramBucket mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws InvalidProtocolBufferNanoException {
                while (true) {
                    int tag = codedInputByteBufferNano.readTag();
                    if (tag == 0) {
                        return this;
                    }
                    if (tag == 8) {
                        this.start = codedInputByteBufferNano.readInt64();
                    } else if (tag == 16) {
                        this.end = codedInputByteBufferNano.readInt64();
                    } else if (tag == 24) {
                        this.count = codedInputByteBufferNano.readInt32();
                    } else if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                        return this;
                    }
                }
            }
        }

        public static final class NanStatusHistogramBucket extends MessageNano {
            private static volatile NanStatusHistogramBucket[] _emptyArray;
            public int count;
            public int nanStatusType;

            public NanStatusHistogramBucket() {
                clear();
            }

            public static NanStatusHistogramBucket[] emptyArray() {
                if (_emptyArray == null) {
                    synchronized (InternalNano.LAZY_INIT_LOCK) {
                        if (_emptyArray == null) {
                            _emptyArray = new NanStatusHistogramBucket[0];
                        }
                    }
                }
                return _emptyArray;
            }

            public static NanStatusHistogramBucket parseFrom(byte[] bArr) {
                return (NanStatusHistogramBucket) MessageNano.mergeFrom(new NanStatusHistogramBucket(), bArr);
            }

            public NanStatusHistogramBucket clear() {
                this.nanStatusType = 0;
                this.count = 0;
                this.cachedSize = -1;
                return this;
            }

            @Override // com.android.framework.protobuf.nano.MessageNano
            public int computeSerializedSize() {
                int iComputeSerializedSize = super.computeSerializedSize();
                int i2 = this.nanStatusType;
                if (i2 != 0) {
                    iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(1, i2);
                }
                int i3 = this.count;
                return i3 != 0 ? iComputeSerializedSize + CodedOutputByteBufferNano.computeInt32Size(2, i3) : iComputeSerializedSize;
            }

            @Override // com.android.framework.protobuf.nano.MessageNano
            public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws CodedOutputByteBufferNano.OutOfSpaceException {
                int i2 = this.nanStatusType;
                if (i2 != 0) {
                    codedOutputByteBufferNano.writeInt32(1, i2);
                }
                int i3 = this.count;
                if (i3 != 0) {
                    codedOutputByteBufferNano.writeInt32(2, i3);
                }
                super.writeTo(codedOutputByteBufferNano);
            }

            public static NanStatusHistogramBucket parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
                return new NanStatusHistogramBucket().mergeFrom(codedInputByteBufferNano);
            }

            @Override // com.android.framework.protobuf.nano.MessageNano
            public NanStatusHistogramBucket mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws InvalidProtocolBufferNanoException {
                while (true) {
                    int tag = codedInputByteBufferNano.readTag();
                    if (tag == 0) {
                        return this;
                    }
                    if (tag == 8) {
                        int int32 = codedInputByteBufferNano.readInt32();
                        switch (int32) {
                            case 0:
                            case 1:
                            case 2:
                            case 3:
                            case 4:
                            case 5:
                            case 6:
                            case 7:
                            case 8:
                            case 9:
                            case 10:
                            case 11:
                            case 12:
                            case 13:
                            case 14:
                                this.nanStatusType = int32;
                                break;
                        }
                    } else if (tag == 16) {
                        this.count = codedInputByteBufferNano.readInt32();
                    } else if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                        return this;
                    }
                }
            }
        }

        public WifiAwareLog() {
            clear();
        }

        public static WifiAwareLog[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new WifiAwareLog[0];
                    }
                }
            }
            return _emptyArray;
        }

        public static WifiAwareLog parseFrom(byte[] bArr) {
            return (WifiAwareLog) MessageNano.mergeFrom(new WifiAwareLog(), bArr);
        }

        public WifiAwareLog clear() {
            this.numApps = 0;
            this.numAppsUsingIdentityCallback = 0;
            this.maxConcurrentAttachSessionsInApp = 0;
            this.histogramAttachSessionStatus = NanStatusHistogramBucket.emptyArray();
            this.maxConcurrentPublishInApp = 0;
            this.maxConcurrentSubscribeInApp = 0;
            this.maxConcurrentDiscoverySessionsInApp = 0;
            this.maxConcurrentPublishInSystem = 0;
            this.maxConcurrentSubscribeInSystem = 0;
            this.maxConcurrentDiscoverySessionsInSystem = 0;
            this.histogramPublishStatus = NanStatusHistogramBucket.emptyArray();
            this.histogramSubscribeStatus = NanStatusHistogramBucket.emptyArray();
            this.numAppsWithDiscoverySessionFailureOutOfResources = 0;
            this.histogramRequestNdpStatus = NanStatusHistogramBucket.emptyArray();
            this.histogramRequestNdpOobStatus = NanStatusHistogramBucket.emptyArray();
            this.maxConcurrentNdiInApp = 0;
            this.maxConcurrentNdiInSystem = 0;
            this.maxConcurrentNdpInApp = 0;
            this.maxConcurrentNdpInSystem = 0;
            this.maxConcurrentSecureNdpInApp = 0;
            this.maxConcurrentSecureNdpInSystem = 0;
            this.maxConcurrentNdpPerNdi = 0;
            this.histogramAwareAvailableDurationMs = HistogramBucket.emptyArray();
            this.histogramAwareEnabledDurationMs = HistogramBucket.emptyArray();
            this.histogramAttachDurationMs = HistogramBucket.emptyArray();
            this.histogramPublishSessionDurationMs = HistogramBucket.emptyArray();
            this.histogramSubscribeSessionDurationMs = HistogramBucket.emptyArray();
            this.histogramNdpSessionDurationMs = HistogramBucket.emptyArray();
            this.histogramNdpSessionDataUsageMb = HistogramBucket.emptyArray();
            this.histogramNdpCreationTimeMs = HistogramBucket.emptyArray();
            this.ndpCreationTimeMsMin = 0L;
            this.ndpCreationTimeMsMax = 0L;
            this.ndpCreationTimeMsSum = 0L;
            this.ndpCreationTimeMsSumOfSq = 0L;
            this.ndpCreationTimeMsNumSamples = 0L;
            this.availableTimeMs = 0L;
            this.enabledTimeMs = 0L;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public int computeSerializedSize() {
            int iComputeSerializedSize = super.computeSerializedSize();
            int i2 = this.numApps;
            if (i2 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(1, i2);
            }
            int i3 = this.numAppsUsingIdentityCallback;
            if (i3 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(2, i3);
            }
            int i4 = this.maxConcurrentAttachSessionsInApp;
            if (i4 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(3, i4);
            }
            NanStatusHistogramBucket[] nanStatusHistogramBucketArr = this.histogramAttachSessionStatus;
            int i5 = 0;
            if (nanStatusHistogramBucketArr != null && nanStatusHistogramBucketArr.length > 0) {
                int i6 = 0;
                while (true) {
                    NanStatusHistogramBucket[] nanStatusHistogramBucketArr2 = this.histogramAttachSessionStatus;
                    if (i6 >= nanStatusHistogramBucketArr2.length) {
                        break;
                    }
                    NanStatusHistogramBucket nanStatusHistogramBucket = nanStatusHistogramBucketArr2[i6];
                    if (nanStatusHistogramBucket != null) {
                        iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(4, nanStatusHistogramBucket);
                    }
                    i6++;
                }
            }
            int i7 = this.maxConcurrentPublishInApp;
            if (i7 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(5, i7);
            }
            int i8 = this.maxConcurrentSubscribeInApp;
            if (i8 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(6, i8);
            }
            int i9 = this.maxConcurrentDiscoverySessionsInApp;
            if (i9 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(7, i9);
            }
            int i10 = this.maxConcurrentPublishInSystem;
            if (i10 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(8, i10);
            }
            int i11 = this.maxConcurrentSubscribeInSystem;
            if (i11 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(9, i11);
            }
            int i12 = this.maxConcurrentDiscoverySessionsInSystem;
            if (i12 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(10, i12);
            }
            NanStatusHistogramBucket[] nanStatusHistogramBucketArr3 = this.histogramPublishStatus;
            if (nanStatusHistogramBucketArr3 != null && nanStatusHistogramBucketArr3.length > 0) {
                int i13 = 0;
                while (true) {
                    NanStatusHistogramBucket[] nanStatusHistogramBucketArr4 = this.histogramPublishStatus;
                    if (i13 >= nanStatusHistogramBucketArr4.length) {
                        break;
                    }
                    NanStatusHistogramBucket nanStatusHistogramBucket2 = nanStatusHistogramBucketArr4[i13];
                    if (nanStatusHistogramBucket2 != null) {
                        iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(11, nanStatusHistogramBucket2);
                    }
                    i13++;
                }
            }
            NanStatusHistogramBucket[] nanStatusHistogramBucketArr5 = this.histogramSubscribeStatus;
            if (nanStatusHistogramBucketArr5 != null && nanStatusHistogramBucketArr5.length > 0) {
                int i14 = 0;
                while (true) {
                    NanStatusHistogramBucket[] nanStatusHistogramBucketArr6 = this.histogramSubscribeStatus;
                    if (i14 >= nanStatusHistogramBucketArr6.length) {
                        break;
                    }
                    NanStatusHistogramBucket nanStatusHistogramBucket3 = nanStatusHistogramBucketArr6[i14];
                    if (nanStatusHistogramBucket3 != null) {
                        iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(12, nanStatusHistogramBucket3);
                    }
                    i14++;
                }
            }
            int i15 = this.numAppsWithDiscoverySessionFailureOutOfResources;
            if (i15 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(13, i15);
            }
            NanStatusHistogramBucket[] nanStatusHistogramBucketArr7 = this.histogramRequestNdpStatus;
            if (nanStatusHistogramBucketArr7 != null && nanStatusHistogramBucketArr7.length > 0) {
                int i16 = 0;
                while (true) {
                    NanStatusHistogramBucket[] nanStatusHistogramBucketArr8 = this.histogramRequestNdpStatus;
                    if (i16 >= nanStatusHistogramBucketArr8.length) {
                        break;
                    }
                    NanStatusHistogramBucket nanStatusHistogramBucket4 = nanStatusHistogramBucketArr8[i16];
                    if (nanStatusHistogramBucket4 != null) {
                        iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(14, nanStatusHistogramBucket4);
                    }
                    i16++;
                }
            }
            NanStatusHistogramBucket[] nanStatusHistogramBucketArr9 = this.histogramRequestNdpOobStatus;
            if (nanStatusHistogramBucketArr9 != null && nanStatusHistogramBucketArr9.length > 0) {
                int i17 = 0;
                while (true) {
                    NanStatusHistogramBucket[] nanStatusHistogramBucketArr10 = this.histogramRequestNdpOobStatus;
                    if (i17 >= nanStatusHistogramBucketArr10.length) {
                        break;
                    }
                    NanStatusHistogramBucket nanStatusHistogramBucket5 = nanStatusHistogramBucketArr10[i17];
                    if (nanStatusHistogramBucket5 != null) {
                        iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(15, nanStatusHistogramBucket5);
                    }
                    i17++;
                }
            }
            int i18 = this.maxConcurrentNdiInApp;
            if (i18 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(19, i18);
            }
            int i19 = this.maxConcurrentNdiInSystem;
            if (i19 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(20, i19);
            }
            int i20 = this.maxConcurrentNdpInApp;
            if (i20 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(21, i20);
            }
            int i21 = this.maxConcurrentNdpInSystem;
            if (i21 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(22, i21);
            }
            int i22 = this.maxConcurrentSecureNdpInApp;
            if (i22 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(23, i22);
            }
            int i23 = this.maxConcurrentSecureNdpInSystem;
            if (i23 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(24, i23);
            }
            int i24 = this.maxConcurrentNdpPerNdi;
            if (i24 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(25, i24);
            }
            HistogramBucket[] histogramBucketArr = this.histogramAwareAvailableDurationMs;
            if (histogramBucketArr != null && histogramBucketArr.length > 0) {
                int i25 = 0;
                while (true) {
                    HistogramBucket[] histogramBucketArr2 = this.histogramAwareAvailableDurationMs;
                    if (i25 >= histogramBucketArr2.length) {
                        break;
                    }
                    HistogramBucket histogramBucket = histogramBucketArr2[i25];
                    if (histogramBucket != null) {
                        iComputeSerializedSize = CodedOutputByteBufferNano.computeMessageSize(26, histogramBucket) + iComputeSerializedSize;
                    }
                    i25++;
                }
            }
            HistogramBucket[] histogramBucketArr3 = this.histogramAwareEnabledDurationMs;
            if (histogramBucketArr3 != null && histogramBucketArr3.length > 0) {
                int i26 = 0;
                while (true) {
                    HistogramBucket[] histogramBucketArr4 = this.histogramAwareEnabledDurationMs;
                    if (i26 >= histogramBucketArr4.length) {
                        break;
                    }
                    HistogramBucket histogramBucket2 = histogramBucketArr4[i26];
                    if (histogramBucket2 != null) {
                        iComputeSerializedSize = CodedOutputByteBufferNano.computeMessageSize(27, histogramBucket2) + iComputeSerializedSize;
                    }
                    i26++;
                }
            }
            HistogramBucket[] histogramBucketArr5 = this.histogramAttachDurationMs;
            if (histogramBucketArr5 != null && histogramBucketArr5.length > 0) {
                int i27 = 0;
                while (true) {
                    HistogramBucket[] histogramBucketArr6 = this.histogramAttachDurationMs;
                    if (i27 >= histogramBucketArr6.length) {
                        break;
                    }
                    HistogramBucket histogramBucket3 = histogramBucketArr6[i27];
                    if (histogramBucket3 != null) {
                        iComputeSerializedSize = CodedOutputByteBufferNano.computeMessageSize(28, histogramBucket3) + iComputeSerializedSize;
                    }
                    i27++;
                }
            }
            HistogramBucket[] histogramBucketArr7 = this.histogramPublishSessionDurationMs;
            if (histogramBucketArr7 != null && histogramBucketArr7.length > 0) {
                int i28 = 0;
                while (true) {
                    HistogramBucket[] histogramBucketArr8 = this.histogramPublishSessionDurationMs;
                    if (i28 >= histogramBucketArr8.length) {
                        break;
                    }
                    HistogramBucket histogramBucket4 = histogramBucketArr8[i28];
                    if (histogramBucket4 != null) {
                        iComputeSerializedSize = CodedOutputByteBufferNano.computeMessageSize(29, histogramBucket4) + iComputeSerializedSize;
                    }
                    i28++;
                }
            }
            HistogramBucket[] histogramBucketArr9 = this.histogramSubscribeSessionDurationMs;
            if (histogramBucketArr9 != null && histogramBucketArr9.length > 0) {
                int i29 = 0;
                while (true) {
                    HistogramBucket[] histogramBucketArr10 = this.histogramSubscribeSessionDurationMs;
                    if (i29 >= histogramBucketArr10.length) {
                        break;
                    }
                    HistogramBucket histogramBucket5 = histogramBucketArr10[i29];
                    if (histogramBucket5 != null) {
                        iComputeSerializedSize = CodedOutputByteBufferNano.computeMessageSize(30, histogramBucket5) + iComputeSerializedSize;
                    }
                    i29++;
                }
            }
            HistogramBucket[] histogramBucketArr11 = this.histogramNdpSessionDurationMs;
            if (histogramBucketArr11 != null && histogramBucketArr11.length > 0) {
                int i30 = 0;
                while (true) {
                    HistogramBucket[] histogramBucketArr12 = this.histogramNdpSessionDurationMs;
                    if (i30 >= histogramBucketArr12.length) {
                        break;
                    }
                    HistogramBucket histogramBucket6 = histogramBucketArr12[i30];
                    if (histogramBucket6 != null) {
                        iComputeSerializedSize = CodedOutputByteBufferNano.computeMessageSize(31, histogramBucket6) + iComputeSerializedSize;
                    }
                    i30++;
                }
            }
            HistogramBucket[] histogramBucketArr13 = this.histogramNdpSessionDataUsageMb;
            if (histogramBucketArr13 != null && histogramBucketArr13.length > 0) {
                int i31 = 0;
                while (true) {
                    HistogramBucket[] histogramBucketArr14 = this.histogramNdpSessionDataUsageMb;
                    if (i31 >= histogramBucketArr14.length) {
                        break;
                    }
                    HistogramBucket histogramBucket7 = histogramBucketArr14[i31];
                    if (histogramBucket7 != null) {
                        iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(32, histogramBucket7);
                    }
                    i31++;
                }
            }
            HistogramBucket[] histogramBucketArr15 = this.histogramNdpCreationTimeMs;
            if (histogramBucketArr15 != null && histogramBucketArr15.length > 0) {
                while (true) {
                    HistogramBucket[] histogramBucketArr16 = this.histogramNdpCreationTimeMs;
                    if (i5 >= histogramBucketArr16.length) {
                        break;
                    }
                    HistogramBucket histogramBucket8 = histogramBucketArr16[i5];
                    if (histogramBucket8 != null) {
                        iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(33, histogramBucket8);
                    }
                    i5++;
                }
            }
            long j2 = this.ndpCreationTimeMsMin;
            if (j2 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(34, j2);
            }
            long j3 = this.ndpCreationTimeMsMax;
            if (j3 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(35, j3);
            }
            long j4 = this.ndpCreationTimeMsSum;
            if (j4 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(36, j4);
            }
            long j5 = this.ndpCreationTimeMsSumOfSq;
            if (j5 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(37, j5);
            }
            long j6 = this.ndpCreationTimeMsNumSamples;
            if (j6 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(38, j6);
            }
            long j7 = this.availableTimeMs;
            if (j7 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(39, j7);
            }
            long j8 = this.enabledTimeMs;
            return j8 != 0 ? iComputeSerializedSize + CodedOutputByteBufferNano.computeInt64Size(40, j8) : iComputeSerializedSize;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws CodedOutputByteBufferNano.OutOfSpaceException {
            int i2 = this.numApps;
            if (i2 != 0) {
                codedOutputByteBufferNano.writeInt32(1, i2);
            }
            int i3 = this.numAppsUsingIdentityCallback;
            if (i3 != 0) {
                codedOutputByteBufferNano.writeInt32(2, i3);
            }
            int i4 = this.maxConcurrentAttachSessionsInApp;
            if (i4 != 0) {
                codedOutputByteBufferNano.writeInt32(3, i4);
            }
            NanStatusHistogramBucket[] nanStatusHistogramBucketArr = this.histogramAttachSessionStatus;
            int i5 = 0;
            if (nanStatusHistogramBucketArr != null && nanStatusHistogramBucketArr.length > 0) {
                int i6 = 0;
                while (true) {
                    NanStatusHistogramBucket[] nanStatusHistogramBucketArr2 = this.histogramAttachSessionStatus;
                    if (i6 >= nanStatusHistogramBucketArr2.length) {
                        break;
                    }
                    NanStatusHistogramBucket nanStatusHistogramBucket = nanStatusHistogramBucketArr2[i6];
                    if (nanStatusHistogramBucket != null) {
                        codedOutputByteBufferNano.writeMessage(4, nanStatusHistogramBucket);
                    }
                    i6++;
                }
            }
            int i7 = this.maxConcurrentPublishInApp;
            if (i7 != 0) {
                codedOutputByteBufferNano.writeInt32(5, i7);
            }
            int i8 = this.maxConcurrentSubscribeInApp;
            if (i8 != 0) {
                codedOutputByteBufferNano.writeInt32(6, i8);
            }
            int i9 = this.maxConcurrentDiscoverySessionsInApp;
            if (i9 != 0) {
                codedOutputByteBufferNano.writeInt32(7, i9);
            }
            int i10 = this.maxConcurrentPublishInSystem;
            if (i10 != 0) {
                codedOutputByteBufferNano.writeInt32(8, i10);
            }
            int i11 = this.maxConcurrentSubscribeInSystem;
            if (i11 != 0) {
                codedOutputByteBufferNano.writeInt32(9, i11);
            }
            int i12 = this.maxConcurrentDiscoverySessionsInSystem;
            if (i12 != 0) {
                codedOutputByteBufferNano.writeInt32(10, i12);
            }
            NanStatusHistogramBucket[] nanStatusHistogramBucketArr3 = this.histogramPublishStatus;
            if (nanStatusHistogramBucketArr3 != null && nanStatusHistogramBucketArr3.length > 0) {
                int i13 = 0;
                while (true) {
                    NanStatusHistogramBucket[] nanStatusHistogramBucketArr4 = this.histogramPublishStatus;
                    if (i13 >= nanStatusHistogramBucketArr4.length) {
                        break;
                    }
                    NanStatusHistogramBucket nanStatusHistogramBucket2 = nanStatusHistogramBucketArr4[i13];
                    if (nanStatusHistogramBucket2 != null) {
                        codedOutputByteBufferNano.writeMessage(11, nanStatusHistogramBucket2);
                    }
                    i13++;
                }
            }
            NanStatusHistogramBucket[] nanStatusHistogramBucketArr5 = this.histogramSubscribeStatus;
            if (nanStatusHistogramBucketArr5 != null && nanStatusHistogramBucketArr5.length > 0) {
                int i14 = 0;
                while (true) {
                    NanStatusHistogramBucket[] nanStatusHistogramBucketArr6 = this.histogramSubscribeStatus;
                    if (i14 >= nanStatusHistogramBucketArr6.length) {
                        break;
                    }
                    NanStatusHistogramBucket nanStatusHistogramBucket3 = nanStatusHistogramBucketArr6[i14];
                    if (nanStatusHistogramBucket3 != null) {
                        codedOutputByteBufferNano.writeMessage(12, nanStatusHistogramBucket3);
                    }
                    i14++;
                }
            }
            int i15 = this.numAppsWithDiscoverySessionFailureOutOfResources;
            if (i15 != 0) {
                codedOutputByteBufferNano.writeInt32(13, i15);
            }
            NanStatusHistogramBucket[] nanStatusHistogramBucketArr7 = this.histogramRequestNdpStatus;
            if (nanStatusHistogramBucketArr7 != null && nanStatusHistogramBucketArr7.length > 0) {
                int i16 = 0;
                while (true) {
                    NanStatusHistogramBucket[] nanStatusHistogramBucketArr8 = this.histogramRequestNdpStatus;
                    if (i16 >= nanStatusHistogramBucketArr8.length) {
                        break;
                    }
                    NanStatusHistogramBucket nanStatusHistogramBucket4 = nanStatusHistogramBucketArr8[i16];
                    if (nanStatusHistogramBucket4 != null) {
                        codedOutputByteBufferNano.writeMessage(14, nanStatusHistogramBucket4);
                    }
                    i16++;
                }
            }
            NanStatusHistogramBucket[] nanStatusHistogramBucketArr9 = this.histogramRequestNdpOobStatus;
            if (nanStatusHistogramBucketArr9 != null && nanStatusHistogramBucketArr9.length > 0) {
                int i17 = 0;
                while (true) {
                    NanStatusHistogramBucket[] nanStatusHistogramBucketArr10 = this.histogramRequestNdpOobStatus;
                    if (i17 >= nanStatusHistogramBucketArr10.length) {
                        break;
                    }
                    NanStatusHistogramBucket nanStatusHistogramBucket5 = nanStatusHistogramBucketArr10[i17];
                    if (nanStatusHistogramBucket5 != null) {
                        codedOutputByteBufferNano.writeMessage(15, nanStatusHistogramBucket5);
                    }
                    i17++;
                }
            }
            int i18 = this.maxConcurrentNdiInApp;
            if (i18 != 0) {
                codedOutputByteBufferNano.writeInt32(19, i18);
            }
            int i19 = this.maxConcurrentNdiInSystem;
            if (i19 != 0) {
                codedOutputByteBufferNano.writeInt32(20, i19);
            }
            int i20 = this.maxConcurrentNdpInApp;
            if (i20 != 0) {
                codedOutputByteBufferNano.writeInt32(21, i20);
            }
            int i21 = this.maxConcurrentNdpInSystem;
            if (i21 != 0) {
                codedOutputByteBufferNano.writeInt32(22, i21);
            }
            int i22 = this.maxConcurrentSecureNdpInApp;
            if (i22 != 0) {
                codedOutputByteBufferNano.writeInt32(23, i22);
            }
            int i23 = this.maxConcurrentSecureNdpInSystem;
            if (i23 != 0) {
                codedOutputByteBufferNano.writeInt32(24, i23);
            }
            int i24 = this.maxConcurrentNdpPerNdi;
            if (i24 != 0) {
                codedOutputByteBufferNano.writeInt32(25, i24);
            }
            HistogramBucket[] histogramBucketArr = this.histogramAwareAvailableDurationMs;
            if (histogramBucketArr != null && histogramBucketArr.length > 0) {
                int i25 = 0;
                while (true) {
                    HistogramBucket[] histogramBucketArr2 = this.histogramAwareAvailableDurationMs;
                    if (i25 >= histogramBucketArr2.length) {
                        break;
                    }
                    HistogramBucket histogramBucket = histogramBucketArr2[i25];
                    if (histogramBucket != null) {
                        codedOutputByteBufferNano.writeMessage(26, histogramBucket);
                    }
                    i25++;
                }
            }
            HistogramBucket[] histogramBucketArr3 = this.histogramAwareEnabledDurationMs;
            if (histogramBucketArr3 != null && histogramBucketArr3.length > 0) {
                int i26 = 0;
                while (true) {
                    HistogramBucket[] histogramBucketArr4 = this.histogramAwareEnabledDurationMs;
                    if (i26 >= histogramBucketArr4.length) {
                        break;
                    }
                    HistogramBucket histogramBucket2 = histogramBucketArr4[i26];
                    if (histogramBucket2 != null) {
                        codedOutputByteBufferNano.writeMessage(27, histogramBucket2);
                    }
                    i26++;
                }
            }
            HistogramBucket[] histogramBucketArr5 = this.histogramAttachDurationMs;
            if (histogramBucketArr5 != null && histogramBucketArr5.length > 0) {
                int i27 = 0;
                while (true) {
                    HistogramBucket[] histogramBucketArr6 = this.histogramAttachDurationMs;
                    if (i27 >= histogramBucketArr6.length) {
                        break;
                    }
                    HistogramBucket histogramBucket3 = histogramBucketArr6[i27];
                    if (histogramBucket3 != null) {
                        codedOutputByteBufferNano.writeMessage(28, histogramBucket3);
                    }
                    i27++;
                }
            }
            HistogramBucket[] histogramBucketArr7 = this.histogramPublishSessionDurationMs;
            if (histogramBucketArr7 != null && histogramBucketArr7.length > 0) {
                int i28 = 0;
                while (true) {
                    HistogramBucket[] histogramBucketArr8 = this.histogramPublishSessionDurationMs;
                    if (i28 >= histogramBucketArr8.length) {
                        break;
                    }
                    HistogramBucket histogramBucket4 = histogramBucketArr8[i28];
                    if (histogramBucket4 != null) {
                        codedOutputByteBufferNano.writeMessage(29, histogramBucket4);
                    }
                    i28++;
                }
            }
            HistogramBucket[] histogramBucketArr9 = this.histogramSubscribeSessionDurationMs;
            if (histogramBucketArr9 != null && histogramBucketArr9.length > 0) {
                int i29 = 0;
                while (true) {
                    HistogramBucket[] histogramBucketArr10 = this.histogramSubscribeSessionDurationMs;
                    if (i29 >= histogramBucketArr10.length) {
                        break;
                    }
                    HistogramBucket histogramBucket5 = histogramBucketArr10[i29];
                    if (histogramBucket5 != null) {
                        codedOutputByteBufferNano.writeMessage(30, histogramBucket5);
                    }
                    i29++;
                }
            }
            HistogramBucket[] histogramBucketArr11 = this.histogramNdpSessionDurationMs;
            if (histogramBucketArr11 != null && histogramBucketArr11.length > 0) {
                int i30 = 0;
                while (true) {
                    HistogramBucket[] histogramBucketArr12 = this.histogramNdpSessionDurationMs;
                    if (i30 >= histogramBucketArr12.length) {
                        break;
                    }
                    HistogramBucket histogramBucket6 = histogramBucketArr12[i30];
                    if (histogramBucket6 != null) {
                        codedOutputByteBufferNano.writeMessage(31, histogramBucket6);
                    }
                    i30++;
                }
            }
            HistogramBucket[] histogramBucketArr13 = this.histogramNdpSessionDataUsageMb;
            if (histogramBucketArr13 != null && histogramBucketArr13.length > 0) {
                int i31 = 0;
                while (true) {
                    HistogramBucket[] histogramBucketArr14 = this.histogramNdpSessionDataUsageMb;
                    if (i31 >= histogramBucketArr14.length) {
                        break;
                    }
                    HistogramBucket histogramBucket7 = histogramBucketArr14[i31];
                    if (histogramBucket7 != null) {
                        codedOutputByteBufferNano.writeMessage(32, histogramBucket7);
                    }
                    i31++;
                }
            }
            HistogramBucket[] histogramBucketArr15 = this.histogramNdpCreationTimeMs;
            if (histogramBucketArr15 != null && histogramBucketArr15.length > 0) {
                while (true) {
                    HistogramBucket[] histogramBucketArr16 = this.histogramNdpCreationTimeMs;
                    if (i5 >= histogramBucketArr16.length) {
                        break;
                    }
                    HistogramBucket histogramBucket8 = histogramBucketArr16[i5];
                    if (histogramBucket8 != null) {
                        codedOutputByteBufferNano.writeMessage(33, histogramBucket8);
                    }
                    i5++;
                }
            }
            long j2 = this.ndpCreationTimeMsMin;
            if (j2 != 0) {
                codedOutputByteBufferNano.writeInt64(34, j2);
            }
            long j3 = this.ndpCreationTimeMsMax;
            if (j3 != 0) {
                codedOutputByteBufferNano.writeInt64(35, j3);
            }
            long j4 = this.ndpCreationTimeMsSum;
            if (j4 != 0) {
                codedOutputByteBufferNano.writeInt64(36, j4);
            }
            long j5 = this.ndpCreationTimeMsSumOfSq;
            if (j5 != 0) {
                codedOutputByteBufferNano.writeInt64(37, j5);
            }
            long j6 = this.ndpCreationTimeMsNumSamples;
            if (j6 != 0) {
                codedOutputByteBufferNano.writeInt64(38, j6);
            }
            long j7 = this.availableTimeMs;
            if (j7 != 0) {
                codedOutputByteBufferNano.writeInt64(39, j7);
            }
            long j8 = this.enabledTimeMs;
            if (j8 != 0) {
                codedOutputByteBufferNano.writeInt64(40, j8);
            }
            super.writeTo(codedOutputByteBufferNano);
        }

        public static WifiAwareLog parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
            return new WifiAwareLog().mergeFrom(codedInputByteBufferNano);
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public WifiAwareLog mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws InvalidProtocolBufferNanoException {
            while (true) {
                int tag = codedInputByteBufferNano.readTag();
                switch (tag) {
                    case 0:
                        return this;
                    case 8:
                        this.numApps = codedInputByteBufferNano.readInt32();
                        break;
                    case 16:
                        this.numAppsUsingIdentityCallback = codedInputByteBufferNano.readInt32();
                        break;
                    case 24:
                        this.maxConcurrentAttachSessionsInApp = codedInputByteBufferNano.readInt32();
                        break;
                    case 34:
                        int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 34);
                        NanStatusHistogramBucket[] nanStatusHistogramBucketArr = this.histogramAttachSessionStatus;
                        int length = nanStatusHistogramBucketArr == null ? 0 : nanStatusHistogramBucketArr.length;
                        int i2 = repeatedFieldArrayLength + length;
                        NanStatusHistogramBucket[] nanStatusHistogramBucketArr2 = new NanStatusHistogramBucket[i2];
                        if (length != 0) {
                            System.arraycopy(nanStatusHistogramBucketArr, 0, nanStatusHistogramBucketArr2, 0, length);
                        }
                        while (length < i2 - 1) {
                            NanStatusHistogramBucket nanStatusHistogramBucket = new NanStatusHistogramBucket();
                            nanStatusHistogramBucketArr2[length] = nanStatusHistogramBucket;
                            codedInputByteBufferNano.readMessage(nanStatusHistogramBucket);
                            codedInputByteBufferNano.readTag();
                            length++;
                        }
                        NanStatusHistogramBucket nanStatusHistogramBucket2 = new NanStatusHistogramBucket();
                        nanStatusHistogramBucketArr2[length] = nanStatusHistogramBucket2;
                        codedInputByteBufferNano.readMessage(nanStatusHistogramBucket2);
                        this.histogramAttachSessionStatus = nanStatusHistogramBucketArr2;
                        break;
                    case 40:
                        this.maxConcurrentPublishInApp = codedInputByteBufferNano.readInt32();
                        break;
                    case 48:
                        this.maxConcurrentSubscribeInApp = codedInputByteBufferNano.readInt32();
                        break;
                    case 56:
                        this.maxConcurrentDiscoverySessionsInApp = codedInputByteBufferNano.readInt32();
                        break;
                    case 64:
                        this.maxConcurrentPublishInSystem = codedInputByteBufferNano.readInt32();
                        break;
                    case 72:
                        this.maxConcurrentSubscribeInSystem = codedInputByteBufferNano.readInt32();
                        break;
                    case 80:
                        this.maxConcurrentDiscoverySessionsInSystem = codedInputByteBufferNano.readInt32();
                        break;
                    case 90:
                        int repeatedFieldArrayLength2 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 90);
                        NanStatusHistogramBucket[] nanStatusHistogramBucketArr3 = this.histogramPublishStatus;
                        int length2 = nanStatusHistogramBucketArr3 == null ? 0 : nanStatusHistogramBucketArr3.length;
                        int i3 = repeatedFieldArrayLength2 + length2;
                        NanStatusHistogramBucket[] nanStatusHistogramBucketArr4 = new NanStatusHistogramBucket[i3];
                        if (length2 != 0) {
                            System.arraycopy(nanStatusHistogramBucketArr3, 0, nanStatusHistogramBucketArr4, 0, length2);
                        }
                        while (length2 < i3 - 1) {
                            NanStatusHistogramBucket nanStatusHistogramBucket3 = new NanStatusHistogramBucket();
                            nanStatusHistogramBucketArr4[length2] = nanStatusHistogramBucket3;
                            codedInputByteBufferNano.readMessage(nanStatusHistogramBucket3);
                            codedInputByteBufferNano.readTag();
                            length2++;
                        }
                        NanStatusHistogramBucket nanStatusHistogramBucket4 = new NanStatusHistogramBucket();
                        nanStatusHistogramBucketArr4[length2] = nanStatusHistogramBucket4;
                        codedInputByteBufferNano.readMessage(nanStatusHistogramBucket4);
                        this.histogramPublishStatus = nanStatusHistogramBucketArr4;
                        break;
                    case 98:
                        int repeatedFieldArrayLength3 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 98);
                        NanStatusHistogramBucket[] nanStatusHistogramBucketArr5 = this.histogramSubscribeStatus;
                        int length3 = nanStatusHistogramBucketArr5 == null ? 0 : nanStatusHistogramBucketArr5.length;
                        int i4 = repeatedFieldArrayLength3 + length3;
                        NanStatusHistogramBucket[] nanStatusHistogramBucketArr6 = new NanStatusHistogramBucket[i4];
                        if (length3 != 0) {
                            System.arraycopy(nanStatusHistogramBucketArr5, 0, nanStatusHistogramBucketArr6, 0, length3);
                        }
                        while (length3 < i4 - 1) {
                            NanStatusHistogramBucket nanStatusHistogramBucket5 = new NanStatusHistogramBucket();
                            nanStatusHistogramBucketArr6[length3] = nanStatusHistogramBucket5;
                            codedInputByteBufferNano.readMessage(nanStatusHistogramBucket5);
                            codedInputByteBufferNano.readTag();
                            length3++;
                        }
                        NanStatusHistogramBucket nanStatusHistogramBucket6 = new NanStatusHistogramBucket();
                        nanStatusHistogramBucketArr6[length3] = nanStatusHistogramBucket6;
                        codedInputByteBufferNano.readMessage(nanStatusHistogramBucket6);
                        this.histogramSubscribeStatus = nanStatusHistogramBucketArr6;
                        break;
                    case 104:
                        this.numAppsWithDiscoverySessionFailureOutOfResources = codedInputByteBufferNano.readInt32();
                        break;
                    case 114:
                        int repeatedFieldArrayLength4 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 114);
                        NanStatusHistogramBucket[] nanStatusHistogramBucketArr7 = this.histogramRequestNdpStatus;
                        int length4 = nanStatusHistogramBucketArr7 == null ? 0 : nanStatusHistogramBucketArr7.length;
                        int i5 = repeatedFieldArrayLength4 + length4;
                        NanStatusHistogramBucket[] nanStatusHistogramBucketArr8 = new NanStatusHistogramBucket[i5];
                        if (length4 != 0) {
                            System.arraycopy(nanStatusHistogramBucketArr7, 0, nanStatusHistogramBucketArr8, 0, length4);
                        }
                        while (length4 < i5 - 1) {
                            NanStatusHistogramBucket nanStatusHistogramBucket7 = new NanStatusHistogramBucket();
                            nanStatusHistogramBucketArr8[length4] = nanStatusHistogramBucket7;
                            codedInputByteBufferNano.readMessage(nanStatusHistogramBucket7);
                            codedInputByteBufferNano.readTag();
                            length4++;
                        }
                        NanStatusHistogramBucket nanStatusHistogramBucket8 = new NanStatusHistogramBucket();
                        nanStatusHistogramBucketArr8[length4] = nanStatusHistogramBucket8;
                        codedInputByteBufferNano.readMessage(nanStatusHistogramBucket8);
                        this.histogramRequestNdpStatus = nanStatusHistogramBucketArr8;
                        break;
                    case 122:
                        int repeatedFieldArrayLength5 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 122);
                        NanStatusHistogramBucket[] nanStatusHistogramBucketArr9 = this.histogramRequestNdpOobStatus;
                        int length5 = nanStatusHistogramBucketArr9 == null ? 0 : nanStatusHistogramBucketArr9.length;
                        int i6 = repeatedFieldArrayLength5 + length5;
                        NanStatusHistogramBucket[] nanStatusHistogramBucketArr10 = new NanStatusHistogramBucket[i6];
                        if (length5 != 0) {
                            System.arraycopy(nanStatusHistogramBucketArr9, 0, nanStatusHistogramBucketArr10, 0, length5);
                        }
                        while (length5 < i6 - 1) {
                            NanStatusHistogramBucket nanStatusHistogramBucket9 = new NanStatusHistogramBucket();
                            nanStatusHistogramBucketArr10[length5] = nanStatusHistogramBucket9;
                            codedInputByteBufferNano.readMessage(nanStatusHistogramBucket9);
                            codedInputByteBufferNano.readTag();
                            length5++;
                        }
                        NanStatusHistogramBucket nanStatusHistogramBucket10 = new NanStatusHistogramBucket();
                        nanStatusHistogramBucketArr10[length5] = nanStatusHistogramBucket10;
                        codedInputByteBufferNano.readMessage(nanStatusHistogramBucket10);
                        this.histogramRequestNdpOobStatus = nanStatusHistogramBucketArr10;
                        break;
                    case 152:
                        this.maxConcurrentNdiInApp = codedInputByteBufferNano.readInt32();
                        break;
                    case 160:
                        this.maxConcurrentNdiInSystem = codedInputByteBufferNano.readInt32();
                        break;
                    case 168:
                        this.maxConcurrentNdpInApp = codedInputByteBufferNano.readInt32();
                        break;
                    case 176:
                        this.maxConcurrentNdpInSystem = codedInputByteBufferNano.readInt32();
                        break;
                    case 184:
                        this.maxConcurrentSecureNdpInApp = codedInputByteBufferNano.readInt32();
                        break;
                    case 192:
                        this.maxConcurrentSecureNdpInSystem = codedInputByteBufferNano.readInt32();
                        break;
                    case 200:
                        this.maxConcurrentNdpPerNdi = codedInputByteBufferNano.readInt32();
                        break;
                    case 210:
                        int repeatedFieldArrayLength6 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 210);
                        HistogramBucket[] histogramBucketArr = this.histogramAwareAvailableDurationMs;
                        int length6 = histogramBucketArr == null ? 0 : histogramBucketArr.length;
                        int i7 = repeatedFieldArrayLength6 + length6;
                        HistogramBucket[] histogramBucketArr2 = new HistogramBucket[i7];
                        if (length6 != 0) {
                            System.arraycopy(histogramBucketArr, 0, histogramBucketArr2, 0, length6);
                        }
                        while (length6 < i7 - 1) {
                            HistogramBucket histogramBucket = new HistogramBucket();
                            histogramBucketArr2[length6] = histogramBucket;
                            codedInputByteBufferNano.readMessage(histogramBucket);
                            codedInputByteBufferNano.readTag();
                            length6++;
                        }
                        HistogramBucket histogramBucket2 = new HistogramBucket();
                        histogramBucketArr2[length6] = histogramBucket2;
                        codedInputByteBufferNano.readMessage(histogramBucket2);
                        this.histogramAwareAvailableDurationMs = histogramBucketArr2;
                        break;
                    case 218:
                        int repeatedFieldArrayLength7 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 218);
                        HistogramBucket[] histogramBucketArr3 = this.histogramAwareEnabledDurationMs;
                        int length7 = histogramBucketArr3 == null ? 0 : histogramBucketArr3.length;
                        int i8 = repeatedFieldArrayLength7 + length7;
                        HistogramBucket[] histogramBucketArr4 = new HistogramBucket[i8];
                        if (length7 != 0) {
                            System.arraycopy(histogramBucketArr3, 0, histogramBucketArr4, 0, length7);
                        }
                        while (length7 < i8 - 1) {
                            HistogramBucket histogramBucket3 = new HistogramBucket();
                            histogramBucketArr4[length7] = histogramBucket3;
                            codedInputByteBufferNano.readMessage(histogramBucket3);
                            codedInputByteBufferNano.readTag();
                            length7++;
                        }
                        HistogramBucket histogramBucket4 = new HistogramBucket();
                        histogramBucketArr4[length7] = histogramBucket4;
                        codedInputByteBufferNano.readMessage(histogramBucket4);
                        this.histogramAwareEnabledDurationMs = histogramBucketArr4;
                        break;
                    case 226:
                        int repeatedFieldArrayLength8 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 226);
                        HistogramBucket[] histogramBucketArr5 = this.histogramAttachDurationMs;
                        int length8 = histogramBucketArr5 == null ? 0 : histogramBucketArr5.length;
                        int i9 = repeatedFieldArrayLength8 + length8;
                        HistogramBucket[] histogramBucketArr6 = new HistogramBucket[i9];
                        if (length8 != 0) {
                            System.arraycopy(histogramBucketArr5, 0, histogramBucketArr6, 0, length8);
                        }
                        while (length8 < i9 - 1) {
                            HistogramBucket histogramBucket5 = new HistogramBucket();
                            histogramBucketArr6[length8] = histogramBucket5;
                            codedInputByteBufferNano.readMessage(histogramBucket5);
                            codedInputByteBufferNano.readTag();
                            length8++;
                        }
                        HistogramBucket histogramBucket6 = new HistogramBucket();
                        histogramBucketArr6[length8] = histogramBucket6;
                        codedInputByteBufferNano.readMessage(histogramBucket6);
                        this.histogramAttachDurationMs = histogramBucketArr6;
                        break;
                    case 234:
                        int repeatedFieldArrayLength9 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 234);
                        HistogramBucket[] histogramBucketArr7 = this.histogramPublishSessionDurationMs;
                        int length9 = histogramBucketArr7 == null ? 0 : histogramBucketArr7.length;
                        int i10 = repeatedFieldArrayLength9 + length9;
                        HistogramBucket[] histogramBucketArr8 = new HistogramBucket[i10];
                        if (length9 != 0) {
                            System.arraycopy(histogramBucketArr7, 0, histogramBucketArr8, 0, length9);
                        }
                        while (length9 < i10 - 1) {
                            HistogramBucket histogramBucket7 = new HistogramBucket();
                            histogramBucketArr8[length9] = histogramBucket7;
                            codedInputByteBufferNano.readMessage(histogramBucket7);
                            codedInputByteBufferNano.readTag();
                            length9++;
                        }
                        HistogramBucket histogramBucket8 = new HistogramBucket();
                        histogramBucketArr8[length9] = histogramBucket8;
                        codedInputByteBufferNano.readMessage(histogramBucket8);
                        this.histogramPublishSessionDurationMs = histogramBucketArr8;
                        break;
                    case 242:
                        int repeatedFieldArrayLength10 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 242);
                        HistogramBucket[] histogramBucketArr9 = this.histogramSubscribeSessionDurationMs;
                        int length10 = histogramBucketArr9 == null ? 0 : histogramBucketArr9.length;
                        int i11 = repeatedFieldArrayLength10 + length10;
                        HistogramBucket[] histogramBucketArr10 = new HistogramBucket[i11];
                        if (length10 != 0) {
                            System.arraycopy(histogramBucketArr9, 0, histogramBucketArr10, 0, length10);
                        }
                        while (length10 < i11 - 1) {
                            HistogramBucket histogramBucket9 = new HistogramBucket();
                            histogramBucketArr10[length10] = histogramBucket9;
                            codedInputByteBufferNano.readMessage(histogramBucket9);
                            codedInputByteBufferNano.readTag();
                            length10++;
                        }
                        HistogramBucket histogramBucket10 = new HistogramBucket();
                        histogramBucketArr10[length10] = histogramBucket10;
                        codedInputByteBufferNano.readMessage(histogramBucket10);
                        this.histogramSubscribeSessionDurationMs = histogramBucketArr10;
                        break;
                    case 250:
                        int repeatedFieldArrayLength11 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 250);
                        HistogramBucket[] histogramBucketArr11 = this.histogramNdpSessionDurationMs;
                        int length11 = histogramBucketArr11 == null ? 0 : histogramBucketArr11.length;
                        int i12 = repeatedFieldArrayLength11 + length11;
                        HistogramBucket[] histogramBucketArr12 = new HistogramBucket[i12];
                        if (length11 != 0) {
                            System.arraycopy(histogramBucketArr11, 0, histogramBucketArr12, 0, length11);
                        }
                        while (length11 < i12 - 1) {
                            HistogramBucket histogramBucket11 = new HistogramBucket();
                            histogramBucketArr12[length11] = histogramBucket11;
                            codedInputByteBufferNano.readMessage(histogramBucket11);
                            codedInputByteBufferNano.readTag();
                            length11++;
                        }
                        HistogramBucket histogramBucket12 = new HistogramBucket();
                        histogramBucketArr12[length11] = histogramBucket12;
                        codedInputByteBufferNano.readMessage(histogramBucket12);
                        this.histogramNdpSessionDurationMs = histogramBucketArr12;
                        break;
                    case 258:
                        int repeatedFieldArrayLength12 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 258);
                        HistogramBucket[] histogramBucketArr13 = this.histogramNdpSessionDataUsageMb;
                        int length12 = histogramBucketArr13 == null ? 0 : histogramBucketArr13.length;
                        int i13 = repeatedFieldArrayLength12 + length12;
                        HistogramBucket[] histogramBucketArr14 = new HistogramBucket[i13];
                        if (length12 != 0) {
                            System.arraycopy(histogramBucketArr13, 0, histogramBucketArr14, 0, length12);
                        }
                        while (length12 < i13 - 1) {
                            HistogramBucket histogramBucket13 = new HistogramBucket();
                            histogramBucketArr14[length12] = histogramBucket13;
                            codedInputByteBufferNano.readMessage(histogramBucket13);
                            codedInputByteBufferNano.readTag();
                            length12++;
                        }
                        HistogramBucket histogramBucket14 = new HistogramBucket();
                        histogramBucketArr14[length12] = histogramBucket14;
                        codedInputByteBufferNano.readMessage(histogramBucket14);
                        this.histogramNdpSessionDataUsageMb = histogramBucketArr14;
                        break;
                    case 266:
                        int repeatedFieldArrayLength13 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 266);
                        HistogramBucket[] histogramBucketArr15 = this.histogramNdpCreationTimeMs;
                        int length13 = histogramBucketArr15 == null ? 0 : histogramBucketArr15.length;
                        int i14 = repeatedFieldArrayLength13 + length13;
                        HistogramBucket[] histogramBucketArr16 = new HistogramBucket[i14];
                        if (length13 != 0) {
                            System.arraycopy(histogramBucketArr15, 0, histogramBucketArr16, 0, length13);
                        }
                        while (length13 < i14 - 1) {
                            HistogramBucket histogramBucket15 = new HistogramBucket();
                            histogramBucketArr16[length13] = histogramBucket15;
                            codedInputByteBufferNano.readMessage(histogramBucket15);
                            codedInputByteBufferNano.readTag();
                            length13++;
                        }
                        HistogramBucket histogramBucket16 = new HistogramBucket();
                        histogramBucketArr16[length13] = histogramBucket16;
                        codedInputByteBufferNano.readMessage(histogramBucket16);
                        this.histogramNdpCreationTimeMs = histogramBucketArr16;
                        break;
                    case 272:
                        this.ndpCreationTimeMsMin = codedInputByteBufferNano.readInt64();
                        break;
                    case 280:
                        this.ndpCreationTimeMsMax = codedInputByteBufferNano.readInt64();
                        break;
                    case 288:
                        this.ndpCreationTimeMsSum = codedInputByteBufferNano.readInt64();
                        break;
                    case 296:
                        this.ndpCreationTimeMsSumOfSq = codedInputByteBufferNano.readInt64();
                        break;
                    case 304:
                        this.ndpCreationTimeMsNumSamples = codedInputByteBufferNano.readInt64();
                        break;
                    case 312:
                        this.availableTimeMs = codedInputByteBufferNano.readInt64();
                        break;
                    case 320:
                        this.enabledTimeMs = codedInputByteBufferNano.readInt64();
                        break;
                    default:
                        if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                            return this;
                        }
                        break;
                        break;
                }
            }
        }
    }

    public static final class WifiLog extends MessageNano {
        public static final int FAILURE_WIFI_DISABLED = 4;
        public static final int SCAN_FAILURE_INTERRUPTED = 2;
        public static final int SCAN_FAILURE_INVALID_CONFIGURATION = 3;
        public static final int SCAN_SUCCESS = 1;
        public static final int SCAN_UNKNOWN = 0;
        public static final int WIFI_ASSOCIATED = 3;
        public static final int WIFI_DISABLED = 1;
        public static final int WIFI_DISCONNECTED = 2;
        public static final int WIFI_UNKNOWN = 0;
        private static volatile WifiLog[] _emptyArray;
        public AlertReasonCount[] alertReasonCount;
        public NumConnectableNetworksBucket[] availableOpenBssidsInScanHistogram;
        public NumConnectableNetworksBucket[] availableOpenOrSavedBssidsInScanHistogram;
        public NumConnectableNetworksBucket[] availableOpenOrSavedSsidsInScanHistogram;
        public NumConnectableNetworksBucket[] availableOpenSsidsInScanHistogram;
        public NumConnectableNetworksBucket[] availableSavedBssidsInScanHistogram;
        public NumConnectableNetworksBucket[] availableSavedPasspointProviderBssidsInScanHistogram;
        public NumConnectableNetworksBucket[] availableSavedPasspointProviderProfilesInScanHistogram;
        public NumConnectableNetworksBucket[] availableSavedSsidsInScanHistogram;
        public WifiSystemStateEntry[] backgroundScanRequestState;
        public ScanReturnEntry[] backgroundScanReturnEntries;
        public ConnectToNetworkNotificationAndActionCount[] connectToNetworkNotificationActionCount;
        public ConnectToNetworkNotificationAndActionCount[] connectToNetworkNotificationCount;
        public ConnectionEvent[] connectionEvent;
        public int fullBandAllSingleScanListenerResults;
        public boolean isLocationEnabled;
        public boolean isScanningAlwaysEnabled;
        public boolean isWifiNetworksAvailableNotificationOn;
        public int numBackgroundScans;
        public int numConnectivityWatchdogBackgroundBad;
        public int numConnectivityWatchdogBackgroundGood;
        public int numConnectivityWatchdogPnoBad;
        public int numConnectivityWatchdogPnoGood;
        public int numEmptyScanResults;
        public int numEnterpriseNetworkScanResults;
        public int numEnterpriseNetworks;
        public int numHalCrashes;
        public int numHiddenNetworkScanResults;
        public int numHiddenNetworks;
        public int numHotspot2R1NetworkScanResults;
        public int numHotspot2R2NetworkScanResults;
        public int numLastResortWatchdogAvailableNetworksTotal;
        public int numLastResortWatchdogBadAssociationNetworksTotal;
        public int numLastResortWatchdogBadAuthenticationNetworksTotal;
        public int numLastResortWatchdogBadDhcpNetworksTotal;
        public int numLastResortWatchdogBadOtherNetworksTotal;
        public int numLastResortWatchdogSuccesses;
        public int numLastResortWatchdogTriggers;
        public int numLastResortWatchdogTriggersWithBadAssociation;
        public int numLastResortWatchdogTriggersWithBadAuthentication;
        public int numLastResortWatchdogTriggersWithBadDhcp;
        public int numLastResortWatchdogTriggersWithBadOther;
        public int numNetworksAddedByApps;
        public int numNetworksAddedByUser;
        public int numNonEmptyScanResults;
        public int numOneshotScans;
        public int numOpenNetworkConnectMessageFailedToSend;
        public int numOpenNetworkRecommendationUpdates;
        public int numOpenNetworkScanResults;
        public int numOpenNetworks;
        public int numPasspointNetworks;
        public int numPasspointProviderInstallSuccess;
        public int numPasspointProviderInstallation;
        public int numPasspointProviderUninstallSuccess;
        public int numPasspointProviderUninstallation;
        public int numPasspointProviders;
        public int numPasspointProvidersSuccessfullyConnected;
        public int numPersonalNetworkScanResults;
        public int numPersonalNetworks;
        public int numSavedNetworks;
        public int numScans;
        public int numTotalScanResults;
        public int numWifiOnFailureDueToHal;
        public int numWifiOnFailureDueToWificond;
        public int numWifiToggledViaAirplane;
        public int numWifiToggledViaSettings;
        public int numWificondCrashes;
        public int openNetworkRecommenderBlacklistSize;
        public int partialAllSingleScanListenerResults;
        public PnoScanMetrics pnoScanMetrics;
        public int recordDurationSec;
        public RssiPollCount[] rssiPollDeltaCount;
        public RssiPollCount[] rssiPollRssiCount;
        public ScanReturnEntry[] scanReturnEntries;
        public SoftApDurationBucket[] softApDuration;
        public SoftApReturnCodeCount[] softApReturnCode;
        public StaEvent[] staEventList;
        public NumConnectableNetworksBucket[] totalBssidsInScanHistogram;
        public NumConnectableNetworksBucket[] totalSsidsInScanHistogram;
        public WifiAwareLog wifiAwareLog;
        public WifiScoreCount[] wifiScoreCount;
        public WifiSystemStateEntry[] wifiSystemStateEntries;

        public static final class ScanReturnEntry extends MessageNano {
            private static volatile ScanReturnEntry[] _emptyArray;
            public int scanResultsCount;
            public int scanReturnCode;

            public ScanReturnEntry() {
                clear();
            }

            public static ScanReturnEntry[] emptyArray() {
                if (_emptyArray == null) {
                    synchronized (InternalNano.LAZY_INIT_LOCK) {
                        if (_emptyArray == null) {
                            _emptyArray = new ScanReturnEntry[0];
                        }
                    }
                }
                return _emptyArray;
            }

            public static ScanReturnEntry parseFrom(byte[] bArr) {
                return (ScanReturnEntry) MessageNano.mergeFrom(new ScanReturnEntry(), bArr);
            }

            public ScanReturnEntry clear() {
                this.scanReturnCode = 0;
                this.scanResultsCount = 0;
                this.cachedSize = -1;
                return this;
            }

            @Override // com.android.framework.protobuf.nano.MessageNano
            public int computeSerializedSize() {
                int iComputeSerializedSize = super.computeSerializedSize();
                int i2 = this.scanReturnCode;
                if (i2 != 0) {
                    iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(1, i2);
                }
                int i3 = this.scanResultsCount;
                return i3 != 0 ? iComputeSerializedSize + CodedOutputByteBufferNano.computeInt32Size(2, i3) : iComputeSerializedSize;
            }

            @Override // com.android.framework.protobuf.nano.MessageNano
            public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws CodedOutputByteBufferNano.OutOfSpaceException {
                int i2 = this.scanReturnCode;
                if (i2 != 0) {
                    codedOutputByteBufferNano.writeInt32(1, i2);
                }
                int i3 = this.scanResultsCount;
                if (i3 != 0) {
                    codedOutputByteBufferNano.writeInt32(2, i3);
                }
                super.writeTo(codedOutputByteBufferNano);
            }

            public static ScanReturnEntry parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
                return new ScanReturnEntry().mergeFrom(codedInputByteBufferNano);
            }

            @Override // com.android.framework.protobuf.nano.MessageNano
            public ScanReturnEntry mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws InvalidProtocolBufferNanoException {
                while (true) {
                    int tag = codedInputByteBufferNano.readTag();
                    if (tag == 0) {
                        return this;
                    }
                    if (tag == 8) {
                        int int32 = codedInputByteBufferNano.readInt32();
                        if (int32 == 0 || int32 == 1 || int32 == 2 || int32 == 3 || int32 == 4) {
                            this.scanReturnCode = int32;
                        }
                    } else if (tag == 16) {
                        this.scanResultsCount = codedInputByteBufferNano.readInt32();
                    } else if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                        return this;
                    }
                }
            }
        }

        public static final class WifiSystemStateEntry extends MessageNano {
            private static volatile WifiSystemStateEntry[] _emptyArray;
            public boolean isScreenOn;
            public int wifiState;
            public int wifiStateCount;

            public WifiSystemStateEntry() {
                clear();
            }

            public static WifiSystemStateEntry[] emptyArray() {
                if (_emptyArray == null) {
                    synchronized (InternalNano.LAZY_INIT_LOCK) {
                        if (_emptyArray == null) {
                            _emptyArray = new WifiSystemStateEntry[0];
                        }
                    }
                }
                return _emptyArray;
            }

            public static WifiSystemStateEntry parseFrom(byte[] bArr) {
                return (WifiSystemStateEntry) MessageNano.mergeFrom(new WifiSystemStateEntry(), bArr);
            }

            public WifiSystemStateEntry clear() {
                this.wifiState = 0;
                this.wifiStateCount = 0;
                this.isScreenOn = false;
                this.cachedSize = -1;
                return this;
            }

            @Override // com.android.framework.protobuf.nano.MessageNano
            public int computeSerializedSize() {
                int iComputeSerializedSize = super.computeSerializedSize();
                int i2 = this.wifiState;
                if (i2 != 0) {
                    iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(1, i2);
                }
                int i3 = this.wifiStateCount;
                if (i3 != 0) {
                    iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(2, i3);
                }
                boolean z2 = this.isScreenOn;
                return z2 ? iComputeSerializedSize + CodedOutputByteBufferNano.computeBoolSize(3, z2) : iComputeSerializedSize;
            }

            @Override // com.android.framework.protobuf.nano.MessageNano
            public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws CodedOutputByteBufferNano.OutOfSpaceException {
                int i2 = this.wifiState;
                if (i2 != 0) {
                    codedOutputByteBufferNano.writeInt32(1, i2);
                }
                int i3 = this.wifiStateCount;
                if (i3 != 0) {
                    codedOutputByteBufferNano.writeInt32(2, i3);
                }
                boolean z2 = this.isScreenOn;
                if (z2) {
                    codedOutputByteBufferNano.writeBool(3, z2);
                }
                super.writeTo(codedOutputByteBufferNano);
            }

            public static WifiSystemStateEntry parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
                return new WifiSystemStateEntry().mergeFrom(codedInputByteBufferNano);
            }

            @Override // com.android.framework.protobuf.nano.MessageNano
            public WifiSystemStateEntry mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws InvalidProtocolBufferNanoException {
                while (true) {
                    int tag = codedInputByteBufferNano.readTag();
                    if (tag == 0) {
                        return this;
                    }
                    if (tag == 8) {
                        int int32 = codedInputByteBufferNano.readInt32();
                        if (int32 == 0 || int32 == 1 || int32 == 2 || int32 == 3) {
                            this.wifiState = int32;
                        }
                    } else if (tag == 16) {
                        this.wifiStateCount = codedInputByteBufferNano.readInt32();
                    } else if (tag == 24) {
                        this.isScreenOn = codedInputByteBufferNano.readBool();
                    } else if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                        return this;
                    }
                }
            }
        }

        public WifiLog() {
            clear();
        }

        public static WifiLog[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new WifiLog[0];
                    }
                }
            }
            return _emptyArray;
        }

        public static WifiLog parseFrom(byte[] bArr) {
            return (WifiLog) MessageNano.mergeFrom(new WifiLog(), bArr);
        }

        public WifiLog clear() {
            this.connectionEvent = ConnectionEvent.emptyArray();
            this.numSavedNetworks = 0;
            this.numOpenNetworks = 0;
            this.numPersonalNetworks = 0;
            this.numEnterpriseNetworks = 0;
            this.isLocationEnabled = false;
            this.isScanningAlwaysEnabled = false;
            this.numWifiToggledViaSettings = 0;
            this.numWifiToggledViaAirplane = 0;
            this.numNetworksAddedByUser = 0;
            this.numNetworksAddedByApps = 0;
            this.numEmptyScanResults = 0;
            this.numNonEmptyScanResults = 0;
            this.numOneshotScans = 0;
            this.numBackgroundScans = 0;
            this.scanReturnEntries = ScanReturnEntry.emptyArray();
            this.wifiSystemStateEntries = WifiSystemStateEntry.emptyArray();
            this.backgroundScanReturnEntries = ScanReturnEntry.emptyArray();
            this.backgroundScanRequestState = WifiSystemStateEntry.emptyArray();
            this.numLastResortWatchdogTriggers = 0;
            this.numLastResortWatchdogBadAssociationNetworksTotal = 0;
            this.numLastResortWatchdogBadAuthenticationNetworksTotal = 0;
            this.numLastResortWatchdogBadDhcpNetworksTotal = 0;
            this.numLastResortWatchdogBadOtherNetworksTotal = 0;
            this.numLastResortWatchdogAvailableNetworksTotal = 0;
            this.numLastResortWatchdogTriggersWithBadAssociation = 0;
            this.numLastResortWatchdogTriggersWithBadAuthentication = 0;
            this.numLastResortWatchdogTriggersWithBadDhcp = 0;
            this.numLastResortWatchdogTriggersWithBadOther = 0;
            this.numConnectivityWatchdogPnoGood = 0;
            this.numConnectivityWatchdogPnoBad = 0;
            this.numConnectivityWatchdogBackgroundGood = 0;
            this.numConnectivityWatchdogBackgroundBad = 0;
            this.recordDurationSec = 0;
            this.rssiPollRssiCount = RssiPollCount.emptyArray();
            this.numLastResortWatchdogSuccesses = 0;
            this.numHiddenNetworks = 0;
            this.numPasspointNetworks = 0;
            this.numTotalScanResults = 0;
            this.numOpenNetworkScanResults = 0;
            this.numPersonalNetworkScanResults = 0;
            this.numEnterpriseNetworkScanResults = 0;
            this.numHiddenNetworkScanResults = 0;
            this.numHotspot2R1NetworkScanResults = 0;
            this.numHotspot2R2NetworkScanResults = 0;
            this.numScans = 0;
            this.alertReasonCount = AlertReasonCount.emptyArray();
            this.wifiScoreCount = WifiScoreCount.emptyArray();
            this.softApDuration = SoftApDurationBucket.emptyArray();
            this.softApReturnCode = SoftApReturnCodeCount.emptyArray();
            this.rssiPollDeltaCount = RssiPollCount.emptyArray();
            this.staEventList = StaEvent.emptyArray();
            this.numHalCrashes = 0;
            this.numWificondCrashes = 0;
            this.numWifiOnFailureDueToHal = 0;
            this.numWifiOnFailureDueToWificond = 0;
            this.wifiAwareLog = null;
            this.numPasspointProviders = 0;
            this.numPasspointProviderInstallation = 0;
            this.numPasspointProviderInstallSuccess = 0;
            this.numPasspointProviderUninstallation = 0;
            this.numPasspointProviderUninstallSuccess = 0;
            this.numPasspointProvidersSuccessfullyConnected = 0;
            this.totalSsidsInScanHistogram = NumConnectableNetworksBucket.emptyArray();
            this.totalBssidsInScanHistogram = NumConnectableNetworksBucket.emptyArray();
            this.availableOpenSsidsInScanHistogram = NumConnectableNetworksBucket.emptyArray();
            this.availableOpenBssidsInScanHistogram = NumConnectableNetworksBucket.emptyArray();
            this.availableSavedSsidsInScanHistogram = NumConnectableNetworksBucket.emptyArray();
            this.availableSavedBssidsInScanHistogram = NumConnectableNetworksBucket.emptyArray();
            this.availableOpenOrSavedSsidsInScanHistogram = NumConnectableNetworksBucket.emptyArray();
            this.availableOpenOrSavedBssidsInScanHistogram = NumConnectableNetworksBucket.emptyArray();
            this.availableSavedPasspointProviderProfilesInScanHistogram = NumConnectableNetworksBucket.emptyArray();
            this.availableSavedPasspointProviderBssidsInScanHistogram = NumConnectableNetworksBucket.emptyArray();
            this.fullBandAllSingleScanListenerResults = 0;
            this.partialAllSingleScanListenerResults = 0;
            this.pnoScanMetrics = null;
            this.connectToNetworkNotificationCount = ConnectToNetworkNotificationAndActionCount.emptyArray();
            this.connectToNetworkNotificationActionCount = ConnectToNetworkNotificationAndActionCount.emptyArray();
            this.openNetworkRecommenderBlacklistSize = 0;
            this.isWifiNetworksAvailableNotificationOn = false;
            this.numOpenNetworkRecommendationUpdates = 0;
            this.numOpenNetworkConnectMessageFailedToSend = 0;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public int computeSerializedSize() {
            int iComputeSerializedSize = super.computeSerializedSize();
            ConnectionEvent[] connectionEventArr = this.connectionEvent;
            int i2 = 0;
            if (connectionEventArr != null && connectionEventArr.length > 0) {
                int i3 = 0;
                while (true) {
                    ConnectionEvent[] connectionEventArr2 = this.connectionEvent;
                    if (i3 >= connectionEventArr2.length) {
                        break;
                    }
                    ConnectionEvent connectionEvent = connectionEventArr2[i3];
                    if (connectionEvent != null) {
                        iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, connectionEvent);
                    }
                    i3++;
                }
            }
            int i4 = this.numSavedNetworks;
            if (i4 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(2, i4);
            }
            int i5 = this.numOpenNetworks;
            if (i5 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(3, i5);
            }
            int i6 = this.numPersonalNetworks;
            if (i6 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(4, i6);
            }
            int i7 = this.numEnterpriseNetworks;
            if (i7 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(5, i7);
            }
            boolean z2 = this.isLocationEnabled;
            if (z2) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(6, z2);
            }
            boolean z3 = this.isScanningAlwaysEnabled;
            if (z3) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(7, z3);
            }
            int i8 = this.numWifiToggledViaSettings;
            if (i8 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(8, i8);
            }
            int i9 = this.numWifiToggledViaAirplane;
            if (i9 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(9, i9);
            }
            int i10 = this.numNetworksAddedByUser;
            if (i10 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(10, i10);
            }
            int i11 = this.numNetworksAddedByApps;
            if (i11 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(11, i11);
            }
            int i12 = this.numEmptyScanResults;
            if (i12 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(12, i12);
            }
            int i13 = this.numNonEmptyScanResults;
            if (i13 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(13, i13);
            }
            int i14 = this.numOneshotScans;
            if (i14 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(14, i14);
            }
            int i15 = this.numBackgroundScans;
            if (i15 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(15, i15);
            }
            ScanReturnEntry[] scanReturnEntryArr = this.scanReturnEntries;
            if (scanReturnEntryArr != null && scanReturnEntryArr.length > 0) {
                int i16 = 0;
                while (true) {
                    ScanReturnEntry[] scanReturnEntryArr2 = this.scanReturnEntries;
                    if (i16 >= scanReturnEntryArr2.length) {
                        break;
                    }
                    ScanReturnEntry scanReturnEntry = scanReturnEntryArr2[i16];
                    if (scanReturnEntry != null) {
                        iComputeSerializedSize = CodedOutputByteBufferNano.computeMessageSize(16, scanReturnEntry) + iComputeSerializedSize;
                    }
                    i16++;
                }
            }
            WifiSystemStateEntry[] wifiSystemStateEntryArr = this.wifiSystemStateEntries;
            if (wifiSystemStateEntryArr != null && wifiSystemStateEntryArr.length > 0) {
                int i17 = 0;
                while (true) {
                    WifiSystemStateEntry[] wifiSystemStateEntryArr2 = this.wifiSystemStateEntries;
                    if (i17 >= wifiSystemStateEntryArr2.length) {
                        break;
                    }
                    WifiSystemStateEntry wifiSystemStateEntry = wifiSystemStateEntryArr2[i17];
                    if (wifiSystemStateEntry != null) {
                        iComputeSerializedSize = CodedOutputByteBufferNano.computeMessageSize(17, wifiSystemStateEntry) + iComputeSerializedSize;
                    }
                    i17++;
                }
            }
            ScanReturnEntry[] scanReturnEntryArr3 = this.backgroundScanReturnEntries;
            if (scanReturnEntryArr3 != null && scanReturnEntryArr3.length > 0) {
                int i18 = 0;
                while (true) {
                    ScanReturnEntry[] scanReturnEntryArr4 = this.backgroundScanReturnEntries;
                    if (i18 >= scanReturnEntryArr4.length) {
                        break;
                    }
                    ScanReturnEntry scanReturnEntry2 = scanReturnEntryArr4[i18];
                    if (scanReturnEntry2 != null) {
                        iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(18, scanReturnEntry2);
                    }
                    i18++;
                }
            }
            WifiSystemStateEntry[] wifiSystemStateEntryArr3 = this.backgroundScanRequestState;
            if (wifiSystemStateEntryArr3 != null && wifiSystemStateEntryArr3.length > 0) {
                int i19 = 0;
                while (true) {
                    WifiSystemStateEntry[] wifiSystemStateEntryArr4 = this.backgroundScanRequestState;
                    if (i19 >= wifiSystemStateEntryArr4.length) {
                        break;
                    }
                    WifiSystemStateEntry wifiSystemStateEntry2 = wifiSystemStateEntryArr4[i19];
                    if (wifiSystemStateEntry2 != null) {
                        iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(19, wifiSystemStateEntry2);
                    }
                    i19++;
                }
            }
            int i20 = this.numLastResortWatchdogTriggers;
            if (i20 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(20, i20);
            }
            int i21 = this.numLastResortWatchdogBadAssociationNetworksTotal;
            if (i21 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(21, i21);
            }
            int i22 = this.numLastResortWatchdogBadAuthenticationNetworksTotal;
            if (i22 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(22, i22);
            }
            int i23 = this.numLastResortWatchdogBadDhcpNetworksTotal;
            if (i23 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(23, i23);
            }
            int i24 = this.numLastResortWatchdogBadOtherNetworksTotal;
            if (i24 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(24, i24);
            }
            int i25 = this.numLastResortWatchdogAvailableNetworksTotal;
            if (i25 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(25, i25);
            }
            int i26 = this.numLastResortWatchdogTriggersWithBadAssociation;
            if (i26 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(26, i26);
            }
            int i27 = this.numLastResortWatchdogTriggersWithBadAuthentication;
            if (i27 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(27, i27);
            }
            int i28 = this.numLastResortWatchdogTriggersWithBadDhcp;
            if (i28 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(28, i28);
            }
            int i29 = this.numLastResortWatchdogTriggersWithBadOther;
            if (i29 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(29, i29);
            }
            int i30 = this.numConnectivityWatchdogPnoGood;
            if (i30 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(30, i30);
            }
            int i31 = this.numConnectivityWatchdogPnoBad;
            if (i31 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(31, i31);
            }
            int i32 = this.numConnectivityWatchdogBackgroundGood;
            if (i32 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(32, i32);
            }
            int i33 = this.numConnectivityWatchdogBackgroundBad;
            if (i33 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(33, i33);
            }
            int i34 = this.recordDurationSec;
            if (i34 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(34, i34);
            }
            RssiPollCount[] rssiPollCountArr = this.rssiPollRssiCount;
            if (rssiPollCountArr != null && rssiPollCountArr.length > 0) {
                int i35 = 0;
                while (true) {
                    RssiPollCount[] rssiPollCountArr2 = this.rssiPollRssiCount;
                    if (i35 >= rssiPollCountArr2.length) {
                        break;
                    }
                    RssiPollCount rssiPollCount = rssiPollCountArr2[i35];
                    if (rssiPollCount != null) {
                        iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(35, rssiPollCount);
                    }
                    i35++;
                }
            }
            int i36 = this.numLastResortWatchdogSuccesses;
            if (i36 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(36, i36);
            }
            int i37 = this.numHiddenNetworks;
            if (i37 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(37, i37);
            }
            int i38 = this.numPasspointNetworks;
            if (i38 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(38, i38);
            }
            int i39 = this.numTotalScanResults;
            if (i39 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(39, i39);
            }
            int i40 = this.numOpenNetworkScanResults;
            if (i40 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(40, i40);
            }
            int i41 = this.numPersonalNetworkScanResults;
            if (i41 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(41, i41);
            }
            int i42 = this.numEnterpriseNetworkScanResults;
            if (i42 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(42, i42);
            }
            int i43 = this.numHiddenNetworkScanResults;
            if (i43 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(43, i43);
            }
            int i44 = this.numHotspot2R1NetworkScanResults;
            if (i44 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(44, i44);
            }
            int i45 = this.numHotspot2R2NetworkScanResults;
            if (i45 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(45, i45);
            }
            int i46 = this.numScans;
            if (i46 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(46, i46);
            }
            AlertReasonCount[] alertReasonCountArr = this.alertReasonCount;
            if (alertReasonCountArr != null && alertReasonCountArr.length > 0) {
                int i47 = 0;
                while (true) {
                    AlertReasonCount[] alertReasonCountArr2 = this.alertReasonCount;
                    if (i47 >= alertReasonCountArr2.length) {
                        break;
                    }
                    AlertReasonCount alertReasonCount = alertReasonCountArr2[i47];
                    if (alertReasonCount != null) {
                        iComputeSerializedSize = CodedOutputByteBufferNano.computeMessageSize(47, alertReasonCount) + iComputeSerializedSize;
                    }
                    i47++;
                }
            }
            WifiScoreCount[] wifiScoreCountArr = this.wifiScoreCount;
            if (wifiScoreCountArr != null && wifiScoreCountArr.length > 0) {
                int i48 = 0;
                while (true) {
                    WifiScoreCount[] wifiScoreCountArr2 = this.wifiScoreCount;
                    if (i48 >= wifiScoreCountArr2.length) {
                        break;
                    }
                    WifiScoreCount wifiScoreCount = wifiScoreCountArr2[i48];
                    if (wifiScoreCount != null) {
                        iComputeSerializedSize = CodedOutputByteBufferNano.computeMessageSize(48, wifiScoreCount) + iComputeSerializedSize;
                    }
                    i48++;
                }
            }
            SoftApDurationBucket[] softApDurationBucketArr = this.softApDuration;
            if (softApDurationBucketArr != null && softApDurationBucketArr.length > 0) {
                int i49 = 0;
                while (true) {
                    SoftApDurationBucket[] softApDurationBucketArr2 = this.softApDuration;
                    if (i49 >= softApDurationBucketArr2.length) {
                        break;
                    }
                    SoftApDurationBucket softApDurationBucket = softApDurationBucketArr2[i49];
                    if (softApDurationBucket != null) {
                        iComputeSerializedSize = CodedOutputByteBufferNano.computeMessageSize(49, softApDurationBucket) + iComputeSerializedSize;
                    }
                    i49++;
                }
            }
            SoftApReturnCodeCount[] softApReturnCodeCountArr = this.softApReturnCode;
            if (softApReturnCodeCountArr != null && softApReturnCodeCountArr.length > 0) {
                int i50 = 0;
                while (true) {
                    SoftApReturnCodeCount[] softApReturnCodeCountArr2 = this.softApReturnCode;
                    if (i50 >= softApReturnCodeCountArr2.length) {
                        break;
                    }
                    SoftApReturnCodeCount softApReturnCodeCount = softApReturnCodeCountArr2[i50];
                    if (softApReturnCodeCount != null) {
                        iComputeSerializedSize = CodedOutputByteBufferNano.computeMessageSize(50, softApReturnCodeCount) + iComputeSerializedSize;
                    }
                    i50++;
                }
            }
            RssiPollCount[] rssiPollCountArr3 = this.rssiPollDeltaCount;
            if (rssiPollCountArr3 != null && rssiPollCountArr3.length > 0) {
                int i51 = 0;
                while (true) {
                    RssiPollCount[] rssiPollCountArr4 = this.rssiPollDeltaCount;
                    if (i51 >= rssiPollCountArr4.length) {
                        break;
                    }
                    RssiPollCount rssiPollCount2 = rssiPollCountArr4[i51];
                    if (rssiPollCount2 != null) {
                        iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(51, rssiPollCount2);
                    }
                    i51++;
                }
            }
            StaEvent[] staEventArr = this.staEventList;
            if (staEventArr != null && staEventArr.length > 0) {
                int i52 = 0;
                while (true) {
                    StaEvent[] staEventArr2 = this.staEventList;
                    if (i52 >= staEventArr2.length) {
                        break;
                    }
                    StaEvent staEvent = staEventArr2[i52];
                    if (staEvent != null) {
                        iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(52, staEvent);
                    }
                    i52++;
                }
            }
            int i53 = this.numHalCrashes;
            if (i53 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(53, i53);
            }
            int i54 = this.numWificondCrashes;
            if (i54 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(54, i54);
            }
            int i55 = this.numWifiOnFailureDueToHal;
            if (i55 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(55, i55);
            }
            int i56 = this.numWifiOnFailureDueToWificond;
            if (i56 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(56, i56);
            }
            WifiAwareLog wifiAwareLog = this.wifiAwareLog;
            if (wifiAwareLog != null) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(57, wifiAwareLog);
            }
            int i57 = this.numPasspointProviders;
            if (i57 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(58, i57);
            }
            int i58 = this.numPasspointProviderInstallation;
            if (i58 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(59, i58);
            }
            int i59 = this.numPasspointProviderInstallSuccess;
            if (i59 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(60, i59);
            }
            int i60 = this.numPasspointProviderUninstallation;
            if (i60 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(61, i60);
            }
            int i61 = this.numPasspointProviderUninstallSuccess;
            if (i61 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(62, i61);
            }
            int i62 = this.numPasspointProvidersSuccessfullyConnected;
            if (i62 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(63, i62);
            }
            NumConnectableNetworksBucket[] numConnectableNetworksBucketArr = this.totalSsidsInScanHistogram;
            if (numConnectableNetworksBucketArr != null && numConnectableNetworksBucketArr.length > 0) {
                int i63 = 0;
                while (true) {
                    NumConnectableNetworksBucket[] numConnectableNetworksBucketArr2 = this.totalSsidsInScanHistogram;
                    if (i63 >= numConnectableNetworksBucketArr2.length) {
                        break;
                    }
                    NumConnectableNetworksBucket numConnectableNetworksBucket = numConnectableNetworksBucketArr2[i63];
                    if (numConnectableNetworksBucket != null) {
                        iComputeSerializedSize = CodedOutputByteBufferNano.computeMessageSize(64, numConnectableNetworksBucket) + iComputeSerializedSize;
                    }
                    i63++;
                }
            }
            NumConnectableNetworksBucket[] numConnectableNetworksBucketArr3 = this.totalBssidsInScanHistogram;
            if (numConnectableNetworksBucketArr3 != null && numConnectableNetworksBucketArr3.length > 0) {
                int i64 = 0;
                while (true) {
                    NumConnectableNetworksBucket[] numConnectableNetworksBucketArr4 = this.totalBssidsInScanHistogram;
                    if (i64 >= numConnectableNetworksBucketArr4.length) {
                        break;
                    }
                    NumConnectableNetworksBucket numConnectableNetworksBucket2 = numConnectableNetworksBucketArr4[i64];
                    if (numConnectableNetworksBucket2 != null) {
                        iComputeSerializedSize = CodedOutputByteBufferNano.computeMessageSize(65, numConnectableNetworksBucket2) + iComputeSerializedSize;
                    }
                    i64++;
                }
            }
            NumConnectableNetworksBucket[] numConnectableNetworksBucketArr5 = this.availableOpenSsidsInScanHistogram;
            if (numConnectableNetworksBucketArr5 != null && numConnectableNetworksBucketArr5.length > 0) {
                int i65 = 0;
                while (true) {
                    NumConnectableNetworksBucket[] numConnectableNetworksBucketArr6 = this.availableOpenSsidsInScanHistogram;
                    if (i65 >= numConnectableNetworksBucketArr6.length) {
                        break;
                    }
                    NumConnectableNetworksBucket numConnectableNetworksBucket3 = numConnectableNetworksBucketArr6[i65];
                    if (numConnectableNetworksBucket3 != null) {
                        iComputeSerializedSize = CodedOutputByteBufferNano.computeMessageSize(66, numConnectableNetworksBucket3) + iComputeSerializedSize;
                    }
                    i65++;
                }
            }
            NumConnectableNetworksBucket[] numConnectableNetworksBucketArr7 = this.availableOpenBssidsInScanHistogram;
            if (numConnectableNetworksBucketArr7 != null && numConnectableNetworksBucketArr7.length > 0) {
                int i66 = 0;
                while (true) {
                    NumConnectableNetworksBucket[] numConnectableNetworksBucketArr8 = this.availableOpenBssidsInScanHistogram;
                    if (i66 >= numConnectableNetworksBucketArr8.length) {
                        break;
                    }
                    NumConnectableNetworksBucket numConnectableNetworksBucket4 = numConnectableNetworksBucketArr8[i66];
                    if (numConnectableNetworksBucket4 != null) {
                        iComputeSerializedSize = CodedOutputByteBufferNano.computeMessageSize(67, numConnectableNetworksBucket4) + iComputeSerializedSize;
                    }
                    i66++;
                }
            }
            NumConnectableNetworksBucket[] numConnectableNetworksBucketArr9 = this.availableSavedSsidsInScanHistogram;
            if (numConnectableNetworksBucketArr9 != null && numConnectableNetworksBucketArr9.length > 0) {
                int i67 = 0;
                while (true) {
                    NumConnectableNetworksBucket[] numConnectableNetworksBucketArr10 = this.availableSavedSsidsInScanHistogram;
                    if (i67 >= numConnectableNetworksBucketArr10.length) {
                        break;
                    }
                    NumConnectableNetworksBucket numConnectableNetworksBucket5 = numConnectableNetworksBucketArr10[i67];
                    if (numConnectableNetworksBucket5 != null) {
                        iComputeSerializedSize = CodedOutputByteBufferNano.computeMessageSize(68, numConnectableNetworksBucket5) + iComputeSerializedSize;
                    }
                    i67++;
                }
            }
            NumConnectableNetworksBucket[] numConnectableNetworksBucketArr11 = this.availableSavedBssidsInScanHistogram;
            if (numConnectableNetworksBucketArr11 != null && numConnectableNetworksBucketArr11.length > 0) {
                int i68 = 0;
                while (true) {
                    NumConnectableNetworksBucket[] numConnectableNetworksBucketArr12 = this.availableSavedBssidsInScanHistogram;
                    if (i68 >= numConnectableNetworksBucketArr12.length) {
                        break;
                    }
                    NumConnectableNetworksBucket numConnectableNetworksBucket6 = numConnectableNetworksBucketArr12[i68];
                    if (numConnectableNetworksBucket6 != null) {
                        iComputeSerializedSize = CodedOutputByteBufferNano.computeMessageSize(69, numConnectableNetworksBucket6) + iComputeSerializedSize;
                    }
                    i68++;
                }
            }
            NumConnectableNetworksBucket[] numConnectableNetworksBucketArr13 = this.availableOpenOrSavedSsidsInScanHistogram;
            if (numConnectableNetworksBucketArr13 != null && numConnectableNetworksBucketArr13.length > 0) {
                int i69 = 0;
                while (true) {
                    NumConnectableNetworksBucket[] numConnectableNetworksBucketArr14 = this.availableOpenOrSavedSsidsInScanHistogram;
                    if (i69 >= numConnectableNetworksBucketArr14.length) {
                        break;
                    }
                    NumConnectableNetworksBucket numConnectableNetworksBucket7 = numConnectableNetworksBucketArr14[i69];
                    if (numConnectableNetworksBucket7 != null) {
                        iComputeSerializedSize = CodedOutputByteBufferNano.computeMessageSize(70, numConnectableNetworksBucket7) + iComputeSerializedSize;
                    }
                    i69++;
                }
            }
            NumConnectableNetworksBucket[] numConnectableNetworksBucketArr15 = this.availableOpenOrSavedBssidsInScanHistogram;
            if (numConnectableNetworksBucketArr15 != null && numConnectableNetworksBucketArr15.length > 0) {
                int i70 = 0;
                while (true) {
                    NumConnectableNetworksBucket[] numConnectableNetworksBucketArr16 = this.availableOpenOrSavedBssidsInScanHistogram;
                    if (i70 >= numConnectableNetworksBucketArr16.length) {
                        break;
                    }
                    NumConnectableNetworksBucket numConnectableNetworksBucket8 = numConnectableNetworksBucketArr16[i70];
                    if (numConnectableNetworksBucket8 != null) {
                        iComputeSerializedSize = CodedOutputByteBufferNano.computeMessageSize(71, numConnectableNetworksBucket8) + iComputeSerializedSize;
                    }
                    i70++;
                }
            }
            NumConnectableNetworksBucket[] numConnectableNetworksBucketArr17 = this.availableSavedPasspointProviderProfilesInScanHistogram;
            if (numConnectableNetworksBucketArr17 != null && numConnectableNetworksBucketArr17.length > 0) {
                int i71 = 0;
                while (true) {
                    NumConnectableNetworksBucket[] numConnectableNetworksBucketArr18 = this.availableSavedPasspointProviderProfilesInScanHistogram;
                    if (i71 >= numConnectableNetworksBucketArr18.length) {
                        break;
                    }
                    NumConnectableNetworksBucket numConnectableNetworksBucket9 = numConnectableNetworksBucketArr18[i71];
                    if (numConnectableNetworksBucket9 != null) {
                        iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(72, numConnectableNetworksBucket9);
                    }
                    i71++;
                }
            }
            NumConnectableNetworksBucket[] numConnectableNetworksBucketArr19 = this.availableSavedPasspointProviderBssidsInScanHistogram;
            if (numConnectableNetworksBucketArr19 != null && numConnectableNetworksBucketArr19.length > 0) {
                int i72 = 0;
                while (true) {
                    NumConnectableNetworksBucket[] numConnectableNetworksBucketArr20 = this.availableSavedPasspointProviderBssidsInScanHistogram;
                    if (i72 >= numConnectableNetworksBucketArr20.length) {
                        break;
                    }
                    NumConnectableNetworksBucket numConnectableNetworksBucket10 = numConnectableNetworksBucketArr20[i72];
                    if (numConnectableNetworksBucket10 != null) {
                        iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(73, numConnectableNetworksBucket10);
                    }
                    i72++;
                }
            }
            int i73 = this.fullBandAllSingleScanListenerResults;
            if (i73 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(74, i73);
            }
            int i74 = this.partialAllSingleScanListenerResults;
            if (i74 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(75, i74);
            }
            PnoScanMetrics pnoScanMetrics = this.pnoScanMetrics;
            if (pnoScanMetrics != null) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(76, pnoScanMetrics);
            }
            ConnectToNetworkNotificationAndActionCount[] connectToNetworkNotificationAndActionCountArr = this.connectToNetworkNotificationCount;
            if (connectToNetworkNotificationAndActionCountArr != null && connectToNetworkNotificationAndActionCountArr.length > 0) {
                int i75 = 0;
                while (true) {
                    ConnectToNetworkNotificationAndActionCount[] connectToNetworkNotificationAndActionCountArr2 = this.connectToNetworkNotificationCount;
                    if (i75 >= connectToNetworkNotificationAndActionCountArr2.length) {
                        break;
                    }
                    ConnectToNetworkNotificationAndActionCount connectToNetworkNotificationAndActionCount = connectToNetworkNotificationAndActionCountArr2[i75];
                    if (connectToNetworkNotificationAndActionCount != null) {
                        iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(77, connectToNetworkNotificationAndActionCount);
                    }
                    i75++;
                }
            }
            ConnectToNetworkNotificationAndActionCount[] connectToNetworkNotificationAndActionCountArr3 = this.connectToNetworkNotificationActionCount;
            if (connectToNetworkNotificationAndActionCountArr3 != null && connectToNetworkNotificationAndActionCountArr3.length > 0) {
                while (true) {
                    ConnectToNetworkNotificationAndActionCount[] connectToNetworkNotificationAndActionCountArr4 = this.connectToNetworkNotificationActionCount;
                    if (i2 >= connectToNetworkNotificationAndActionCountArr4.length) {
                        break;
                    }
                    ConnectToNetworkNotificationAndActionCount connectToNetworkNotificationAndActionCount2 = connectToNetworkNotificationAndActionCountArr4[i2];
                    if (connectToNetworkNotificationAndActionCount2 != null) {
                        iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(78, connectToNetworkNotificationAndActionCount2);
                    }
                    i2++;
                }
            }
            int i76 = this.openNetworkRecommenderBlacklistSize;
            if (i76 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(79, i76);
            }
            boolean z4 = this.isWifiNetworksAvailableNotificationOn;
            if (z4) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(80, z4);
            }
            int i77 = this.numOpenNetworkRecommendationUpdates;
            if (i77 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(81, i77);
            }
            int i78 = this.numOpenNetworkConnectMessageFailedToSend;
            return i78 != 0 ? iComputeSerializedSize + CodedOutputByteBufferNano.computeInt32Size(82, i78) : iComputeSerializedSize;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws CodedOutputByteBufferNano.OutOfSpaceException {
            ConnectionEvent[] connectionEventArr = this.connectionEvent;
            int i2 = 0;
            if (connectionEventArr != null && connectionEventArr.length > 0) {
                int i3 = 0;
                while (true) {
                    ConnectionEvent[] connectionEventArr2 = this.connectionEvent;
                    if (i3 >= connectionEventArr2.length) {
                        break;
                    }
                    ConnectionEvent connectionEvent = connectionEventArr2[i3];
                    if (connectionEvent != null) {
                        codedOutputByteBufferNano.writeMessage(1, connectionEvent);
                    }
                    i3++;
                }
            }
            int i4 = this.numSavedNetworks;
            if (i4 != 0) {
                codedOutputByteBufferNano.writeInt32(2, i4);
            }
            int i5 = this.numOpenNetworks;
            if (i5 != 0) {
                codedOutputByteBufferNano.writeInt32(3, i5);
            }
            int i6 = this.numPersonalNetworks;
            if (i6 != 0) {
                codedOutputByteBufferNano.writeInt32(4, i6);
            }
            int i7 = this.numEnterpriseNetworks;
            if (i7 != 0) {
                codedOutputByteBufferNano.writeInt32(5, i7);
            }
            boolean z2 = this.isLocationEnabled;
            if (z2) {
                codedOutputByteBufferNano.writeBool(6, z2);
            }
            boolean z3 = this.isScanningAlwaysEnabled;
            if (z3) {
                codedOutputByteBufferNano.writeBool(7, z3);
            }
            int i8 = this.numWifiToggledViaSettings;
            if (i8 != 0) {
                codedOutputByteBufferNano.writeInt32(8, i8);
            }
            int i9 = this.numWifiToggledViaAirplane;
            if (i9 != 0) {
                codedOutputByteBufferNano.writeInt32(9, i9);
            }
            int i10 = this.numNetworksAddedByUser;
            if (i10 != 0) {
                codedOutputByteBufferNano.writeInt32(10, i10);
            }
            int i11 = this.numNetworksAddedByApps;
            if (i11 != 0) {
                codedOutputByteBufferNano.writeInt32(11, i11);
            }
            int i12 = this.numEmptyScanResults;
            if (i12 != 0) {
                codedOutputByteBufferNano.writeInt32(12, i12);
            }
            int i13 = this.numNonEmptyScanResults;
            if (i13 != 0) {
                codedOutputByteBufferNano.writeInt32(13, i13);
            }
            int i14 = this.numOneshotScans;
            if (i14 != 0) {
                codedOutputByteBufferNano.writeInt32(14, i14);
            }
            int i15 = this.numBackgroundScans;
            if (i15 != 0) {
                codedOutputByteBufferNano.writeInt32(15, i15);
            }
            ScanReturnEntry[] scanReturnEntryArr = this.scanReturnEntries;
            if (scanReturnEntryArr != null && scanReturnEntryArr.length > 0) {
                int i16 = 0;
                while (true) {
                    ScanReturnEntry[] scanReturnEntryArr2 = this.scanReturnEntries;
                    if (i16 >= scanReturnEntryArr2.length) {
                        break;
                    }
                    ScanReturnEntry scanReturnEntry = scanReturnEntryArr2[i16];
                    if (scanReturnEntry != null) {
                        codedOutputByteBufferNano.writeMessage(16, scanReturnEntry);
                    }
                    i16++;
                }
            }
            WifiSystemStateEntry[] wifiSystemStateEntryArr = this.wifiSystemStateEntries;
            if (wifiSystemStateEntryArr != null && wifiSystemStateEntryArr.length > 0) {
                int i17 = 0;
                while (true) {
                    WifiSystemStateEntry[] wifiSystemStateEntryArr2 = this.wifiSystemStateEntries;
                    if (i17 >= wifiSystemStateEntryArr2.length) {
                        break;
                    }
                    WifiSystemStateEntry wifiSystemStateEntry = wifiSystemStateEntryArr2[i17];
                    if (wifiSystemStateEntry != null) {
                        codedOutputByteBufferNano.writeMessage(17, wifiSystemStateEntry);
                    }
                    i17++;
                }
            }
            ScanReturnEntry[] scanReturnEntryArr3 = this.backgroundScanReturnEntries;
            if (scanReturnEntryArr3 != null && scanReturnEntryArr3.length > 0) {
                int i18 = 0;
                while (true) {
                    ScanReturnEntry[] scanReturnEntryArr4 = this.backgroundScanReturnEntries;
                    if (i18 >= scanReturnEntryArr4.length) {
                        break;
                    }
                    ScanReturnEntry scanReturnEntry2 = scanReturnEntryArr4[i18];
                    if (scanReturnEntry2 != null) {
                        codedOutputByteBufferNano.writeMessage(18, scanReturnEntry2);
                    }
                    i18++;
                }
            }
            WifiSystemStateEntry[] wifiSystemStateEntryArr3 = this.backgroundScanRequestState;
            if (wifiSystemStateEntryArr3 != null && wifiSystemStateEntryArr3.length > 0) {
                int i19 = 0;
                while (true) {
                    WifiSystemStateEntry[] wifiSystemStateEntryArr4 = this.backgroundScanRequestState;
                    if (i19 >= wifiSystemStateEntryArr4.length) {
                        break;
                    }
                    WifiSystemStateEntry wifiSystemStateEntry2 = wifiSystemStateEntryArr4[i19];
                    if (wifiSystemStateEntry2 != null) {
                        codedOutputByteBufferNano.writeMessage(19, wifiSystemStateEntry2);
                    }
                    i19++;
                }
            }
            int i20 = this.numLastResortWatchdogTriggers;
            if (i20 != 0) {
                codedOutputByteBufferNano.writeInt32(20, i20);
            }
            int i21 = this.numLastResortWatchdogBadAssociationNetworksTotal;
            if (i21 != 0) {
                codedOutputByteBufferNano.writeInt32(21, i21);
            }
            int i22 = this.numLastResortWatchdogBadAuthenticationNetworksTotal;
            if (i22 != 0) {
                codedOutputByteBufferNano.writeInt32(22, i22);
            }
            int i23 = this.numLastResortWatchdogBadDhcpNetworksTotal;
            if (i23 != 0) {
                codedOutputByteBufferNano.writeInt32(23, i23);
            }
            int i24 = this.numLastResortWatchdogBadOtherNetworksTotal;
            if (i24 != 0) {
                codedOutputByteBufferNano.writeInt32(24, i24);
            }
            int i25 = this.numLastResortWatchdogAvailableNetworksTotal;
            if (i25 != 0) {
                codedOutputByteBufferNano.writeInt32(25, i25);
            }
            int i26 = this.numLastResortWatchdogTriggersWithBadAssociation;
            if (i26 != 0) {
                codedOutputByteBufferNano.writeInt32(26, i26);
            }
            int i27 = this.numLastResortWatchdogTriggersWithBadAuthentication;
            if (i27 != 0) {
                codedOutputByteBufferNano.writeInt32(27, i27);
            }
            int i28 = this.numLastResortWatchdogTriggersWithBadDhcp;
            if (i28 != 0) {
                codedOutputByteBufferNano.writeInt32(28, i28);
            }
            int i29 = this.numLastResortWatchdogTriggersWithBadOther;
            if (i29 != 0) {
                codedOutputByteBufferNano.writeInt32(29, i29);
            }
            int i30 = this.numConnectivityWatchdogPnoGood;
            if (i30 != 0) {
                codedOutputByteBufferNano.writeInt32(30, i30);
            }
            int i31 = this.numConnectivityWatchdogPnoBad;
            if (i31 != 0) {
                codedOutputByteBufferNano.writeInt32(31, i31);
            }
            int i32 = this.numConnectivityWatchdogBackgroundGood;
            if (i32 != 0) {
                codedOutputByteBufferNano.writeInt32(32, i32);
            }
            int i33 = this.numConnectivityWatchdogBackgroundBad;
            if (i33 != 0) {
                codedOutputByteBufferNano.writeInt32(33, i33);
            }
            int i34 = this.recordDurationSec;
            if (i34 != 0) {
                codedOutputByteBufferNano.writeInt32(34, i34);
            }
            RssiPollCount[] rssiPollCountArr = this.rssiPollRssiCount;
            if (rssiPollCountArr != null && rssiPollCountArr.length > 0) {
                int i35 = 0;
                while (true) {
                    RssiPollCount[] rssiPollCountArr2 = this.rssiPollRssiCount;
                    if (i35 >= rssiPollCountArr2.length) {
                        break;
                    }
                    RssiPollCount rssiPollCount = rssiPollCountArr2[i35];
                    if (rssiPollCount != null) {
                        codedOutputByteBufferNano.writeMessage(35, rssiPollCount);
                    }
                    i35++;
                }
            }
            int i36 = this.numLastResortWatchdogSuccesses;
            if (i36 != 0) {
                codedOutputByteBufferNano.writeInt32(36, i36);
            }
            int i37 = this.numHiddenNetworks;
            if (i37 != 0) {
                codedOutputByteBufferNano.writeInt32(37, i37);
            }
            int i38 = this.numPasspointNetworks;
            if (i38 != 0) {
                codedOutputByteBufferNano.writeInt32(38, i38);
            }
            int i39 = this.numTotalScanResults;
            if (i39 != 0) {
                codedOutputByteBufferNano.writeInt32(39, i39);
            }
            int i40 = this.numOpenNetworkScanResults;
            if (i40 != 0) {
                codedOutputByteBufferNano.writeInt32(40, i40);
            }
            int i41 = this.numPersonalNetworkScanResults;
            if (i41 != 0) {
                codedOutputByteBufferNano.writeInt32(41, i41);
            }
            int i42 = this.numEnterpriseNetworkScanResults;
            if (i42 != 0) {
                codedOutputByteBufferNano.writeInt32(42, i42);
            }
            int i43 = this.numHiddenNetworkScanResults;
            if (i43 != 0) {
                codedOutputByteBufferNano.writeInt32(43, i43);
            }
            int i44 = this.numHotspot2R1NetworkScanResults;
            if (i44 != 0) {
                codedOutputByteBufferNano.writeInt32(44, i44);
            }
            int i45 = this.numHotspot2R2NetworkScanResults;
            if (i45 != 0) {
                codedOutputByteBufferNano.writeInt32(45, i45);
            }
            int i46 = this.numScans;
            if (i46 != 0) {
                codedOutputByteBufferNano.writeInt32(46, i46);
            }
            AlertReasonCount[] alertReasonCountArr = this.alertReasonCount;
            if (alertReasonCountArr != null && alertReasonCountArr.length > 0) {
                int i47 = 0;
                while (true) {
                    AlertReasonCount[] alertReasonCountArr2 = this.alertReasonCount;
                    if (i47 >= alertReasonCountArr2.length) {
                        break;
                    }
                    AlertReasonCount alertReasonCount = alertReasonCountArr2[i47];
                    if (alertReasonCount != null) {
                        codedOutputByteBufferNano.writeMessage(47, alertReasonCount);
                    }
                    i47++;
                }
            }
            WifiScoreCount[] wifiScoreCountArr = this.wifiScoreCount;
            if (wifiScoreCountArr != null && wifiScoreCountArr.length > 0) {
                int i48 = 0;
                while (true) {
                    WifiScoreCount[] wifiScoreCountArr2 = this.wifiScoreCount;
                    if (i48 >= wifiScoreCountArr2.length) {
                        break;
                    }
                    WifiScoreCount wifiScoreCount = wifiScoreCountArr2[i48];
                    if (wifiScoreCount != null) {
                        codedOutputByteBufferNano.writeMessage(48, wifiScoreCount);
                    }
                    i48++;
                }
            }
            SoftApDurationBucket[] softApDurationBucketArr = this.softApDuration;
            if (softApDurationBucketArr != null && softApDurationBucketArr.length > 0) {
                int i49 = 0;
                while (true) {
                    SoftApDurationBucket[] softApDurationBucketArr2 = this.softApDuration;
                    if (i49 >= softApDurationBucketArr2.length) {
                        break;
                    }
                    SoftApDurationBucket softApDurationBucket = softApDurationBucketArr2[i49];
                    if (softApDurationBucket != null) {
                        codedOutputByteBufferNano.writeMessage(49, softApDurationBucket);
                    }
                    i49++;
                }
            }
            SoftApReturnCodeCount[] softApReturnCodeCountArr = this.softApReturnCode;
            if (softApReturnCodeCountArr != null && softApReturnCodeCountArr.length > 0) {
                int i50 = 0;
                while (true) {
                    SoftApReturnCodeCount[] softApReturnCodeCountArr2 = this.softApReturnCode;
                    if (i50 >= softApReturnCodeCountArr2.length) {
                        break;
                    }
                    SoftApReturnCodeCount softApReturnCodeCount = softApReturnCodeCountArr2[i50];
                    if (softApReturnCodeCount != null) {
                        codedOutputByteBufferNano.writeMessage(50, softApReturnCodeCount);
                    }
                    i50++;
                }
            }
            RssiPollCount[] rssiPollCountArr3 = this.rssiPollDeltaCount;
            if (rssiPollCountArr3 != null && rssiPollCountArr3.length > 0) {
                int i51 = 0;
                while (true) {
                    RssiPollCount[] rssiPollCountArr4 = this.rssiPollDeltaCount;
                    if (i51 >= rssiPollCountArr4.length) {
                        break;
                    }
                    RssiPollCount rssiPollCount2 = rssiPollCountArr4[i51];
                    if (rssiPollCount2 != null) {
                        codedOutputByteBufferNano.writeMessage(51, rssiPollCount2);
                    }
                    i51++;
                }
            }
            StaEvent[] staEventArr = this.staEventList;
            if (staEventArr != null && staEventArr.length > 0) {
                int i52 = 0;
                while (true) {
                    StaEvent[] staEventArr2 = this.staEventList;
                    if (i52 >= staEventArr2.length) {
                        break;
                    }
                    StaEvent staEvent = staEventArr2[i52];
                    if (staEvent != null) {
                        codedOutputByteBufferNano.writeMessage(52, staEvent);
                    }
                    i52++;
                }
            }
            int i53 = this.numHalCrashes;
            if (i53 != 0) {
                codedOutputByteBufferNano.writeInt32(53, i53);
            }
            int i54 = this.numWificondCrashes;
            if (i54 != 0) {
                codedOutputByteBufferNano.writeInt32(54, i54);
            }
            int i55 = this.numWifiOnFailureDueToHal;
            if (i55 != 0) {
                codedOutputByteBufferNano.writeInt32(55, i55);
            }
            int i56 = this.numWifiOnFailureDueToWificond;
            if (i56 != 0) {
                codedOutputByteBufferNano.writeInt32(56, i56);
            }
            WifiAwareLog wifiAwareLog = this.wifiAwareLog;
            if (wifiAwareLog != null) {
                codedOutputByteBufferNano.writeMessage(57, wifiAwareLog);
            }
            int i57 = this.numPasspointProviders;
            if (i57 != 0) {
                codedOutputByteBufferNano.writeInt32(58, i57);
            }
            int i58 = this.numPasspointProviderInstallation;
            if (i58 != 0) {
                codedOutputByteBufferNano.writeInt32(59, i58);
            }
            int i59 = this.numPasspointProviderInstallSuccess;
            if (i59 != 0) {
                codedOutputByteBufferNano.writeInt32(60, i59);
            }
            int i60 = this.numPasspointProviderUninstallation;
            if (i60 != 0) {
                codedOutputByteBufferNano.writeInt32(61, i60);
            }
            int i61 = this.numPasspointProviderUninstallSuccess;
            if (i61 != 0) {
                codedOutputByteBufferNano.writeInt32(62, i61);
            }
            int i62 = this.numPasspointProvidersSuccessfullyConnected;
            if (i62 != 0) {
                codedOutputByteBufferNano.writeInt32(63, i62);
            }
            NumConnectableNetworksBucket[] numConnectableNetworksBucketArr = this.totalSsidsInScanHistogram;
            if (numConnectableNetworksBucketArr != null && numConnectableNetworksBucketArr.length > 0) {
                int i63 = 0;
                while (true) {
                    NumConnectableNetworksBucket[] numConnectableNetworksBucketArr2 = this.totalSsidsInScanHistogram;
                    if (i63 >= numConnectableNetworksBucketArr2.length) {
                        break;
                    }
                    NumConnectableNetworksBucket numConnectableNetworksBucket = numConnectableNetworksBucketArr2[i63];
                    if (numConnectableNetworksBucket != null) {
                        codedOutputByteBufferNano.writeMessage(64, numConnectableNetworksBucket);
                    }
                    i63++;
                }
            }
            NumConnectableNetworksBucket[] numConnectableNetworksBucketArr3 = this.totalBssidsInScanHistogram;
            if (numConnectableNetworksBucketArr3 != null && numConnectableNetworksBucketArr3.length > 0) {
                int i64 = 0;
                while (true) {
                    NumConnectableNetworksBucket[] numConnectableNetworksBucketArr4 = this.totalBssidsInScanHistogram;
                    if (i64 >= numConnectableNetworksBucketArr4.length) {
                        break;
                    }
                    NumConnectableNetworksBucket numConnectableNetworksBucket2 = numConnectableNetworksBucketArr4[i64];
                    if (numConnectableNetworksBucket2 != null) {
                        codedOutputByteBufferNano.writeMessage(65, numConnectableNetworksBucket2);
                    }
                    i64++;
                }
            }
            NumConnectableNetworksBucket[] numConnectableNetworksBucketArr5 = this.availableOpenSsidsInScanHistogram;
            if (numConnectableNetworksBucketArr5 != null && numConnectableNetworksBucketArr5.length > 0) {
                int i65 = 0;
                while (true) {
                    NumConnectableNetworksBucket[] numConnectableNetworksBucketArr6 = this.availableOpenSsidsInScanHistogram;
                    if (i65 >= numConnectableNetworksBucketArr6.length) {
                        break;
                    }
                    NumConnectableNetworksBucket numConnectableNetworksBucket3 = numConnectableNetworksBucketArr6[i65];
                    if (numConnectableNetworksBucket3 != null) {
                        codedOutputByteBufferNano.writeMessage(66, numConnectableNetworksBucket3);
                    }
                    i65++;
                }
            }
            NumConnectableNetworksBucket[] numConnectableNetworksBucketArr7 = this.availableOpenBssidsInScanHistogram;
            if (numConnectableNetworksBucketArr7 != null && numConnectableNetworksBucketArr7.length > 0) {
                int i66 = 0;
                while (true) {
                    NumConnectableNetworksBucket[] numConnectableNetworksBucketArr8 = this.availableOpenBssidsInScanHistogram;
                    if (i66 >= numConnectableNetworksBucketArr8.length) {
                        break;
                    }
                    NumConnectableNetworksBucket numConnectableNetworksBucket4 = numConnectableNetworksBucketArr8[i66];
                    if (numConnectableNetworksBucket4 != null) {
                        codedOutputByteBufferNano.writeMessage(67, numConnectableNetworksBucket4);
                    }
                    i66++;
                }
            }
            NumConnectableNetworksBucket[] numConnectableNetworksBucketArr9 = this.availableSavedSsidsInScanHistogram;
            if (numConnectableNetworksBucketArr9 != null && numConnectableNetworksBucketArr9.length > 0) {
                int i67 = 0;
                while (true) {
                    NumConnectableNetworksBucket[] numConnectableNetworksBucketArr10 = this.availableSavedSsidsInScanHistogram;
                    if (i67 >= numConnectableNetworksBucketArr10.length) {
                        break;
                    }
                    NumConnectableNetworksBucket numConnectableNetworksBucket5 = numConnectableNetworksBucketArr10[i67];
                    if (numConnectableNetworksBucket5 != null) {
                        codedOutputByteBufferNano.writeMessage(68, numConnectableNetworksBucket5);
                    }
                    i67++;
                }
            }
            NumConnectableNetworksBucket[] numConnectableNetworksBucketArr11 = this.availableSavedBssidsInScanHistogram;
            if (numConnectableNetworksBucketArr11 != null && numConnectableNetworksBucketArr11.length > 0) {
                int i68 = 0;
                while (true) {
                    NumConnectableNetworksBucket[] numConnectableNetworksBucketArr12 = this.availableSavedBssidsInScanHistogram;
                    if (i68 >= numConnectableNetworksBucketArr12.length) {
                        break;
                    }
                    NumConnectableNetworksBucket numConnectableNetworksBucket6 = numConnectableNetworksBucketArr12[i68];
                    if (numConnectableNetworksBucket6 != null) {
                        codedOutputByteBufferNano.writeMessage(69, numConnectableNetworksBucket6);
                    }
                    i68++;
                }
            }
            NumConnectableNetworksBucket[] numConnectableNetworksBucketArr13 = this.availableOpenOrSavedSsidsInScanHistogram;
            if (numConnectableNetworksBucketArr13 != null && numConnectableNetworksBucketArr13.length > 0) {
                int i69 = 0;
                while (true) {
                    NumConnectableNetworksBucket[] numConnectableNetworksBucketArr14 = this.availableOpenOrSavedSsidsInScanHistogram;
                    if (i69 >= numConnectableNetworksBucketArr14.length) {
                        break;
                    }
                    NumConnectableNetworksBucket numConnectableNetworksBucket7 = numConnectableNetworksBucketArr14[i69];
                    if (numConnectableNetworksBucket7 != null) {
                        codedOutputByteBufferNano.writeMessage(70, numConnectableNetworksBucket7);
                    }
                    i69++;
                }
            }
            NumConnectableNetworksBucket[] numConnectableNetworksBucketArr15 = this.availableOpenOrSavedBssidsInScanHistogram;
            if (numConnectableNetworksBucketArr15 != null && numConnectableNetworksBucketArr15.length > 0) {
                int i70 = 0;
                while (true) {
                    NumConnectableNetworksBucket[] numConnectableNetworksBucketArr16 = this.availableOpenOrSavedBssidsInScanHistogram;
                    if (i70 >= numConnectableNetworksBucketArr16.length) {
                        break;
                    }
                    NumConnectableNetworksBucket numConnectableNetworksBucket8 = numConnectableNetworksBucketArr16[i70];
                    if (numConnectableNetworksBucket8 != null) {
                        codedOutputByteBufferNano.writeMessage(71, numConnectableNetworksBucket8);
                    }
                    i70++;
                }
            }
            NumConnectableNetworksBucket[] numConnectableNetworksBucketArr17 = this.availableSavedPasspointProviderProfilesInScanHistogram;
            if (numConnectableNetworksBucketArr17 != null && numConnectableNetworksBucketArr17.length > 0) {
                int i71 = 0;
                while (true) {
                    NumConnectableNetworksBucket[] numConnectableNetworksBucketArr18 = this.availableSavedPasspointProviderProfilesInScanHistogram;
                    if (i71 >= numConnectableNetworksBucketArr18.length) {
                        break;
                    }
                    NumConnectableNetworksBucket numConnectableNetworksBucket9 = numConnectableNetworksBucketArr18[i71];
                    if (numConnectableNetworksBucket9 != null) {
                        codedOutputByteBufferNano.writeMessage(72, numConnectableNetworksBucket9);
                    }
                    i71++;
                }
            }
            NumConnectableNetworksBucket[] numConnectableNetworksBucketArr19 = this.availableSavedPasspointProviderBssidsInScanHistogram;
            if (numConnectableNetworksBucketArr19 != null && numConnectableNetworksBucketArr19.length > 0) {
                int i72 = 0;
                while (true) {
                    NumConnectableNetworksBucket[] numConnectableNetworksBucketArr20 = this.availableSavedPasspointProviderBssidsInScanHistogram;
                    if (i72 >= numConnectableNetworksBucketArr20.length) {
                        break;
                    }
                    NumConnectableNetworksBucket numConnectableNetworksBucket10 = numConnectableNetworksBucketArr20[i72];
                    if (numConnectableNetworksBucket10 != null) {
                        codedOutputByteBufferNano.writeMessage(73, numConnectableNetworksBucket10);
                    }
                    i72++;
                }
            }
            int i73 = this.fullBandAllSingleScanListenerResults;
            if (i73 != 0) {
                codedOutputByteBufferNano.writeInt32(74, i73);
            }
            int i74 = this.partialAllSingleScanListenerResults;
            if (i74 != 0) {
                codedOutputByteBufferNano.writeInt32(75, i74);
            }
            PnoScanMetrics pnoScanMetrics = this.pnoScanMetrics;
            if (pnoScanMetrics != null) {
                codedOutputByteBufferNano.writeMessage(76, pnoScanMetrics);
            }
            ConnectToNetworkNotificationAndActionCount[] connectToNetworkNotificationAndActionCountArr = this.connectToNetworkNotificationCount;
            if (connectToNetworkNotificationAndActionCountArr != null && connectToNetworkNotificationAndActionCountArr.length > 0) {
                int i75 = 0;
                while (true) {
                    ConnectToNetworkNotificationAndActionCount[] connectToNetworkNotificationAndActionCountArr2 = this.connectToNetworkNotificationCount;
                    if (i75 >= connectToNetworkNotificationAndActionCountArr2.length) {
                        break;
                    }
                    ConnectToNetworkNotificationAndActionCount connectToNetworkNotificationAndActionCount = connectToNetworkNotificationAndActionCountArr2[i75];
                    if (connectToNetworkNotificationAndActionCount != null) {
                        codedOutputByteBufferNano.writeMessage(77, connectToNetworkNotificationAndActionCount);
                    }
                    i75++;
                }
            }
            ConnectToNetworkNotificationAndActionCount[] connectToNetworkNotificationAndActionCountArr3 = this.connectToNetworkNotificationActionCount;
            if (connectToNetworkNotificationAndActionCountArr3 != null && connectToNetworkNotificationAndActionCountArr3.length > 0) {
                while (true) {
                    ConnectToNetworkNotificationAndActionCount[] connectToNetworkNotificationAndActionCountArr4 = this.connectToNetworkNotificationActionCount;
                    if (i2 >= connectToNetworkNotificationAndActionCountArr4.length) {
                        break;
                    }
                    ConnectToNetworkNotificationAndActionCount connectToNetworkNotificationAndActionCount2 = connectToNetworkNotificationAndActionCountArr4[i2];
                    if (connectToNetworkNotificationAndActionCount2 != null) {
                        codedOutputByteBufferNano.writeMessage(78, connectToNetworkNotificationAndActionCount2);
                    }
                    i2++;
                }
            }
            int i76 = this.openNetworkRecommenderBlacklistSize;
            if (i76 != 0) {
                codedOutputByteBufferNano.writeInt32(79, i76);
            }
            boolean z4 = this.isWifiNetworksAvailableNotificationOn;
            if (z4) {
                codedOutputByteBufferNano.writeBool(80, z4);
            }
            int i77 = this.numOpenNetworkRecommendationUpdates;
            if (i77 != 0) {
                codedOutputByteBufferNano.writeInt32(81, i77);
            }
            int i78 = this.numOpenNetworkConnectMessageFailedToSend;
            if (i78 != 0) {
                codedOutputByteBufferNano.writeInt32(82, i78);
            }
            super.writeTo(codedOutputByteBufferNano);
        }

        public static WifiLog parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
            return new WifiLog().mergeFrom(codedInputByteBufferNano);
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public WifiLog mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws InvalidProtocolBufferNanoException {
            while (true) {
                int tag = codedInputByteBufferNano.readTag();
                switch (tag) {
                    case 0:
                        return this;
                    case 10:
                        int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 10);
                        ConnectionEvent[] connectionEventArr = this.connectionEvent;
                        int length = connectionEventArr == null ? 0 : connectionEventArr.length;
                        int i2 = repeatedFieldArrayLength + length;
                        ConnectionEvent[] connectionEventArr2 = new ConnectionEvent[i2];
                        if (length != 0) {
                            System.arraycopy(connectionEventArr, 0, connectionEventArr2, 0, length);
                        }
                        while (length < i2 - 1) {
                            ConnectionEvent connectionEvent = new ConnectionEvent();
                            connectionEventArr2[length] = connectionEvent;
                            codedInputByteBufferNano.readMessage(connectionEvent);
                            codedInputByteBufferNano.readTag();
                            length++;
                        }
                        ConnectionEvent connectionEvent2 = new ConnectionEvent();
                        connectionEventArr2[length] = connectionEvent2;
                        codedInputByteBufferNano.readMessage(connectionEvent2);
                        this.connectionEvent = connectionEventArr2;
                        break;
                    case 16:
                        this.numSavedNetworks = codedInputByteBufferNano.readInt32();
                        break;
                    case 24:
                        this.numOpenNetworks = codedInputByteBufferNano.readInt32();
                        break;
                    case 32:
                        this.numPersonalNetworks = codedInputByteBufferNano.readInt32();
                        break;
                    case 40:
                        this.numEnterpriseNetworks = codedInputByteBufferNano.readInt32();
                        break;
                    case 48:
                        this.isLocationEnabled = codedInputByteBufferNano.readBool();
                        break;
                    case 56:
                        this.isScanningAlwaysEnabled = codedInputByteBufferNano.readBool();
                        break;
                    case 64:
                        this.numWifiToggledViaSettings = codedInputByteBufferNano.readInt32();
                        break;
                    case 72:
                        this.numWifiToggledViaAirplane = codedInputByteBufferNano.readInt32();
                        break;
                    case 80:
                        this.numNetworksAddedByUser = codedInputByteBufferNano.readInt32();
                        break;
                    case 88:
                        this.numNetworksAddedByApps = codedInputByteBufferNano.readInt32();
                        break;
                    case 96:
                        this.numEmptyScanResults = codedInputByteBufferNano.readInt32();
                        break;
                    case 104:
                        this.numNonEmptyScanResults = codedInputByteBufferNano.readInt32();
                        break;
                    case 112:
                        this.numOneshotScans = codedInputByteBufferNano.readInt32();
                        break;
                    case 120:
                        this.numBackgroundScans = codedInputByteBufferNano.readInt32();
                        break;
                    case 130:
                        int repeatedFieldArrayLength2 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 130);
                        ScanReturnEntry[] scanReturnEntryArr = this.scanReturnEntries;
                        int length2 = scanReturnEntryArr == null ? 0 : scanReturnEntryArr.length;
                        int i3 = repeatedFieldArrayLength2 + length2;
                        ScanReturnEntry[] scanReturnEntryArr2 = new ScanReturnEntry[i3];
                        if (length2 != 0) {
                            System.arraycopy(scanReturnEntryArr, 0, scanReturnEntryArr2, 0, length2);
                        }
                        while (length2 < i3 - 1) {
                            ScanReturnEntry scanReturnEntry = new ScanReturnEntry();
                            scanReturnEntryArr2[length2] = scanReturnEntry;
                            codedInputByteBufferNano.readMessage(scanReturnEntry);
                            codedInputByteBufferNano.readTag();
                            length2++;
                        }
                        ScanReturnEntry scanReturnEntry2 = new ScanReturnEntry();
                        scanReturnEntryArr2[length2] = scanReturnEntry2;
                        codedInputByteBufferNano.readMessage(scanReturnEntry2);
                        this.scanReturnEntries = scanReturnEntryArr2;
                        break;
                    case 138:
                        int repeatedFieldArrayLength3 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 138);
                        WifiSystemStateEntry[] wifiSystemStateEntryArr = this.wifiSystemStateEntries;
                        int length3 = wifiSystemStateEntryArr == null ? 0 : wifiSystemStateEntryArr.length;
                        int i4 = repeatedFieldArrayLength3 + length3;
                        WifiSystemStateEntry[] wifiSystemStateEntryArr2 = new WifiSystemStateEntry[i4];
                        if (length3 != 0) {
                            System.arraycopy(wifiSystemStateEntryArr, 0, wifiSystemStateEntryArr2, 0, length3);
                        }
                        while (length3 < i4 - 1) {
                            WifiSystemStateEntry wifiSystemStateEntry = new WifiSystemStateEntry();
                            wifiSystemStateEntryArr2[length3] = wifiSystemStateEntry;
                            codedInputByteBufferNano.readMessage(wifiSystemStateEntry);
                            codedInputByteBufferNano.readTag();
                            length3++;
                        }
                        WifiSystemStateEntry wifiSystemStateEntry2 = new WifiSystemStateEntry();
                        wifiSystemStateEntryArr2[length3] = wifiSystemStateEntry2;
                        codedInputByteBufferNano.readMessage(wifiSystemStateEntry2);
                        this.wifiSystemStateEntries = wifiSystemStateEntryArr2;
                        break;
                    case 146:
                        int repeatedFieldArrayLength4 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 146);
                        ScanReturnEntry[] scanReturnEntryArr3 = this.backgroundScanReturnEntries;
                        int length4 = scanReturnEntryArr3 == null ? 0 : scanReturnEntryArr3.length;
                        int i5 = repeatedFieldArrayLength4 + length4;
                        ScanReturnEntry[] scanReturnEntryArr4 = new ScanReturnEntry[i5];
                        if (length4 != 0) {
                            System.arraycopy(scanReturnEntryArr3, 0, scanReturnEntryArr4, 0, length4);
                        }
                        while (length4 < i5 - 1) {
                            ScanReturnEntry scanReturnEntry3 = new ScanReturnEntry();
                            scanReturnEntryArr4[length4] = scanReturnEntry3;
                            codedInputByteBufferNano.readMessage(scanReturnEntry3);
                            codedInputByteBufferNano.readTag();
                            length4++;
                        }
                        ScanReturnEntry scanReturnEntry4 = new ScanReturnEntry();
                        scanReturnEntryArr4[length4] = scanReturnEntry4;
                        codedInputByteBufferNano.readMessage(scanReturnEntry4);
                        this.backgroundScanReturnEntries = scanReturnEntryArr4;
                        break;
                    case 154:
                        int repeatedFieldArrayLength5 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 154);
                        WifiSystemStateEntry[] wifiSystemStateEntryArr3 = this.backgroundScanRequestState;
                        int length5 = wifiSystemStateEntryArr3 == null ? 0 : wifiSystemStateEntryArr3.length;
                        int i6 = repeatedFieldArrayLength5 + length5;
                        WifiSystemStateEntry[] wifiSystemStateEntryArr4 = new WifiSystemStateEntry[i6];
                        if (length5 != 0) {
                            System.arraycopy(wifiSystemStateEntryArr3, 0, wifiSystemStateEntryArr4, 0, length5);
                        }
                        while (length5 < i6 - 1) {
                            WifiSystemStateEntry wifiSystemStateEntry3 = new WifiSystemStateEntry();
                            wifiSystemStateEntryArr4[length5] = wifiSystemStateEntry3;
                            codedInputByteBufferNano.readMessage(wifiSystemStateEntry3);
                            codedInputByteBufferNano.readTag();
                            length5++;
                        }
                        WifiSystemStateEntry wifiSystemStateEntry4 = new WifiSystemStateEntry();
                        wifiSystemStateEntryArr4[length5] = wifiSystemStateEntry4;
                        codedInputByteBufferNano.readMessage(wifiSystemStateEntry4);
                        this.backgroundScanRequestState = wifiSystemStateEntryArr4;
                        break;
                    case 160:
                        this.numLastResortWatchdogTriggers = codedInputByteBufferNano.readInt32();
                        break;
                    case 168:
                        this.numLastResortWatchdogBadAssociationNetworksTotal = codedInputByteBufferNano.readInt32();
                        break;
                    case 176:
                        this.numLastResortWatchdogBadAuthenticationNetworksTotal = codedInputByteBufferNano.readInt32();
                        break;
                    case 184:
                        this.numLastResortWatchdogBadDhcpNetworksTotal = codedInputByteBufferNano.readInt32();
                        break;
                    case 192:
                        this.numLastResortWatchdogBadOtherNetworksTotal = codedInputByteBufferNano.readInt32();
                        break;
                    case 200:
                        this.numLastResortWatchdogAvailableNetworksTotal = codedInputByteBufferNano.readInt32();
                        break;
                    case 208:
                        this.numLastResortWatchdogTriggersWithBadAssociation = codedInputByteBufferNano.readInt32();
                        break;
                    case 216:
                        this.numLastResortWatchdogTriggersWithBadAuthentication = codedInputByteBufferNano.readInt32();
                        break;
                    case 224:
                        this.numLastResortWatchdogTriggersWithBadDhcp = codedInputByteBufferNano.readInt32();
                        break;
                    case 232:
                        this.numLastResortWatchdogTriggersWithBadOther = codedInputByteBufferNano.readInt32();
                        break;
                    case 240:
                        this.numConnectivityWatchdogPnoGood = codedInputByteBufferNano.readInt32();
                        break;
                    case 248:
                        this.numConnectivityWatchdogPnoBad = codedInputByteBufferNano.readInt32();
                        break;
                    case 256:
                        this.numConnectivityWatchdogBackgroundGood = codedInputByteBufferNano.readInt32();
                        break;
                    case 264:
                        this.numConnectivityWatchdogBackgroundBad = codedInputByteBufferNano.readInt32();
                        break;
                    case 272:
                        this.recordDurationSec = codedInputByteBufferNano.readInt32();
                        break;
                    case 282:
                        int repeatedFieldArrayLength6 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 282);
                        RssiPollCount[] rssiPollCountArr = this.rssiPollRssiCount;
                        int length6 = rssiPollCountArr == null ? 0 : rssiPollCountArr.length;
                        int i7 = repeatedFieldArrayLength6 + length6;
                        RssiPollCount[] rssiPollCountArr2 = new RssiPollCount[i7];
                        if (length6 != 0) {
                            System.arraycopy(rssiPollCountArr, 0, rssiPollCountArr2, 0, length6);
                        }
                        while (length6 < i7 - 1) {
                            RssiPollCount rssiPollCount = new RssiPollCount();
                            rssiPollCountArr2[length6] = rssiPollCount;
                            codedInputByteBufferNano.readMessage(rssiPollCount);
                            codedInputByteBufferNano.readTag();
                            length6++;
                        }
                        RssiPollCount rssiPollCount2 = new RssiPollCount();
                        rssiPollCountArr2[length6] = rssiPollCount2;
                        codedInputByteBufferNano.readMessage(rssiPollCount2);
                        this.rssiPollRssiCount = rssiPollCountArr2;
                        break;
                    case 288:
                        this.numLastResortWatchdogSuccesses = codedInputByteBufferNano.readInt32();
                        break;
                    case 296:
                        this.numHiddenNetworks = codedInputByteBufferNano.readInt32();
                        break;
                    case 304:
                        this.numPasspointNetworks = codedInputByteBufferNano.readInt32();
                        break;
                    case 312:
                        this.numTotalScanResults = codedInputByteBufferNano.readInt32();
                        break;
                    case 320:
                        this.numOpenNetworkScanResults = codedInputByteBufferNano.readInt32();
                        break;
                    case 328:
                        this.numPersonalNetworkScanResults = codedInputByteBufferNano.readInt32();
                        break;
                    case 336:
                        this.numEnterpriseNetworkScanResults = codedInputByteBufferNano.readInt32();
                        break;
                    case MetricsProto.MetricsEvent.USER_LOCALE_LIST /* 344 */:
                        this.numHiddenNetworkScanResults = codedInputByteBufferNano.readInt32();
                        break;
                    case 352:
                        this.numHotspot2R1NetworkScanResults = codedInputByteBufferNano.readInt32();
                        break;
                    case 360:
                        this.numHotspot2R2NetworkScanResults = codedInputByteBufferNano.readInt32();
                        break;
                    case MetricsProto.MetricsEvent.SUW_ACCESSIBILITY_TOGGLE_SCREEN_MAGNIFICATION /* 368 */:
                        this.numScans = codedInputByteBufferNano.readInt32();
                        break;
                    case MetricsProto.MetricsEvent.SETTINGS_CONDITION_BACKGROUND_DATA /* 378 */:
                        int repeatedFieldArrayLength7 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, MetricsProto.MetricsEvent.SETTINGS_CONDITION_BACKGROUND_DATA);
                        AlertReasonCount[] alertReasonCountArr = this.alertReasonCount;
                        int length7 = alertReasonCountArr == null ? 0 : alertReasonCountArr.length;
                        int i8 = repeatedFieldArrayLength7 + length7;
                        AlertReasonCount[] alertReasonCountArr2 = new AlertReasonCount[i8];
                        if (length7 != 0) {
                            System.arraycopy(alertReasonCountArr, 0, alertReasonCountArr2, 0, length7);
                        }
                        while (length7 < i8 - 1) {
                            AlertReasonCount alertReasonCount = new AlertReasonCount();
                            alertReasonCountArr2[length7] = alertReasonCount;
                            codedInputByteBufferNano.readMessage(alertReasonCount);
                            codedInputByteBufferNano.readTag();
                            length7++;
                        }
                        AlertReasonCount alertReasonCount2 = new AlertReasonCount();
                        alertReasonCountArr2[length7] = alertReasonCount2;
                        codedInputByteBufferNano.readMessage(alertReasonCount2);
                        this.alertReasonCount = alertReasonCountArr2;
                        break;
                    case MetricsProto.MetricsEvent.ACTION_SETTINGS_SUGGESTION /* 386 */:
                        int repeatedFieldArrayLength8 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, MetricsProto.MetricsEvent.ACTION_SETTINGS_SUGGESTION);
                        WifiScoreCount[] wifiScoreCountArr = this.wifiScoreCount;
                        int length8 = wifiScoreCountArr == null ? 0 : wifiScoreCountArr.length;
                        int i9 = repeatedFieldArrayLength8 + length8;
                        WifiScoreCount[] wifiScoreCountArr2 = new WifiScoreCount[i9];
                        if (length8 != 0) {
                            System.arraycopy(wifiScoreCountArr, 0, wifiScoreCountArr2, 0, length8);
                        }
                        while (length8 < i9 - 1) {
                            WifiScoreCount wifiScoreCount = new WifiScoreCount();
                            wifiScoreCountArr2[length8] = wifiScoreCount;
                            codedInputByteBufferNano.readMessage(wifiScoreCount);
                            codedInputByteBufferNano.readTag();
                            length8++;
                        }
                        WifiScoreCount wifiScoreCount2 = new WifiScoreCount();
                        wifiScoreCountArr2[length8] = wifiScoreCount2;
                        codedInputByteBufferNano.readMessage(wifiScoreCount2);
                        this.wifiScoreCount = wifiScoreCountArr2;
                        break;
                    case MetricsProto.MetricsEvent.ACTION_DATA_SAVER_MODE /* 394 */:
                        int repeatedFieldArrayLength9 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, MetricsProto.MetricsEvent.ACTION_DATA_SAVER_MODE);
                        SoftApDurationBucket[] softApDurationBucketArr = this.softApDuration;
                        int length9 = softApDurationBucketArr == null ? 0 : softApDurationBucketArr.length;
                        int i10 = repeatedFieldArrayLength9 + length9;
                        SoftApDurationBucket[] softApDurationBucketArr2 = new SoftApDurationBucket[i10];
                        if (length9 != 0) {
                            System.arraycopy(softApDurationBucketArr, 0, softApDurationBucketArr2, 0, length9);
                        }
                        while (length9 < i10 - 1) {
                            SoftApDurationBucket softApDurationBucket = new SoftApDurationBucket();
                            softApDurationBucketArr2[length9] = softApDurationBucket;
                            codedInputByteBufferNano.readMessage(softApDurationBucket);
                            codedInputByteBufferNano.readTag();
                            length9++;
                        }
                        SoftApDurationBucket softApDurationBucket2 = new SoftApDurationBucket();
                        softApDurationBucketArr2[length9] = softApDurationBucket2;
                        codedInputByteBufferNano.readMessage(softApDurationBucket2);
                        this.softApDuration = softApDurationBucketArr2;
                        break;
                    case 402:
                        int repeatedFieldArrayLength10 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 402);
                        SoftApReturnCodeCount[] softApReturnCodeCountArr = this.softApReturnCode;
                        int length10 = softApReturnCodeCountArr == null ? 0 : softApReturnCodeCountArr.length;
                        int i11 = repeatedFieldArrayLength10 + length10;
                        SoftApReturnCodeCount[] softApReturnCodeCountArr2 = new SoftApReturnCodeCount[i11];
                        if (length10 != 0) {
                            System.arraycopy(softApReturnCodeCountArr, 0, softApReturnCodeCountArr2, 0, length10);
                        }
                        while (length10 < i11 - 1) {
                            SoftApReturnCodeCount softApReturnCodeCount = new SoftApReturnCodeCount();
                            softApReturnCodeCountArr2[length10] = softApReturnCodeCount;
                            codedInputByteBufferNano.readMessage(softApReturnCodeCount);
                            codedInputByteBufferNano.readTag();
                            length10++;
                        }
                        SoftApReturnCodeCount softApReturnCodeCount2 = new SoftApReturnCodeCount();
                        softApReturnCodeCountArr2[length10] = softApReturnCodeCount2;
                        codedInputByteBufferNano.readMessage(softApReturnCodeCount2);
                        this.softApReturnCode = softApReturnCodeCountArr2;
                        break;
                    case MetricsProto.MetricsEvent.ACTION_NOTIFICATION_GROUP_GESTURE_EXPANDER /* 410 */:
                        int repeatedFieldArrayLength11 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, MetricsProto.MetricsEvent.ACTION_NOTIFICATION_GROUP_GESTURE_EXPANDER);
                        RssiPollCount[] rssiPollCountArr3 = this.rssiPollDeltaCount;
                        int length11 = rssiPollCountArr3 == null ? 0 : rssiPollCountArr3.length;
                        int i12 = repeatedFieldArrayLength11 + length11;
                        RssiPollCount[] rssiPollCountArr4 = new RssiPollCount[i12];
                        if (length11 != 0) {
                            System.arraycopy(rssiPollCountArr3, 0, rssiPollCountArr4, 0, length11);
                        }
                        while (length11 < i12 - 1) {
                            RssiPollCount rssiPollCount3 = new RssiPollCount();
                            rssiPollCountArr4[length11] = rssiPollCount3;
                            codedInputByteBufferNano.readMessage(rssiPollCount3);
                            codedInputByteBufferNano.readTag();
                            length11++;
                        }
                        RssiPollCount rssiPollCount4 = new RssiPollCount();
                        rssiPollCountArr4[length11] = rssiPollCount4;
                        codedInputByteBufferNano.readMessage(rssiPollCount4);
                        this.rssiPollDeltaCount = rssiPollCountArr4;
                        break;
                    case 418:
                        int repeatedFieldArrayLength12 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 418);
                        StaEvent[] staEventArr = this.staEventList;
                        int length12 = staEventArr == null ? 0 : staEventArr.length;
                        int i13 = repeatedFieldArrayLength12 + length12;
                        StaEvent[] staEventArr2 = new StaEvent[i13];
                        if (length12 != 0) {
                            System.arraycopy(staEventArr, 0, staEventArr2, 0, length12);
                        }
                        while (length12 < i13 - 1) {
                            StaEvent staEvent = new StaEvent();
                            staEventArr2[length12] = staEvent;
                            codedInputByteBufferNano.readMessage(staEvent);
                            codedInputByteBufferNano.readTag();
                            length12++;
                        }
                        StaEvent staEvent2 = new StaEvent();
                        staEventArr2[length12] = staEvent2;
                        codedInputByteBufferNano.readMessage(staEvent2);
                        this.staEventList = staEventArr2;
                        break;
                    case TypedValues.CycleType.TYPE_WAVE_OFFSET /* 424 */:
                        this.numHalCrashes = codedInputByteBufferNano.readInt32();
                        break;
                    case 432:
                        this.numWificondCrashes = codedInputByteBufferNano.readInt32();
                        break;
                    case 440:
                        this.numWifiOnFailureDueToHal = codedInputByteBufferNano.readInt32();
                        break;
                    case 448:
                        this.numWifiOnFailureDueToWificond = codedInputByteBufferNano.readInt32();
                        break;
                    case MetricsProto.MetricsEvent.STORAGE_MANAGER_SETTINGS /* 458 */:
                        if (this.wifiAwareLog == null) {
                            this.wifiAwareLog = new WifiAwareLog();
                        }
                        codedInputByteBufferNano.readMessage(this.wifiAwareLog);
                        break;
                    case MetricsProto.MetricsEvent.ACTION_DELETION_APPS_COLLAPSED /* 464 */:
                        this.numPasspointProviders = codedInputByteBufferNano.readInt32();
                        break;
                    case MetricsProto.MetricsEvent.ACTION_DELETION_HELPER_DOWNLOADS_DELETION_FAIL /* 472 */:
                        this.numPasspointProviderInstallation = codedInputByteBufferNano.readInt32();
                        break;
                    case 480:
                        this.numPasspointProviderInstallSuccess = codedInputByteBufferNano.readInt32();
                        break;
                    case 488:
                        this.numPasspointProviderUninstallation = codedInputByteBufferNano.readInt32();
                        break;
                    case 496:
                        this.numPasspointProviderUninstallSuccess = codedInputByteBufferNano.readInt32();
                        break;
                    case 504:
                        this.numPasspointProvidersSuccessfullyConnected = codedInputByteBufferNano.readInt32();
                        break;
                    case 514:
                        int repeatedFieldArrayLength13 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 514);
                        NumConnectableNetworksBucket[] numConnectableNetworksBucketArr = this.totalSsidsInScanHistogram;
                        int length13 = numConnectableNetworksBucketArr == null ? 0 : numConnectableNetworksBucketArr.length;
                        int i14 = repeatedFieldArrayLength13 + length13;
                        NumConnectableNetworksBucket[] numConnectableNetworksBucketArr2 = new NumConnectableNetworksBucket[i14];
                        if (length13 != 0) {
                            System.arraycopy(numConnectableNetworksBucketArr, 0, numConnectableNetworksBucketArr2, 0, length13);
                        }
                        while (length13 < i14 - 1) {
                            NumConnectableNetworksBucket numConnectableNetworksBucket = new NumConnectableNetworksBucket();
                            numConnectableNetworksBucketArr2[length13] = numConnectableNetworksBucket;
                            codedInputByteBufferNano.readMessage(numConnectableNetworksBucket);
                            codedInputByteBufferNano.readTag();
                            length13++;
                        }
                        NumConnectableNetworksBucket numConnectableNetworksBucket2 = new NumConnectableNetworksBucket();
                        numConnectableNetworksBucketArr2[length13] = numConnectableNetworksBucket2;
                        codedInputByteBufferNano.readMessage(numConnectableNetworksBucket2);
                        this.totalSsidsInScanHistogram = numConnectableNetworksBucketArr2;
                        break;
                    case 522:
                        int repeatedFieldArrayLength14 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 522);
                        NumConnectableNetworksBucket[] numConnectableNetworksBucketArr3 = this.totalBssidsInScanHistogram;
                        int length14 = numConnectableNetworksBucketArr3 == null ? 0 : numConnectableNetworksBucketArr3.length;
                        int i15 = repeatedFieldArrayLength14 + length14;
                        NumConnectableNetworksBucket[] numConnectableNetworksBucketArr4 = new NumConnectableNetworksBucket[i15];
                        if (length14 != 0) {
                            System.arraycopy(numConnectableNetworksBucketArr3, 0, numConnectableNetworksBucketArr4, 0, length14);
                        }
                        while (length14 < i15 - 1) {
                            NumConnectableNetworksBucket numConnectableNetworksBucket3 = new NumConnectableNetworksBucket();
                            numConnectableNetworksBucketArr4[length14] = numConnectableNetworksBucket3;
                            codedInputByteBufferNano.readMessage(numConnectableNetworksBucket3);
                            codedInputByteBufferNano.readTag();
                            length14++;
                        }
                        NumConnectableNetworksBucket numConnectableNetworksBucket4 = new NumConnectableNetworksBucket();
                        numConnectableNetworksBucketArr4[length14] = numConnectableNetworksBucket4;
                        codedInputByteBufferNano.readMessage(numConnectableNetworksBucket4);
                        this.totalBssidsInScanHistogram = numConnectableNetworksBucketArr4;
                        break;
                    case MetricsProto.MetricsEvent.DIALOG_APN_EDITOR_ERROR /* 530 */:
                        int repeatedFieldArrayLength15 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, MetricsProto.MetricsEvent.DIALOG_APN_EDITOR_ERROR);
                        NumConnectableNetworksBucket[] numConnectableNetworksBucketArr5 = this.availableOpenSsidsInScanHistogram;
                        int length15 = numConnectableNetworksBucketArr5 == null ? 0 : numConnectableNetworksBucketArr5.length;
                        int i16 = repeatedFieldArrayLength15 + length15;
                        NumConnectableNetworksBucket[] numConnectableNetworksBucketArr6 = new NumConnectableNetworksBucket[i16];
                        if (length15 != 0) {
                            System.arraycopy(numConnectableNetworksBucketArr5, 0, numConnectableNetworksBucketArr6, 0, length15);
                        }
                        while (length15 < i16 - 1) {
                            NumConnectableNetworksBucket numConnectableNetworksBucket5 = new NumConnectableNetworksBucket();
                            numConnectableNetworksBucketArr6[length15] = numConnectableNetworksBucket5;
                            codedInputByteBufferNano.readMessage(numConnectableNetworksBucket5);
                            codedInputByteBufferNano.readTag();
                            length15++;
                        }
                        NumConnectableNetworksBucket numConnectableNetworksBucket6 = new NumConnectableNetworksBucket();
                        numConnectableNetworksBucketArr6[length15] = numConnectableNetworksBucket6;
                        codedInputByteBufferNano.readMessage(numConnectableNetworksBucket6);
                        this.availableOpenSsidsInScanHistogram = numConnectableNetworksBucketArr6;
                        break;
                    case MetricsProto.MetricsEvent.DIALOG_BLUETOOTH_RENAME /* 538 */:
                        int repeatedFieldArrayLength16 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, MetricsProto.MetricsEvent.DIALOG_BLUETOOTH_RENAME);
                        NumConnectableNetworksBucket[] numConnectableNetworksBucketArr7 = this.availableOpenBssidsInScanHistogram;
                        int length16 = numConnectableNetworksBucketArr7 == null ? 0 : numConnectableNetworksBucketArr7.length;
                        int i17 = repeatedFieldArrayLength16 + length16;
                        NumConnectableNetworksBucket[] numConnectableNetworksBucketArr8 = new NumConnectableNetworksBucket[i17];
                        if (length16 != 0) {
                            System.arraycopy(numConnectableNetworksBucketArr7, 0, numConnectableNetworksBucketArr8, 0, length16);
                        }
                        while (length16 < i17 - 1) {
                            NumConnectableNetworksBucket numConnectableNetworksBucket7 = new NumConnectableNetworksBucket();
                            numConnectableNetworksBucketArr8[length16] = numConnectableNetworksBucket7;
                            codedInputByteBufferNano.readMessage(numConnectableNetworksBucket7);
                            codedInputByteBufferNano.readTag();
                            length16++;
                        }
                        NumConnectableNetworksBucket numConnectableNetworksBucket8 = new NumConnectableNetworksBucket();
                        numConnectableNetworksBucketArr8[length16] = numConnectableNetworksBucket8;
                        codedInputByteBufferNano.readMessage(numConnectableNetworksBucket8);
                        this.availableOpenBssidsInScanHistogram = numConnectableNetworksBucketArr8;
                        break;
                    case MetricsProto.MetricsEvent.DIALOG_VPN_APP_CONFIG /* 546 */:
                        int repeatedFieldArrayLength17 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, MetricsProto.MetricsEvent.DIALOG_VPN_APP_CONFIG);
                        NumConnectableNetworksBucket[] numConnectableNetworksBucketArr9 = this.availableSavedSsidsInScanHistogram;
                        int length17 = numConnectableNetworksBucketArr9 == null ? 0 : numConnectableNetworksBucketArr9.length;
                        int i18 = repeatedFieldArrayLength17 + length17;
                        NumConnectableNetworksBucket[] numConnectableNetworksBucketArr10 = new NumConnectableNetworksBucket[i18];
                        if (length17 != 0) {
                            System.arraycopy(numConnectableNetworksBucketArr9, 0, numConnectableNetworksBucketArr10, 0, length17);
                        }
                        while (length17 < i18 - 1) {
                            NumConnectableNetworksBucket numConnectableNetworksBucket9 = new NumConnectableNetworksBucket();
                            numConnectableNetworksBucketArr10[length17] = numConnectableNetworksBucket9;
                            codedInputByteBufferNano.readMessage(numConnectableNetworksBucket9);
                            codedInputByteBufferNano.readTag();
                            length17++;
                        }
                        NumConnectableNetworksBucket numConnectableNetworksBucket10 = new NumConnectableNetworksBucket();
                        numConnectableNetworksBucketArr10[length17] = numConnectableNetworksBucket10;
                        codedInputByteBufferNano.readMessage(numConnectableNetworksBucket10);
                        this.availableSavedSsidsInScanHistogram = numConnectableNetworksBucketArr10;
                        break;
                    case MetricsProto.MetricsEvent.DIALOG_ZEN_ACCESS_GRANT /* 554 */:
                        int repeatedFieldArrayLength18 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, MetricsProto.MetricsEvent.DIALOG_ZEN_ACCESS_GRANT);
                        NumConnectableNetworksBucket[] numConnectableNetworksBucketArr11 = this.availableSavedBssidsInScanHistogram;
                        int length18 = numConnectableNetworksBucketArr11 == null ? 0 : numConnectableNetworksBucketArr11.length;
                        int i19 = repeatedFieldArrayLength18 + length18;
                        NumConnectableNetworksBucket[] numConnectableNetworksBucketArr12 = new NumConnectableNetworksBucket[i19];
                        if (length18 != 0) {
                            System.arraycopy(numConnectableNetworksBucketArr11, 0, numConnectableNetworksBucketArr12, 0, length18);
                        }
                        while (length18 < i19 - 1) {
                            NumConnectableNetworksBucket numConnectableNetworksBucket11 = new NumConnectableNetworksBucket();
                            numConnectableNetworksBucketArr12[length18] = numConnectableNetworksBucket11;
                            codedInputByteBufferNano.readMessage(numConnectableNetworksBucket11);
                            codedInputByteBufferNano.readTag();
                            length18++;
                        }
                        NumConnectableNetworksBucket numConnectableNetworksBucket12 = new NumConnectableNetworksBucket();
                        numConnectableNetworksBucketArr12[length18] = numConnectableNetworksBucket12;
                        codedInputByteBufferNano.readMessage(numConnectableNetworksBucket12);
                        this.availableSavedBssidsInScanHistogram = numConnectableNetworksBucketArr12;
                        break;
                    case MetricsProto.MetricsEvent.DIALOG_VOLUME_UNMOUNT /* 562 */:
                        int repeatedFieldArrayLength19 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, MetricsProto.MetricsEvent.DIALOG_VOLUME_UNMOUNT);
                        NumConnectableNetworksBucket[] numConnectableNetworksBucketArr13 = this.availableOpenOrSavedSsidsInScanHistogram;
                        int length19 = numConnectableNetworksBucketArr13 == null ? 0 : numConnectableNetworksBucketArr13.length;
                        int i20 = repeatedFieldArrayLength19 + length19;
                        NumConnectableNetworksBucket[] numConnectableNetworksBucketArr14 = new NumConnectableNetworksBucket[i20];
                        if (length19 != 0) {
                            System.arraycopy(numConnectableNetworksBucketArr13, 0, numConnectableNetworksBucketArr14, 0, length19);
                        }
                        while (length19 < i20 - 1) {
                            NumConnectableNetworksBucket numConnectableNetworksBucket13 = new NumConnectableNetworksBucket();
                            numConnectableNetworksBucketArr14[length19] = numConnectableNetworksBucket13;
                            codedInputByteBufferNano.readMessage(numConnectableNetworksBucket13);
                            codedInputByteBufferNano.readTag();
                            length19++;
                        }
                        NumConnectableNetworksBucket numConnectableNetworksBucket14 = new NumConnectableNetworksBucket();
                        numConnectableNetworksBucketArr14[length19] = numConnectableNetworksBucket14;
                        codedInputByteBufferNano.readMessage(numConnectableNetworksBucket14);
                        this.availableOpenOrSavedSsidsInScanHistogram = numConnectableNetworksBucketArr14;
                        break;
                    case MetricsProto.MetricsEvent.DIALOG_FINGERPINT_EDIT /* 570 */:
                        int repeatedFieldArrayLength20 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, MetricsProto.MetricsEvent.DIALOG_FINGERPINT_EDIT);
                        NumConnectableNetworksBucket[] numConnectableNetworksBucketArr15 = this.availableOpenOrSavedBssidsInScanHistogram;
                        int length20 = numConnectableNetworksBucketArr15 == null ? 0 : numConnectableNetworksBucketArr15.length;
                        int i21 = repeatedFieldArrayLength20 + length20;
                        NumConnectableNetworksBucket[] numConnectableNetworksBucketArr16 = new NumConnectableNetworksBucket[i21];
                        if (length20 != 0) {
                            System.arraycopy(numConnectableNetworksBucketArr15, 0, numConnectableNetworksBucketArr16, 0, length20);
                        }
                        while (length20 < i21 - 1) {
                            NumConnectableNetworksBucket numConnectableNetworksBucket15 = new NumConnectableNetworksBucket();
                            numConnectableNetworksBucketArr16[length20] = numConnectableNetworksBucket15;
                            codedInputByteBufferNano.readMessage(numConnectableNetworksBucket15);
                            codedInputByteBufferNano.readTag();
                            length20++;
                        }
                        NumConnectableNetworksBucket numConnectableNetworksBucket16 = new NumConnectableNetworksBucket();
                        numConnectableNetworksBucketArr16[length20] = numConnectableNetworksBucket16;
                        codedInputByteBufferNano.readMessage(numConnectableNetworksBucket16);
                        this.availableOpenOrSavedBssidsInScanHistogram = numConnectableNetworksBucketArr16;
                        break;
                    case MetricsProto.MetricsEvent.DIALOG_WIFI_P2P_DELETE_GROUP /* 578 */:
                        int repeatedFieldArrayLength21 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, MetricsProto.MetricsEvent.DIALOG_WIFI_P2P_DELETE_GROUP);
                        NumConnectableNetworksBucket[] numConnectableNetworksBucketArr17 = this.availableSavedPasspointProviderProfilesInScanHistogram;
                        int length21 = numConnectableNetworksBucketArr17 == null ? 0 : numConnectableNetworksBucketArr17.length;
                        int i22 = repeatedFieldArrayLength21 + length21;
                        NumConnectableNetworksBucket[] numConnectableNetworksBucketArr18 = new NumConnectableNetworksBucket[i22];
                        if (length21 != 0) {
                            System.arraycopy(numConnectableNetworksBucketArr17, 0, numConnectableNetworksBucketArr18, 0, length21);
                        }
                        while (length21 < i22 - 1) {
                            NumConnectableNetworksBucket numConnectableNetworksBucket17 = new NumConnectableNetworksBucket();
                            numConnectableNetworksBucketArr18[length21] = numConnectableNetworksBucket17;
                            codedInputByteBufferNano.readMessage(numConnectableNetworksBucket17);
                            codedInputByteBufferNano.readTag();
                            length21++;
                        }
                        NumConnectableNetworksBucket numConnectableNetworksBucket18 = new NumConnectableNetworksBucket();
                        numConnectableNetworksBucketArr18[length21] = numConnectableNetworksBucket18;
                        codedInputByteBufferNano.readMessage(numConnectableNetworksBucket18);
                        this.availableSavedPasspointProviderProfilesInScanHistogram = numConnectableNetworksBucketArr18;
                        break;
                    case MetricsProto.MetricsEvent.DIALOG_ACCOUNT_SYNC_FAILED_REMOVAL /* 586 */:
                        int repeatedFieldArrayLength22 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, MetricsProto.MetricsEvent.DIALOG_ACCOUNT_SYNC_FAILED_REMOVAL);
                        NumConnectableNetworksBucket[] numConnectableNetworksBucketArr19 = this.availableSavedPasspointProviderBssidsInScanHistogram;
                        int length22 = numConnectableNetworksBucketArr19 == null ? 0 : numConnectableNetworksBucketArr19.length;
                        int i23 = repeatedFieldArrayLength22 + length22;
                        NumConnectableNetworksBucket[] numConnectableNetworksBucketArr20 = new NumConnectableNetworksBucket[i23];
                        if (length22 != 0) {
                            System.arraycopy(numConnectableNetworksBucketArr19, 0, numConnectableNetworksBucketArr20, 0, length22);
                        }
                        while (length22 < i23 - 1) {
                            NumConnectableNetworksBucket numConnectableNetworksBucket19 = new NumConnectableNetworksBucket();
                            numConnectableNetworksBucketArr20[length22] = numConnectableNetworksBucket19;
                            codedInputByteBufferNano.readMessage(numConnectableNetworksBucket19);
                            codedInputByteBufferNano.readTag();
                            length22++;
                        }
                        NumConnectableNetworksBucket numConnectableNetworksBucket20 = new NumConnectableNetworksBucket();
                        numConnectableNetworksBucketArr20[length22] = numConnectableNetworksBucket20;
                        codedInputByteBufferNano.readMessage(numConnectableNetworksBucket20);
                        this.availableSavedPasspointProviderBssidsInScanHistogram = numConnectableNetworksBucketArr20;
                        break;
                    case MetricsProto.MetricsEvent.DIALOG_USER_ENABLE_CALLING /* 592 */:
                        this.fullBandAllSingleScanListenerResults = codedInputByteBufferNano.readInt32();
                        break;
                    case 600:
                        this.partialAllSingleScanListenerResults = codedInputByteBufferNano.readInt32();
                        break;
                    case 610:
                        if (this.pnoScanMetrics == null) {
                            this.pnoScanMetrics = new PnoScanMetrics();
                        }
                        codedInputByteBufferNano.readMessage(this.pnoScanMetrics);
                        break;
                    case MetricsProto.MetricsEvent.PROVISIONING_ENTRY_POINT_TRUSTED_SOURCE /* 618 */:
                        int repeatedFieldArrayLength23 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, MetricsProto.MetricsEvent.PROVISIONING_ENTRY_POINT_TRUSTED_SOURCE);
                        ConnectToNetworkNotificationAndActionCount[] connectToNetworkNotificationAndActionCountArr = this.connectToNetworkNotificationCount;
                        int length23 = connectToNetworkNotificationAndActionCountArr == null ? 0 : connectToNetworkNotificationAndActionCountArr.length;
                        int i24 = repeatedFieldArrayLength23 + length23;
                        ConnectToNetworkNotificationAndActionCount[] connectToNetworkNotificationAndActionCountArr2 = new ConnectToNetworkNotificationAndActionCount[i24];
                        if (length23 != 0) {
                            System.arraycopy(connectToNetworkNotificationAndActionCountArr, 0, connectToNetworkNotificationAndActionCountArr2, 0, length23);
                        }
                        while (length23 < i24 - 1) {
                            ConnectToNetworkNotificationAndActionCount connectToNetworkNotificationAndActionCount = new ConnectToNetworkNotificationAndActionCount();
                            connectToNetworkNotificationAndActionCountArr2[length23] = connectToNetworkNotificationAndActionCount;
                            codedInputByteBufferNano.readMessage(connectToNetworkNotificationAndActionCount);
                            codedInputByteBufferNano.readTag();
                            length23++;
                        }
                        ConnectToNetworkNotificationAndActionCount connectToNetworkNotificationAndActionCount2 = new ConnectToNetworkNotificationAndActionCount();
                        connectToNetworkNotificationAndActionCountArr2[length23] = connectToNetworkNotificationAndActionCount2;
                        codedInputByteBufferNano.readMessage(connectToNetworkNotificationAndActionCount2);
                        this.connectToNetworkNotificationCount = connectToNetworkNotificationAndActionCountArr2;
                        break;
                    case MetricsProto.MetricsEvent.PROVISIONING_COPY_ACCOUNT_STATUS /* 626 */:
                        int repeatedFieldArrayLength24 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, MetricsProto.MetricsEvent.PROVISIONING_COPY_ACCOUNT_STATUS);
                        ConnectToNetworkNotificationAndActionCount[] connectToNetworkNotificationAndActionCountArr3 = this.connectToNetworkNotificationActionCount;
                        int length24 = connectToNetworkNotificationAndActionCountArr3 == null ? 0 : connectToNetworkNotificationAndActionCountArr3.length;
                        int i25 = repeatedFieldArrayLength24 + length24;
                        ConnectToNetworkNotificationAndActionCount[] connectToNetworkNotificationAndActionCountArr4 = new ConnectToNetworkNotificationAndActionCount[i25];
                        if (length24 != 0) {
                            System.arraycopy(connectToNetworkNotificationAndActionCountArr3, 0, connectToNetworkNotificationAndActionCountArr4, 0, length24);
                        }
                        while (length24 < i25 - 1) {
                            ConnectToNetworkNotificationAndActionCount connectToNetworkNotificationAndActionCount3 = new ConnectToNetworkNotificationAndActionCount();
                            connectToNetworkNotificationAndActionCountArr4[length24] = connectToNetworkNotificationAndActionCount3;
                            codedInputByteBufferNano.readMessage(connectToNetworkNotificationAndActionCount3);
                            codedInputByteBufferNano.readTag();
                            length24++;
                        }
                        ConnectToNetworkNotificationAndActionCount connectToNetworkNotificationAndActionCount4 = new ConnectToNetworkNotificationAndActionCount();
                        connectToNetworkNotificationAndActionCountArr4[length24] = connectToNetworkNotificationAndActionCount4;
                        codedInputByteBufferNano.readMessage(connectToNetworkNotificationAndActionCount4);
                        this.connectToNetworkNotificationActionCount = connectToNetworkNotificationAndActionCountArr4;
                        break;
                    case MetricsProto.MetricsEvent.ACTION_PERMISSION_DENIED_UNKNOWN /* 632 */:
                        this.openNetworkRecommenderBlacklistSize = codedInputByteBufferNano.readInt32();
                        break;
                    case 640:
                        this.isWifiNetworksAvailableNotificationOn = codedInputByteBufferNano.readBool();
                        break;
                    case MetricsProto.MetricsEvent.ACTION_PERMISSION_DENIED_READ_CONTACTS /* 648 */:
                        this.numOpenNetworkRecommendationUpdates = codedInputByteBufferNano.readInt32();
                        break;
                    case MetricsProto.MetricsEvent.ACTION_PERMISSION_DENIED_GET_ACCOUNTS /* 656 */:
                        this.numOpenNetworkConnectMessageFailedToSend = codedInputByteBufferNano.readInt32();
                        break;
                    default:
                        if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                            return this;
                        }
                        break;
                        break;
                }
            }
        }
    }

    public static final class WifiScoreCount extends MessageNano {
        private static volatile WifiScoreCount[] _emptyArray;
        public int count;
        public int score;

        public WifiScoreCount() {
            clear();
        }

        public static WifiScoreCount[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new WifiScoreCount[0];
                    }
                }
            }
            return _emptyArray;
        }

        public static WifiScoreCount parseFrom(byte[] bArr) {
            return (WifiScoreCount) MessageNano.mergeFrom(new WifiScoreCount(), bArr);
        }

        public WifiScoreCount clear() {
            this.score = 0;
            this.count = 0;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public int computeSerializedSize() {
            int iComputeSerializedSize = super.computeSerializedSize();
            int i2 = this.score;
            if (i2 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(1, i2);
            }
            int i3 = this.count;
            return i3 != 0 ? iComputeSerializedSize + CodedOutputByteBufferNano.computeInt32Size(2, i3) : iComputeSerializedSize;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws CodedOutputByteBufferNano.OutOfSpaceException {
            int i2 = this.score;
            if (i2 != 0) {
                codedOutputByteBufferNano.writeInt32(1, i2);
            }
            int i3 = this.count;
            if (i3 != 0) {
                codedOutputByteBufferNano.writeInt32(2, i3);
            }
            super.writeTo(codedOutputByteBufferNano);
        }

        public static WifiScoreCount parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
            return new WifiScoreCount().mergeFrom(codedInputByteBufferNano);
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public WifiScoreCount mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws InvalidProtocolBufferNanoException {
            while (true) {
                int tag = codedInputByteBufferNano.readTag();
                if (tag == 0) {
                    return this;
                }
                if (tag == 8) {
                    this.score = codedInputByteBufferNano.readInt32();
                } else if (tag == 16) {
                    this.count = codedInputByteBufferNano.readInt32();
                } else if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                    return this;
                }
            }
        }
    }
}
