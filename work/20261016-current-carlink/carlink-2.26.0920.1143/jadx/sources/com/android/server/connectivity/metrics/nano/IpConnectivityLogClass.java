package com.android.server.connectivity.metrics.nano;

import com.android.framework.protobuf.nano.CodedInputByteBufferNano;
import com.android.framework.protobuf.nano.CodedOutputByteBufferNano;
import com.android.framework.protobuf.nano.InternalNano;
import com.android.framework.protobuf.nano.InvalidProtocolBufferNanoException;
import com.android.framework.protobuf.nano.MessageNano;
import com.android.framework.protobuf.nano.WireFormatNano;

/* JADX INFO: loaded from: classes3.dex */
public interface IpConnectivityLogClass {
    public static final int BLUETOOTH = 1;
    public static final int CELLULAR = 2;
    public static final int ETHERNET = 3;
    public static final int LOWPAN = 9;
    public static final int MULTIPLE = 6;
    public static final int NONE = 5;
    public static final int UNKNOWN = 0;
    public static final int WIFI = 4;
    public static final int WIFI_NAN = 8;
    public static final int WIFI_P2P = 7;

    public static final class ApfProgramEvent extends MessageNano {
        private static volatile ApfProgramEvent[] _emptyArray;
        public int currentRas;
        public boolean dropMulticast;
        public long effectiveLifetime;
        public int filteredRas;
        public boolean hasIpv4Addr;
        public long lifetime;
        public int programLength;

        public ApfProgramEvent() {
            clear();
        }

        public static ApfProgramEvent[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new ApfProgramEvent[0];
                    }
                }
            }
            return _emptyArray;
        }

        public static ApfProgramEvent parseFrom(byte[] bArr) {
            return (ApfProgramEvent) MessageNano.mergeFrom(new ApfProgramEvent(), bArr);
        }

        public ApfProgramEvent clear() {
            this.lifetime = 0L;
            this.effectiveLifetime = 0L;
            this.filteredRas = 0;
            this.currentRas = 0;
            this.programLength = 0;
            this.dropMulticast = false;
            this.hasIpv4Addr = false;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public int computeSerializedSize() {
            int iComputeSerializedSize = super.computeSerializedSize();
            long j2 = this.lifetime;
            if (j2 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(1, j2);
            }
            int i2 = this.filteredRas;
            if (i2 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(2, i2);
            }
            int i3 = this.currentRas;
            if (i3 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(3, i3);
            }
            int i4 = this.programLength;
            if (i4 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(4, i4);
            }
            boolean z2 = this.dropMulticast;
            if (z2) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(5, z2);
            }
            boolean z3 = this.hasIpv4Addr;
            if (z3) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(6, z3);
            }
            long j3 = this.effectiveLifetime;
            return j3 != 0 ? iComputeSerializedSize + CodedOutputByteBufferNano.computeInt64Size(7, j3) : iComputeSerializedSize;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws CodedOutputByteBufferNano.OutOfSpaceException {
            long j2 = this.lifetime;
            if (j2 != 0) {
                codedOutputByteBufferNano.writeInt64(1, j2);
            }
            int i2 = this.filteredRas;
            if (i2 != 0) {
                codedOutputByteBufferNano.writeInt32(2, i2);
            }
            int i3 = this.currentRas;
            if (i3 != 0) {
                codedOutputByteBufferNano.writeInt32(3, i3);
            }
            int i4 = this.programLength;
            if (i4 != 0) {
                codedOutputByteBufferNano.writeInt32(4, i4);
            }
            boolean z2 = this.dropMulticast;
            if (z2) {
                codedOutputByteBufferNano.writeBool(5, z2);
            }
            boolean z3 = this.hasIpv4Addr;
            if (z3) {
                codedOutputByteBufferNano.writeBool(6, z3);
            }
            long j3 = this.effectiveLifetime;
            if (j3 != 0) {
                codedOutputByteBufferNano.writeInt64(7, j3);
            }
            super.writeTo(codedOutputByteBufferNano);
        }

        public static ApfProgramEvent parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
            return new ApfProgramEvent().mergeFrom(codedInputByteBufferNano);
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public ApfProgramEvent mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws InvalidProtocolBufferNanoException {
            while (true) {
                int tag = codedInputByteBufferNano.readTag();
                if (tag == 0) {
                    return this;
                }
                if (tag == 8) {
                    this.lifetime = codedInputByteBufferNano.readInt64();
                } else if (tag == 16) {
                    this.filteredRas = codedInputByteBufferNano.readInt32();
                } else if (tag == 24) {
                    this.currentRas = codedInputByteBufferNano.readInt32();
                } else if (tag == 32) {
                    this.programLength = codedInputByteBufferNano.readInt32();
                } else if (tag == 40) {
                    this.dropMulticast = codedInputByteBufferNano.readBool();
                } else if (tag == 48) {
                    this.hasIpv4Addr = codedInputByteBufferNano.readBool();
                } else if (tag == 56) {
                    this.effectiveLifetime = codedInputByteBufferNano.readInt64();
                } else if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                    return this;
                }
            }
        }
    }

    public static final class ApfStatistics extends MessageNano {
        private static volatile ApfStatistics[] _emptyArray;
        public int droppedRas;
        public long durationMs;
        public Pair[] hardwareCounters;
        public int matchingRas;
        public int maxProgramSize;
        public int parseErrors;
        public int programUpdates;
        public int programUpdatesAll;
        public int programUpdatesAllowingMulticast;
        public int receivedRas;
        public int totalPacketDropped;
        public int totalPacketProcessed;
        public int zeroLifetimeRas;

        public ApfStatistics() {
            clear();
        }

        public static ApfStatistics[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new ApfStatistics[0];
                    }
                }
            }
            return _emptyArray;
        }

        public static ApfStatistics parseFrom(byte[] bArr) {
            return (ApfStatistics) MessageNano.mergeFrom(new ApfStatistics(), bArr);
        }

        public ApfStatistics clear() {
            this.durationMs = 0L;
            this.receivedRas = 0;
            this.matchingRas = 0;
            this.droppedRas = 0;
            this.zeroLifetimeRas = 0;
            this.parseErrors = 0;
            this.programUpdates = 0;
            this.maxProgramSize = 0;
            this.programUpdatesAll = 0;
            this.programUpdatesAllowingMulticast = 0;
            this.totalPacketProcessed = 0;
            this.totalPacketDropped = 0;
            this.hardwareCounters = Pair.emptyArray();
            this.cachedSize = -1;
            return this;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public int computeSerializedSize() {
            int iComputeSerializedSize = super.computeSerializedSize();
            long j2 = this.durationMs;
            if (j2 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(1, j2);
            }
            int i2 = this.receivedRas;
            if (i2 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(2, i2);
            }
            int i3 = this.matchingRas;
            if (i3 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(3, i3);
            }
            int i4 = this.droppedRas;
            if (i4 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(5, i4);
            }
            int i5 = this.zeroLifetimeRas;
            if (i5 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(6, i5);
            }
            int i6 = this.parseErrors;
            if (i6 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(7, i6);
            }
            int i7 = this.programUpdates;
            if (i7 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(8, i7);
            }
            int i8 = this.maxProgramSize;
            if (i8 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(9, i8);
            }
            int i9 = this.programUpdatesAll;
            if (i9 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(10, i9);
            }
            int i10 = this.programUpdatesAllowingMulticast;
            if (i10 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(11, i10);
            }
            int i11 = this.totalPacketProcessed;
            if (i11 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(12, i11);
            }
            int i12 = this.totalPacketDropped;
            if (i12 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(13, i12);
            }
            Pair[] pairArr = this.hardwareCounters;
            if (pairArr != null && pairArr.length > 0) {
                int i13 = 0;
                while (true) {
                    Pair[] pairArr2 = this.hardwareCounters;
                    if (i13 >= pairArr2.length) {
                        break;
                    }
                    Pair pair = pairArr2[i13];
                    if (pair != null) {
                        iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(14, pair);
                    }
                    i13++;
                }
            }
            return iComputeSerializedSize;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws CodedOutputByteBufferNano.OutOfSpaceException {
            long j2 = this.durationMs;
            if (j2 != 0) {
                codedOutputByteBufferNano.writeInt64(1, j2);
            }
            int i2 = this.receivedRas;
            if (i2 != 0) {
                codedOutputByteBufferNano.writeInt32(2, i2);
            }
            int i3 = this.matchingRas;
            if (i3 != 0) {
                codedOutputByteBufferNano.writeInt32(3, i3);
            }
            int i4 = this.droppedRas;
            if (i4 != 0) {
                codedOutputByteBufferNano.writeInt32(5, i4);
            }
            int i5 = this.zeroLifetimeRas;
            if (i5 != 0) {
                codedOutputByteBufferNano.writeInt32(6, i5);
            }
            int i6 = this.parseErrors;
            if (i6 != 0) {
                codedOutputByteBufferNano.writeInt32(7, i6);
            }
            int i7 = this.programUpdates;
            if (i7 != 0) {
                codedOutputByteBufferNano.writeInt32(8, i7);
            }
            int i8 = this.maxProgramSize;
            if (i8 != 0) {
                codedOutputByteBufferNano.writeInt32(9, i8);
            }
            int i9 = this.programUpdatesAll;
            if (i9 != 0) {
                codedOutputByteBufferNano.writeInt32(10, i9);
            }
            int i10 = this.programUpdatesAllowingMulticast;
            if (i10 != 0) {
                codedOutputByteBufferNano.writeInt32(11, i10);
            }
            int i11 = this.totalPacketProcessed;
            if (i11 != 0) {
                codedOutputByteBufferNano.writeInt32(12, i11);
            }
            int i12 = this.totalPacketDropped;
            if (i12 != 0) {
                codedOutputByteBufferNano.writeInt32(13, i12);
            }
            Pair[] pairArr = this.hardwareCounters;
            if (pairArr != null && pairArr.length > 0) {
                int i13 = 0;
                while (true) {
                    Pair[] pairArr2 = this.hardwareCounters;
                    if (i13 >= pairArr2.length) {
                        break;
                    }
                    Pair pair = pairArr2[i13];
                    if (pair != null) {
                        codedOutputByteBufferNano.writeMessage(14, pair);
                    }
                    i13++;
                }
            }
            super.writeTo(codedOutputByteBufferNano);
        }

        public static ApfStatistics parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
            return new ApfStatistics().mergeFrom(codedInputByteBufferNano);
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public ApfStatistics mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws InvalidProtocolBufferNanoException {
            while (true) {
                int tag = codedInputByteBufferNano.readTag();
                switch (tag) {
                    case 0:
                        return this;
                    case 8:
                        this.durationMs = codedInputByteBufferNano.readInt64();
                        break;
                    case 16:
                        this.receivedRas = codedInputByteBufferNano.readInt32();
                        break;
                    case 24:
                        this.matchingRas = codedInputByteBufferNano.readInt32();
                        break;
                    case 40:
                        this.droppedRas = codedInputByteBufferNano.readInt32();
                        break;
                    case 48:
                        this.zeroLifetimeRas = codedInputByteBufferNano.readInt32();
                        break;
                    case 56:
                        this.parseErrors = codedInputByteBufferNano.readInt32();
                        break;
                    case 64:
                        this.programUpdates = codedInputByteBufferNano.readInt32();
                        break;
                    case 72:
                        this.maxProgramSize = codedInputByteBufferNano.readInt32();
                        break;
                    case 80:
                        this.programUpdatesAll = codedInputByteBufferNano.readInt32();
                        break;
                    case 88:
                        this.programUpdatesAllowingMulticast = codedInputByteBufferNano.readInt32();
                        break;
                    case 96:
                        this.totalPacketProcessed = codedInputByteBufferNano.readInt32();
                        break;
                    case 104:
                        this.totalPacketDropped = codedInputByteBufferNano.readInt32();
                        break;
                    case 114:
                        int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 114);
                        Pair[] pairArr = this.hardwareCounters;
                        int length = pairArr == null ? 0 : pairArr.length;
                        int i2 = repeatedFieldArrayLength + length;
                        Pair[] pairArr2 = new Pair[i2];
                        if (length != 0) {
                            System.arraycopy(pairArr, 0, pairArr2, 0, length);
                        }
                        while (length < i2 - 1) {
                            Pair pair = new Pair();
                            pairArr2[length] = pair;
                            codedInputByteBufferNano.readMessage(pair);
                            codedInputByteBufferNano.readTag();
                            length++;
                        }
                        Pair pair2 = new Pair();
                        pairArr2[length] = pair2;
                        codedInputByteBufferNano.readMessage(pair2);
                        this.hardwareCounters = pairArr2;
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

    public static final class ConnectStatistics extends MessageNano {
        private static volatile ConnectStatistics[] _emptyArray;
        public int connectBlockingCount;
        public int connectCount;
        public Pair[] errnosCounters;
        public int ipv6AddrCount;
        public int[] latenciesMs;
        public int[] nonBlockingLatenciesMs;

        public ConnectStatistics() {
            clear();
        }

        public static ConnectStatistics[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new ConnectStatistics[0];
                    }
                }
            }
            return _emptyArray;
        }

        public static ConnectStatistics parseFrom(byte[] bArr) {
            return (ConnectStatistics) MessageNano.mergeFrom(new ConnectStatistics(), bArr);
        }

        public ConnectStatistics clear() {
            this.connectCount = 0;
            this.connectBlockingCount = 0;
            this.ipv6AddrCount = 0;
            int[] iArr = WireFormatNano.EMPTY_INT_ARRAY;
            this.latenciesMs = iArr;
            this.nonBlockingLatenciesMs = iArr;
            this.errnosCounters = Pair.emptyArray();
            this.cachedSize = -1;
            return this;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public int computeSerializedSize() {
            int[] iArr;
            int iComputeSerializedSize = super.computeSerializedSize();
            int i2 = this.connectCount;
            if (i2 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(1, i2);
            }
            int i3 = this.ipv6AddrCount;
            if (i3 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(2, i3);
            }
            int[] iArr2 = this.latenciesMs;
            int i4 = 0;
            if (iArr2 != null && iArr2.length > 0) {
                int i5 = 0;
                int iComputeInt32SizeNoTag = 0;
                while (true) {
                    iArr = this.latenciesMs;
                    if (i5 >= iArr.length) {
                        break;
                    }
                    iComputeInt32SizeNoTag += CodedOutputByteBufferNano.computeInt32SizeNoTag(iArr[i5]);
                    i5++;
                }
                iComputeSerializedSize = iComputeSerializedSize + iComputeInt32SizeNoTag + (iArr.length * 1);
            }
            Pair[] pairArr = this.errnosCounters;
            if (pairArr != null && pairArr.length > 0) {
                int i6 = 0;
                while (true) {
                    Pair[] pairArr2 = this.errnosCounters;
                    if (i6 >= pairArr2.length) {
                        break;
                    }
                    Pair pair = pairArr2[i6];
                    if (pair != null) {
                        iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(4, pair);
                    }
                    i6++;
                }
            }
            int i7 = this.connectBlockingCount;
            if (i7 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(5, i7);
            }
            int[] iArr3 = this.nonBlockingLatenciesMs;
            if (iArr3 == null || iArr3.length <= 0) {
                return iComputeSerializedSize;
            }
            int iComputeInt32SizeNoTag2 = 0;
            while (true) {
                int[] iArr4 = this.nonBlockingLatenciesMs;
                if (i4 >= iArr4.length) {
                    return iComputeSerializedSize + iComputeInt32SizeNoTag2 + (iArr4.length * 1);
                }
                iComputeInt32SizeNoTag2 += CodedOutputByteBufferNano.computeInt32SizeNoTag(iArr4[i4]);
                i4++;
            }
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws CodedOutputByteBufferNano.OutOfSpaceException {
            int i2 = this.connectCount;
            if (i2 != 0) {
                codedOutputByteBufferNano.writeInt32(1, i2);
            }
            int i3 = this.ipv6AddrCount;
            if (i3 != 0) {
                codedOutputByteBufferNano.writeInt32(2, i3);
            }
            int[] iArr = this.latenciesMs;
            int i4 = 0;
            if (iArr != null && iArr.length > 0) {
                int i5 = 0;
                while (true) {
                    int[] iArr2 = this.latenciesMs;
                    if (i5 >= iArr2.length) {
                        break;
                    }
                    codedOutputByteBufferNano.writeInt32(3, iArr2[i5]);
                    i5++;
                }
            }
            Pair[] pairArr = this.errnosCounters;
            if (pairArr != null && pairArr.length > 0) {
                int i6 = 0;
                while (true) {
                    Pair[] pairArr2 = this.errnosCounters;
                    if (i6 >= pairArr2.length) {
                        break;
                    }
                    Pair pair = pairArr2[i6];
                    if (pair != null) {
                        codedOutputByteBufferNano.writeMessage(4, pair);
                    }
                    i6++;
                }
            }
            int i7 = this.connectBlockingCount;
            if (i7 != 0) {
                codedOutputByteBufferNano.writeInt32(5, i7);
            }
            int[] iArr3 = this.nonBlockingLatenciesMs;
            if (iArr3 != null && iArr3.length > 0) {
                while (true) {
                    int[] iArr4 = this.nonBlockingLatenciesMs;
                    if (i4 >= iArr4.length) {
                        break;
                    }
                    codedOutputByteBufferNano.writeInt32(6, iArr4[i4]);
                    i4++;
                }
            }
            super.writeTo(codedOutputByteBufferNano);
        }

        public static ConnectStatistics parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
            return new ConnectStatistics().mergeFrom(codedInputByteBufferNano);
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public ConnectStatistics mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws InvalidProtocolBufferNanoException {
            while (true) {
                int tag = codedInputByteBufferNano.readTag();
                if (tag == 0) {
                    return this;
                }
                if (tag == 8) {
                    this.connectCount = codedInputByteBufferNano.readInt32();
                } else if (tag == 16) {
                    this.ipv6AddrCount = codedInputByteBufferNano.readInt32();
                } else if (tag == 24) {
                    int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 24);
                    int[] iArr = this.latenciesMs;
                    int length = iArr == null ? 0 : iArr.length;
                    int i2 = repeatedFieldArrayLength + length;
                    int[] iArr2 = new int[i2];
                    if (length != 0) {
                        System.arraycopy(iArr, 0, iArr2, 0, length);
                    }
                    while (length < i2 - 1) {
                        iArr2[length] = codedInputByteBufferNano.readInt32();
                        codedInputByteBufferNano.readTag();
                        length++;
                    }
                    iArr2[length] = codedInputByteBufferNano.readInt32();
                    this.latenciesMs = iArr2;
                } else if (tag == 26) {
                    int iPushLimit = codedInputByteBufferNano.pushLimit(codedInputByteBufferNano.readRawVarint32());
                    int position = codedInputByteBufferNano.getPosition();
                    int i3 = 0;
                    while (codedInputByteBufferNano.getBytesUntilLimit() > 0) {
                        codedInputByteBufferNano.readInt32();
                        i3++;
                    }
                    codedInputByteBufferNano.rewindToPosition(position);
                    int[] iArr3 = this.latenciesMs;
                    int length2 = iArr3 == null ? 0 : iArr3.length;
                    int i4 = i3 + length2;
                    int[] iArr4 = new int[i4];
                    if (length2 != 0) {
                        System.arraycopy(iArr3, 0, iArr4, 0, length2);
                    }
                    while (length2 < i4) {
                        iArr4[length2] = codedInputByteBufferNano.readInt32();
                        length2++;
                    }
                    this.latenciesMs = iArr4;
                    codedInputByteBufferNano.popLimit(iPushLimit);
                } else if (tag == 34) {
                    int repeatedFieldArrayLength2 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 34);
                    Pair[] pairArr = this.errnosCounters;
                    int length3 = pairArr == null ? 0 : pairArr.length;
                    int i5 = repeatedFieldArrayLength2 + length3;
                    Pair[] pairArr2 = new Pair[i5];
                    if (length3 != 0) {
                        System.arraycopy(pairArr, 0, pairArr2, 0, length3);
                    }
                    while (length3 < i5 - 1) {
                        Pair pair = new Pair();
                        pairArr2[length3] = pair;
                        codedInputByteBufferNano.readMessage(pair);
                        codedInputByteBufferNano.readTag();
                        length3++;
                    }
                    Pair pair2 = new Pair();
                    pairArr2[length3] = pair2;
                    codedInputByteBufferNano.readMessage(pair2);
                    this.errnosCounters = pairArr2;
                } else if (tag == 40) {
                    this.connectBlockingCount = codedInputByteBufferNano.readInt32();
                } else if (tag == 48) {
                    int repeatedFieldArrayLength3 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 48);
                    int[] iArr5 = this.nonBlockingLatenciesMs;
                    int length4 = iArr5 == null ? 0 : iArr5.length;
                    int i6 = repeatedFieldArrayLength3 + length4;
                    int[] iArr6 = new int[i6];
                    if (length4 != 0) {
                        System.arraycopy(iArr5, 0, iArr6, 0, length4);
                    }
                    while (length4 < i6 - 1) {
                        iArr6[length4] = codedInputByteBufferNano.readInt32();
                        codedInputByteBufferNano.readTag();
                        length4++;
                    }
                    iArr6[length4] = codedInputByteBufferNano.readInt32();
                    this.nonBlockingLatenciesMs = iArr6;
                } else if (tag == 50) {
                    int iPushLimit2 = codedInputByteBufferNano.pushLimit(codedInputByteBufferNano.readRawVarint32());
                    int position2 = codedInputByteBufferNano.getPosition();
                    int i7 = 0;
                    while (codedInputByteBufferNano.getBytesUntilLimit() > 0) {
                        codedInputByteBufferNano.readInt32();
                        i7++;
                    }
                    codedInputByteBufferNano.rewindToPosition(position2);
                    int[] iArr7 = this.nonBlockingLatenciesMs;
                    int length5 = iArr7 == null ? 0 : iArr7.length;
                    int i8 = i7 + length5;
                    int[] iArr8 = new int[i8];
                    if (length5 != 0) {
                        System.arraycopy(iArr7, 0, iArr8, 0, length5);
                    }
                    while (length5 < i8) {
                        iArr8[length5] = codedInputByteBufferNano.readInt32();
                        length5++;
                    }
                    this.nonBlockingLatenciesMs = iArr8;
                    codedInputByteBufferNano.popLimit(iPushLimit2);
                } else if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                    return this;
                }
            }
        }
    }

    public static final class DHCPEvent extends MessageNano {
        public static final int ERROR_CODE_FIELD_NUMBER = 3;
        public static final int STATE_TRANSITION_FIELD_NUMBER = 2;
        private static volatile DHCPEvent[] _emptyArray;
        public int durationMs;
        public String ifName;
        private int valueCase_ = 0;
        private Object value_;

        public DHCPEvent() {
            clear();
        }

        public static DHCPEvent[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new DHCPEvent[0];
                    }
                }
            }
            return _emptyArray;
        }

        public static DHCPEvent parseFrom(byte[] bArr) {
            return (DHCPEvent) MessageNano.mergeFrom(new DHCPEvent(), bArr);
        }

        public DHCPEvent clear() {
            this.ifName = "";
            this.durationMs = 0;
            clearValue();
            this.cachedSize = -1;
            return this;
        }

        public DHCPEvent clearValue() {
            this.valueCase_ = 0;
            this.value_ = null;
            return this;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public int computeSerializedSize() {
            int iComputeSerializedSize = super.computeSerializedSize();
            if (!this.ifName.equals("")) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeStringSize(1, this.ifName);
            }
            if (this.valueCase_ == 2) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeStringSize(2, (String) this.value_);
            }
            if (this.valueCase_ == 3) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(3, ((Integer) this.value_).intValue());
            }
            int i2 = this.durationMs;
            return i2 != 0 ? iComputeSerializedSize + CodedOutputByteBufferNano.computeInt32Size(4, i2) : iComputeSerializedSize;
        }

        public int getErrorCode() {
            if (this.valueCase_ == 3) {
                return ((Integer) this.value_).intValue();
            }
            return 0;
        }

        public String getStateTransition() {
            return this.valueCase_ == 2 ? (String) this.value_ : "";
        }

        public int getValueCase() {
            return this.valueCase_;
        }

        public boolean hasErrorCode() {
            return this.valueCase_ == 3;
        }

        public boolean hasStateTransition() {
            return this.valueCase_ == 2;
        }

        public DHCPEvent setErrorCode(int i2) {
            this.valueCase_ = 3;
            this.value_ = Integer.valueOf(i2);
            return this;
        }

        public DHCPEvent setStateTransition(String str) {
            this.valueCase_ = 2;
            this.value_ = str;
            return this;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws CodedOutputByteBufferNano.OutOfSpaceException {
            if (!this.ifName.equals("")) {
                codedOutputByteBufferNano.writeString(1, this.ifName);
            }
            if (this.valueCase_ == 2) {
                codedOutputByteBufferNano.writeString(2, (String) this.value_);
            }
            if (this.valueCase_ == 3) {
                codedOutputByteBufferNano.writeInt32(3, ((Integer) this.value_).intValue());
            }
            int i2 = this.durationMs;
            if (i2 != 0) {
                codedOutputByteBufferNano.writeInt32(4, i2);
            }
            super.writeTo(codedOutputByteBufferNano);
        }

        public static DHCPEvent parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
            return new DHCPEvent().mergeFrom(codedInputByteBufferNano);
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public DHCPEvent mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws InvalidProtocolBufferNanoException {
            while (true) {
                int tag = codedInputByteBufferNano.readTag();
                if (tag == 0) {
                    return this;
                }
                if (tag == 10) {
                    this.ifName = codedInputByteBufferNano.readString();
                } else if (tag == 18) {
                    this.value_ = codedInputByteBufferNano.readString();
                    this.valueCase_ = 2;
                } else if (tag == 24) {
                    this.value_ = Integer.valueOf(codedInputByteBufferNano.readInt32());
                    this.valueCase_ = 3;
                } else if (tag == 32) {
                    this.durationMs = codedInputByteBufferNano.readInt32();
                } else if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                    return this;
                }
            }
        }
    }

    public static final class DNSLatencies extends MessageNano {
        private static volatile DNSLatencies[] _emptyArray;
        public int aCount;
        public int aaaaCount;
        public int[] latenciesMs;
        public int queryCount;
        public int returnCode;
        public int type;

        public DNSLatencies() {
            clear();
        }

        public static DNSLatencies[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new DNSLatencies[0];
                    }
                }
            }
            return _emptyArray;
        }

        public static DNSLatencies parseFrom(byte[] bArr) {
            return (DNSLatencies) MessageNano.mergeFrom(new DNSLatencies(), bArr);
        }

        public DNSLatencies clear() {
            this.type = 0;
            this.returnCode = 0;
            this.queryCount = 0;
            this.aCount = 0;
            this.aaaaCount = 0;
            this.latenciesMs = WireFormatNano.EMPTY_INT_ARRAY;
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
            int i3 = this.returnCode;
            if (i3 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(2, i3);
            }
            int i4 = this.queryCount;
            if (i4 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(3, i4);
            }
            int i5 = this.aCount;
            if (i5 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(4, i5);
            }
            int i6 = this.aaaaCount;
            if (i6 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(5, i6);
            }
            int[] iArr = this.latenciesMs;
            if (iArr == null || iArr.length <= 0) {
                return iComputeSerializedSize;
            }
            int i7 = 0;
            int iComputeInt32SizeNoTag = 0;
            while (true) {
                int[] iArr2 = this.latenciesMs;
                if (i7 >= iArr2.length) {
                    return iComputeSerializedSize + iComputeInt32SizeNoTag + (iArr2.length * 1);
                }
                iComputeInt32SizeNoTag += CodedOutputByteBufferNano.computeInt32SizeNoTag(iArr2[i7]);
                i7++;
            }
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws CodedOutputByteBufferNano.OutOfSpaceException {
            int i2 = this.type;
            if (i2 != 0) {
                codedOutputByteBufferNano.writeInt32(1, i2);
            }
            int i3 = this.returnCode;
            if (i3 != 0) {
                codedOutputByteBufferNano.writeInt32(2, i3);
            }
            int i4 = this.queryCount;
            if (i4 != 0) {
                codedOutputByteBufferNano.writeInt32(3, i4);
            }
            int i5 = this.aCount;
            if (i5 != 0) {
                codedOutputByteBufferNano.writeInt32(4, i5);
            }
            int i6 = this.aaaaCount;
            if (i6 != 0) {
                codedOutputByteBufferNano.writeInt32(5, i6);
            }
            int[] iArr = this.latenciesMs;
            if (iArr != null && iArr.length > 0) {
                int i7 = 0;
                while (true) {
                    int[] iArr2 = this.latenciesMs;
                    if (i7 >= iArr2.length) {
                        break;
                    }
                    codedOutputByteBufferNano.writeInt32(6, iArr2[i7]);
                    i7++;
                }
            }
            super.writeTo(codedOutputByteBufferNano);
        }

        public static DNSLatencies parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
            return new DNSLatencies().mergeFrom(codedInputByteBufferNano);
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public DNSLatencies mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws InvalidProtocolBufferNanoException {
            while (true) {
                int tag = codedInputByteBufferNano.readTag();
                if (tag == 0) {
                    return this;
                }
                if (tag == 8) {
                    this.type = codedInputByteBufferNano.readInt32();
                } else if (tag == 16) {
                    this.returnCode = codedInputByteBufferNano.readInt32();
                } else if (tag == 24) {
                    this.queryCount = codedInputByteBufferNano.readInt32();
                } else if (tag == 32) {
                    this.aCount = codedInputByteBufferNano.readInt32();
                } else if (tag == 40) {
                    this.aaaaCount = codedInputByteBufferNano.readInt32();
                } else if (tag == 48) {
                    int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 48);
                    int[] iArr = this.latenciesMs;
                    int length = iArr == null ? 0 : iArr.length;
                    int i2 = repeatedFieldArrayLength + length;
                    int[] iArr2 = new int[i2];
                    if (length != 0) {
                        System.arraycopy(iArr, 0, iArr2, 0, length);
                    }
                    while (length < i2 - 1) {
                        iArr2[length] = codedInputByteBufferNano.readInt32();
                        codedInputByteBufferNano.readTag();
                        length++;
                    }
                    iArr2[length] = codedInputByteBufferNano.readInt32();
                    this.latenciesMs = iArr2;
                } else if (tag == 50) {
                    int iPushLimit = codedInputByteBufferNano.pushLimit(codedInputByteBufferNano.readRawVarint32());
                    int position = codedInputByteBufferNano.getPosition();
                    int i3 = 0;
                    while (codedInputByteBufferNano.getBytesUntilLimit() > 0) {
                        codedInputByteBufferNano.readInt32();
                        i3++;
                    }
                    codedInputByteBufferNano.rewindToPosition(position);
                    int[] iArr3 = this.latenciesMs;
                    int length2 = iArr3 == null ? 0 : iArr3.length;
                    int i4 = i3 + length2;
                    int[] iArr4 = new int[i4];
                    if (length2 != 0) {
                        System.arraycopy(iArr3, 0, iArr4, 0, length2);
                    }
                    while (length2 < i4) {
                        iArr4[length2] = codedInputByteBufferNano.readInt32();
                        length2++;
                    }
                    this.latenciesMs = iArr4;
                    codedInputByteBufferNano.popLimit(iPushLimit);
                } else if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                    return this;
                }
            }
        }
    }

    public static final class DNSLookupBatch extends MessageNano {
        private static volatile DNSLookupBatch[] _emptyArray;
        public int[] eventTypes;
        public long getaddrinfoErrorCount;
        public Pair[] getaddrinfoErrors;
        public long getaddrinfoQueryCount;
        public long gethostbynameErrorCount;
        public Pair[] gethostbynameErrors;
        public long gethostbynameQueryCount;
        public int[] latenciesMs;
        public NetworkId networkId;
        public int[] returnCodes;

        public DNSLookupBatch() {
            clear();
        }

        public static DNSLookupBatch[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new DNSLookupBatch[0];
                    }
                }
            }
            return _emptyArray;
        }

        public static DNSLookupBatch parseFrom(byte[] bArr) {
            return (DNSLookupBatch) MessageNano.mergeFrom(new DNSLookupBatch(), bArr);
        }

        public DNSLookupBatch clear() {
            int[] iArr = WireFormatNano.EMPTY_INT_ARRAY;
            this.latenciesMs = iArr;
            this.getaddrinfoQueryCount = 0L;
            this.gethostbynameQueryCount = 0L;
            this.getaddrinfoErrorCount = 0L;
            this.gethostbynameErrorCount = 0L;
            this.getaddrinfoErrors = Pair.emptyArray();
            this.gethostbynameErrors = Pair.emptyArray();
            this.networkId = null;
            this.eventTypes = iArr;
            this.returnCodes = iArr;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public int computeSerializedSize() {
            int[] iArr;
            int[] iArr2;
            int[] iArr3;
            int iComputeSerializedSize = super.computeSerializedSize();
            NetworkId networkId = this.networkId;
            if (networkId != null) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, networkId);
            }
            int[] iArr4 = this.eventTypes;
            int i2 = 0;
            if (iArr4 != null && iArr4.length > 0) {
                int i3 = 0;
                int iComputeInt32SizeNoTag = 0;
                while (true) {
                    iArr3 = this.eventTypes;
                    if (i3 >= iArr3.length) {
                        break;
                    }
                    iComputeInt32SizeNoTag += CodedOutputByteBufferNano.computeInt32SizeNoTag(iArr3[i3]);
                    i3++;
                }
                iComputeSerializedSize = iComputeSerializedSize + iComputeInt32SizeNoTag + (iArr3.length * 1);
            }
            int[] iArr5 = this.returnCodes;
            if (iArr5 != null && iArr5.length > 0) {
                int i4 = 0;
                int iComputeInt32SizeNoTag2 = 0;
                while (true) {
                    iArr2 = this.returnCodes;
                    if (i4 >= iArr2.length) {
                        break;
                    }
                    iComputeInt32SizeNoTag2 += CodedOutputByteBufferNano.computeInt32SizeNoTag(iArr2[i4]);
                    i4++;
                }
                iComputeSerializedSize = iComputeSerializedSize + iComputeInt32SizeNoTag2 + (iArr2.length * 1);
            }
            int[] iArr6 = this.latenciesMs;
            if (iArr6 != null && iArr6.length > 0) {
                int i5 = 0;
                int iComputeInt32SizeNoTag3 = 0;
                while (true) {
                    iArr = this.latenciesMs;
                    if (i5 >= iArr.length) {
                        break;
                    }
                    iComputeInt32SizeNoTag3 += CodedOutputByteBufferNano.computeInt32SizeNoTag(iArr[i5]);
                    i5++;
                }
                iComputeSerializedSize = iComputeSerializedSize + iComputeInt32SizeNoTag3 + (iArr.length * 1);
            }
            long j2 = this.getaddrinfoQueryCount;
            if (j2 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(5, j2);
            }
            long j3 = this.gethostbynameQueryCount;
            if (j3 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(6, j3);
            }
            long j4 = this.getaddrinfoErrorCount;
            if (j4 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(7, j4);
            }
            long j5 = this.gethostbynameErrorCount;
            if (j5 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(8, j5);
            }
            Pair[] pairArr = this.getaddrinfoErrors;
            if (pairArr != null && pairArr.length > 0) {
                int i6 = 0;
                while (true) {
                    Pair[] pairArr2 = this.getaddrinfoErrors;
                    if (i6 >= pairArr2.length) {
                        break;
                    }
                    Pair pair = pairArr2[i6];
                    if (pair != null) {
                        iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(9, pair);
                    }
                    i6++;
                }
            }
            Pair[] pairArr3 = this.gethostbynameErrors;
            if (pairArr3 != null && pairArr3.length > 0) {
                while (true) {
                    Pair[] pairArr4 = this.gethostbynameErrors;
                    if (i2 >= pairArr4.length) {
                        break;
                    }
                    Pair pair2 = pairArr4[i2];
                    if (pair2 != null) {
                        iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(10, pair2);
                    }
                    i2++;
                }
            }
            return iComputeSerializedSize;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws CodedOutputByteBufferNano.OutOfSpaceException {
            NetworkId networkId = this.networkId;
            if (networkId != null) {
                codedOutputByteBufferNano.writeMessage(1, networkId);
            }
            int[] iArr = this.eventTypes;
            int i2 = 0;
            if (iArr != null && iArr.length > 0) {
                int i3 = 0;
                while (true) {
                    int[] iArr2 = this.eventTypes;
                    if (i3 >= iArr2.length) {
                        break;
                    }
                    codedOutputByteBufferNano.writeInt32(2, iArr2[i3]);
                    i3++;
                }
            }
            int[] iArr3 = this.returnCodes;
            if (iArr3 != null && iArr3.length > 0) {
                int i4 = 0;
                while (true) {
                    int[] iArr4 = this.returnCodes;
                    if (i4 >= iArr4.length) {
                        break;
                    }
                    codedOutputByteBufferNano.writeInt32(3, iArr4[i4]);
                    i4++;
                }
            }
            int[] iArr5 = this.latenciesMs;
            if (iArr5 != null && iArr5.length > 0) {
                int i5 = 0;
                while (true) {
                    int[] iArr6 = this.latenciesMs;
                    if (i5 >= iArr6.length) {
                        break;
                    }
                    codedOutputByteBufferNano.writeInt32(4, iArr6[i5]);
                    i5++;
                }
            }
            long j2 = this.getaddrinfoQueryCount;
            if (j2 != 0) {
                codedOutputByteBufferNano.writeInt64(5, j2);
            }
            long j3 = this.gethostbynameQueryCount;
            if (j3 != 0) {
                codedOutputByteBufferNano.writeInt64(6, j3);
            }
            long j4 = this.getaddrinfoErrorCount;
            if (j4 != 0) {
                codedOutputByteBufferNano.writeInt64(7, j4);
            }
            long j5 = this.gethostbynameErrorCount;
            if (j5 != 0) {
                codedOutputByteBufferNano.writeInt64(8, j5);
            }
            Pair[] pairArr = this.getaddrinfoErrors;
            if (pairArr != null && pairArr.length > 0) {
                int i6 = 0;
                while (true) {
                    Pair[] pairArr2 = this.getaddrinfoErrors;
                    if (i6 >= pairArr2.length) {
                        break;
                    }
                    Pair pair = pairArr2[i6];
                    if (pair != null) {
                        codedOutputByteBufferNano.writeMessage(9, pair);
                    }
                    i6++;
                }
            }
            Pair[] pairArr3 = this.gethostbynameErrors;
            if (pairArr3 != null && pairArr3.length > 0) {
                while (true) {
                    Pair[] pairArr4 = this.gethostbynameErrors;
                    if (i2 >= pairArr4.length) {
                        break;
                    }
                    Pair pair2 = pairArr4[i2];
                    if (pair2 != null) {
                        codedOutputByteBufferNano.writeMessage(10, pair2);
                    }
                    i2++;
                }
            }
            super.writeTo(codedOutputByteBufferNano);
        }

        public static DNSLookupBatch parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
            return new DNSLookupBatch().mergeFrom(codedInputByteBufferNano);
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public DNSLookupBatch mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws InvalidProtocolBufferNanoException {
            while (true) {
                int tag = codedInputByteBufferNano.readTag();
                switch (tag) {
                    case 0:
                        return this;
                    case 10:
                        if (this.networkId == null) {
                            this.networkId = new NetworkId();
                        }
                        codedInputByteBufferNano.readMessage(this.networkId);
                        break;
                    case 16:
                        int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 16);
                        int[] iArr = this.eventTypes;
                        int length = iArr == null ? 0 : iArr.length;
                        int i2 = repeatedFieldArrayLength + length;
                        int[] iArr2 = new int[i2];
                        if (length != 0) {
                            System.arraycopy(iArr, 0, iArr2, 0, length);
                        }
                        while (length < i2 - 1) {
                            iArr2[length] = codedInputByteBufferNano.readInt32();
                            codedInputByteBufferNano.readTag();
                            length++;
                        }
                        iArr2[length] = codedInputByteBufferNano.readInt32();
                        this.eventTypes = iArr2;
                        break;
                    case 18:
                        int iPushLimit = codedInputByteBufferNano.pushLimit(codedInputByteBufferNano.readRawVarint32());
                        int position = codedInputByteBufferNano.getPosition();
                        int i3 = 0;
                        while (codedInputByteBufferNano.getBytesUntilLimit() > 0) {
                            codedInputByteBufferNano.readInt32();
                            i3++;
                        }
                        codedInputByteBufferNano.rewindToPosition(position);
                        int[] iArr3 = this.eventTypes;
                        int length2 = iArr3 == null ? 0 : iArr3.length;
                        int i4 = i3 + length2;
                        int[] iArr4 = new int[i4];
                        if (length2 != 0) {
                            System.arraycopy(iArr3, 0, iArr4, 0, length2);
                        }
                        while (length2 < i4) {
                            iArr4[length2] = codedInputByteBufferNano.readInt32();
                            length2++;
                        }
                        this.eventTypes = iArr4;
                        codedInputByteBufferNano.popLimit(iPushLimit);
                        break;
                    case 24:
                        int repeatedFieldArrayLength2 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 24);
                        int[] iArr5 = this.returnCodes;
                        int length3 = iArr5 == null ? 0 : iArr5.length;
                        int i5 = repeatedFieldArrayLength2 + length3;
                        int[] iArr6 = new int[i5];
                        if (length3 != 0) {
                            System.arraycopy(iArr5, 0, iArr6, 0, length3);
                        }
                        while (length3 < i5 - 1) {
                            iArr6[length3] = codedInputByteBufferNano.readInt32();
                            codedInputByteBufferNano.readTag();
                            length3++;
                        }
                        iArr6[length3] = codedInputByteBufferNano.readInt32();
                        this.returnCodes = iArr6;
                        break;
                    case 26:
                        int iPushLimit2 = codedInputByteBufferNano.pushLimit(codedInputByteBufferNano.readRawVarint32());
                        int position2 = codedInputByteBufferNano.getPosition();
                        int i6 = 0;
                        while (codedInputByteBufferNano.getBytesUntilLimit() > 0) {
                            codedInputByteBufferNano.readInt32();
                            i6++;
                        }
                        codedInputByteBufferNano.rewindToPosition(position2);
                        int[] iArr7 = this.returnCodes;
                        int length4 = iArr7 == null ? 0 : iArr7.length;
                        int i7 = i6 + length4;
                        int[] iArr8 = new int[i7];
                        if (length4 != 0) {
                            System.arraycopy(iArr7, 0, iArr8, 0, length4);
                        }
                        while (length4 < i7) {
                            iArr8[length4] = codedInputByteBufferNano.readInt32();
                            length4++;
                        }
                        this.returnCodes = iArr8;
                        codedInputByteBufferNano.popLimit(iPushLimit2);
                        break;
                    case 32:
                        int repeatedFieldArrayLength3 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 32);
                        int[] iArr9 = this.latenciesMs;
                        int length5 = iArr9 == null ? 0 : iArr9.length;
                        int i8 = repeatedFieldArrayLength3 + length5;
                        int[] iArr10 = new int[i8];
                        if (length5 != 0) {
                            System.arraycopy(iArr9, 0, iArr10, 0, length5);
                        }
                        while (length5 < i8 - 1) {
                            iArr10[length5] = codedInputByteBufferNano.readInt32();
                            codedInputByteBufferNano.readTag();
                            length5++;
                        }
                        iArr10[length5] = codedInputByteBufferNano.readInt32();
                        this.latenciesMs = iArr10;
                        break;
                    case 34:
                        int iPushLimit3 = codedInputByteBufferNano.pushLimit(codedInputByteBufferNano.readRawVarint32());
                        int position3 = codedInputByteBufferNano.getPosition();
                        int i9 = 0;
                        while (codedInputByteBufferNano.getBytesUntilLimit() > 0) {
                            codedInputByteBufferNano.readInt32();
                            i9++;
                        }
                        codedInputByteBufferNano.rewindToPosition(position3);
                        int[] iArr11 = this.latenciesMs;
                        int length6 = iArr11 == null ? 0 : iArr11.length;
                        int i10 = i9 + length6;
                        int[] iArr12 = new int[i10];
                        if (length6 != 0) {
                            System.arraycopy(iArr11, 0, iArr12, 0, length6);
                        }
                        while (length6 < i10) {
                            iArr12[length6] = codedInputByteBufferNano.readInt32();
                            length6++;
                        }
                        this.latenciesMs = iArr12;
                        codedInputByteBufferNano.popLimit(iPushLimit3);
                        break;
                    case 40:
                        this.getaddrinfoQueryCount = codedInputByteBufferNano.readInt64();
                        break;
                    case 48:
                        this.gethostbynameQueryCount = codedInputByteBufferNano.readInt64();
                        break;
                    case 56:
                        this.getaddrinfoErrorCount = codedInputByteBufferNano.readInt64();
                        break;
                    case 64:
                        this.gethostbynameErrorCount = codedInputByteBufferNano.readInt64();
                        break;
                    case 74:
                        int repeatedFieldArrayLength4 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 74);
                        Pair[] pairArr = this.getaddrinfoErrors;
                        int length7 = pairArr == null ? 0 : pairArr.length;
                        int i11 = repeatedFieldArrayLength4 + length7;
                        Pair[] pairArr2 = new Pair[i11];
                        if (length7 != 0) {
                            System.arraycopy(pairArr, 0, pairArr2, 0, length7);
                        }
                        while (length7 < i11 - 1) {
                            Pair pair = new Pair();
                            pairArr2[length7] = pair;
                            codedInputByteBufferNano.readMessage(pair);
                            codedInputByteBufferNano.readTag();
                            length7++;
                        }
                        Pair pair2 = new Pair();
                        pairArr2[length7] = pair2;
                        codedInputByteBufferNano.readMessage(pair2);
                        this.getaddrinfoErrors = pairArr2;
                        break;
                    case 82:
                        int repeatedFieldArrayLength5 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 82);
                        Pair[] pairArr3 = this.gethostbynameErrors;
                        int length8 = pairArr3 == null ? 0 : pairArr3.length;
                        int i12 = repeatedFieldArrayLength5 + length8;
                        Pair[] pairArr4 = new Pair[i12];
                        if (length8 != 0) {
                            System.arraycopy(pairArr3, 0, pairArr4, 0, length8);
                        }
                        while (length8 < i12 - 1) {
                            Pair pair3 = new Pair();
                            pairArr4[length8] = pair3;
                            codedInputByteBufferNano.readMessage(pair3);
                            codedInputByteBufferNano.readTag();
                            length8++;
                        }
                        Pair pair4 = new Pair();
                        pairArr4[length8] = pair4;
                        codedInputByteBufferNano.readMessage(pair4);
                        this.gethostbynameErrors = pairArr4;
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

    public static final class DefaultNetworkEvent extends MessageNano {
        public static final int DISCONNECT = 3;
        public static final int DUAL = 3;
        public static final int INVALIDATION = 2;
        public static final int IPV4 = 1;
        public static final int IPV6 = 2;
        public static final int NONE = 0;
        public static final int OUTSCORED = 1;
        public static final int UNKNOWN = 0;
        private static volatile DefaultNetworkEvent[] _emptyArray;
        public long defaultNetworkDurationMs;
        public long finalScore;
        public long initialScore;
        public int ipSupport;
        public NetworkId networkId;
        public long noDefaultNetworkDurationMs;
        public NetworkId previousNetworkId;
        public int previousNetworkIpSupport;
        public int[] transportTypes;

        public DefaultNetworkEvent() {
            clear();
        }

        public static DefaultNetworkEvent[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new DefaultNetworkEvent[0];
                    }
                }
            }
            return _emptyArray;
        }

        public static DefaultNetworkEvent parseFrom(byte[] bArr) {
            return (DefaultNetworkEvent) MessageNano.mergeFrom(new DefaultNetworkEvent(), bArr);
        }

        public DefaultNetworkEvent clear() {
            this.defaultNetworkDurationMs = 0L;
            this.noDefaultNetworkDurationMs = 0L;
            this.initialScore = 0L;
            this.finalScore = 0L;
            this.ipSupport = 0;
            this.networkId = null;
            this.previousNetworkId = null;
            this.previousNetworkIpSupport = 0;
            this.transportTypes = WireFormatNano.EMPTY_INT_ARRAY;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public int computeSerializedSize() {
            int[] iArr;
            int iComputeSerializedSize = super.computeSerializedSize();
            NetworkId networkId = this.networkId;
            if (networkId != null) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, networkId);
            }
            NetworkId networkId2 = this.previousNetworkId;
            if (networkId2 != null) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(2, networkId2);
            }
            int i2 = this.previousNetworkIpSupport;
            if (i2 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(3, i2);
            }
            int[] iArr2 = this.transportTypes;
            if (iArr2 != null && iArr2.length > 0) {
                int i3 = 0;
                int iComputeInt32SizeNoTag = 0;
                while (true) {
                    iArr = this.transportTypes;
                    if (i3 >= iArr.length) {
                        break;
                    }
                    iComputeInt32SizeNoTag += CodedOutputByteBufferNano.computeInt32SizeNoTag(iArr[i3]);
                    i3++;
                }
                iComputeSerializedSize = iComputeSerializedSize + iComputeInt32SizeNoTag + (iArr.length * 1);
            }
            long j2 = this.defaultNetworkDurationMs;
            if (j2 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(5, j2);
            }
            long j3 = this.noDefaultNetworkDurationMs;
            if (j3 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(6, j3);
            }
            long j4 = this.initialScore;
            if (j4 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(7, j4);
            }
            long j5 = this.finalScore;
            if (j5 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(8, j5);
            }
            int i4 = this.ipSupport;
            return i4 != 0 ? iComputeSerializedSize + CodedOutputByteBufferNano.computeInt32Size(9, i4) : iComputeSerializedSize;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws CodedOutputByteBufferNano.OutOfSpaceException {
            NetworkId networkId = this.networkId;
            if (networkId != null) {
                codedOutputByteBufferNano.writeMessage(1, networkId);
            }
            NetworkId networkId2 = this.previousNetworkId;
            if (networkId2 != null) {
                codedOutputByteBufferNano.writeMessage(2, networkId2);
            }
            int i2 = this.previousNetworkIpSupport;
            if (i2 != 0) {
                codedOutputByteBufferNano.writeInt32(3, i2);
            }
            int[] iArr = this.transportTypes;
            if (iArr != null && iArr.length > 0) {
                int i3 = 0;
                while (true) {
                    int[] iArr2 = this.transportTypes;
                    if (i3 >= iArr2.length) {
                        break;
                    }
                    codedOutputByteBufferNano.writeInt32(4, iArr2[i3]);
                    i3++;
                }
            }
            long j2 = this.defaultNetworkDurationMs;
            if (j2 != 0) {
                codedOutputByteBufferNano.writeInt64(5, j2);
            }
            long j3 = this.noDefaultNetworkDurationMs;
            if (j3 != 0) {
                codedOutputByteBufferNano.writeInt64(6, j3);
            }
            long j4 = this.initialScore;
            if (j4 != 0) {
                codedOutputByteBufferNano.writeInt64(7, j4);
            }
            long j5 = this.finalScore;
            if (j5 != 0) {
                codedOutputByteBufferNano.writeInt64(8, j5);
            }
            int i4 = this.ipSupport;
            if (i4 != 0) {
                codedOutputByteBufferNano.writeInt32(9, i4);
            }
            super.writeTo(codedOutputByteBufferNano);
        }

        public static DefaultNetworkEvent parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
            return new DefaultNetworkEvent().mergeFrom(codedInputByteBufferNano);
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public DefaultNetworkEvent mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws InvalidProtocolBufferNanoException {
            while (true) {
                int tag = codedInputByteBufferNano.readTag();
                switch (tag) {
                    case 0:
                        return this;
                    case 10:
                        if (this.networkId == null) {
                            this.networkId = new NetworkId();
                        }
                        codedInputByteBufferNano.readMessage(this.networkId);
                        break;
                    case 18:
                        if (this.previousNetworkId == null) {
                            this.previousNetworkId = new NetworkId();
                        }
                        codedInputByteBufferNano.readMessage(this.previousNetworkId);
                        break;
                    case 24:
                        int int32 = codedInputByteBufferNano.readInt32();
                        if (int32 == 0 || int32 == 1 || int32 == 2 || int32 == 3) {
                            this.previousNetworkIpSupport = int32;
                        }
                        break;
                    case 32:
                        int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 32);
                        int[] iArr = this.transportTypes;
                        int length = iArr == null ? 0 : iArr.length;
                        int i2 = repeatedFieldArrayLength + length;
                        int[] iArr2 = new int[i2];
                        if (length != 0) {
                            System.arraycopy(iArr, 0, iArr2, 0, length);
                        }
                        while (length < i2 - 1) {
                            iArr2[length] = codedInputByteBufferNano.readInt32();
                            codedInputByteBufferNano.readTag();
                            length++;
                        }
                        iArr2[length] = codedInputByteBufferNano.readInt32();
                        this.transportTypes = iArr2;
                        break;
                    case 34:
                        int iPushLimit = codedInputByteBufferNano.pushLimit(codedInputByteBufferNano.readRawVarint32());
                        int position = codedInputByteBufferNano.getPosition();
                        int i3 = 0;
                        while (codedInputByteBufferNano.getBytesUntilLimit() > 0) {
                            codedInputByteBufferNano.readInt32();
                            i3++;
                        }
                        codedInputByteBufferNano.rewindToPosition(position);
                        int[] iArr3 = this.transportTypes;
                        int length2 = iArr3 == null ? 0 : iArr3.length;
                        int i4 = i3 + length2;
                        int[] iArr4 = new int[i4];
                        if (length2 != 0) {
                            System.arraycopy(iArr3, 0, iArr4, 0, length2);
                        }
                        while (length2 < i4) {
                            iArr4[length2] = codedInputByteBufferNano.readInt32();
                            length2++;
                        }
                        this.transportTypes = iArr4;
                        codedInputByteBufferNano.popLimit(iPushLimit);
                        break;
                    case 40:
                        this.defaultNetworkDurationMs = codedInputByteBufferNano.readInt64();
                        break;
                    case 48:
                        this.noDefaultNetworkDurationMs = codedInputByteBufferNano.readInt64();
                        break;
                    case 56:
                        this.initialScore = codedInputByteBufferNano.readInt64();
                        break;
                    case 64:
                        this.finalScore = codedInputByteBufferNano.readInt64();
                        break;
                    case 72:
                        int int33 = codedInputByteBufferNano.readInt32();
                        if (int33 == 0 || int33 == 1 || int33 == 2 || int33 == 3) {
                            this.ipSupport = int33;
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

    public static final class IpConnectivityEvent extends MessageNano {
        public static final int APF_PROGRAM_EVENT_FIELD_NUMBER = 9;
        public static final int APF_STATISTICS_FIELD_NUMBER = 10;
        public static final int CONNECT_STATISTICS_FIELD_NUMBER = 14;
        public static final int DEFAULT_NETWORK_EVENT_FIELD_NUMBER = 2;
        public static final int DHCP_EVENT_FIELD_NUMBER = 6;
        public static final int DNS_LATENCIES_FIELD_NUMBER = 13;
        public static final int DNS_LOOKUP_BATCH_FIELD_NUMBER = 5;
        public static final int IP_PROVISIONING_EVENT_FIELD_NUMBER = 7;
        public static final int IP_REACHABILITY_EVENT_FIELD_NUMBER = 3;
        public static final int NETWORK_EVENT_FIELD_NUMBER = 4;
        public static final int NETWORK_STATS_FIELD_NUMBER = 19;
        public static final int RA_EVENT_FIELD_NUMBER = 11;
        public static final int VALIDATION_PROBE_EVENT_FIELD_NUMBER = 8;
        public static final int WAKEUP_STATS_FIELD_NUMBER = 20;
        private static volatile IpConnectivityEvent[] _emptyArray;
        private int eventCase_ = 0;
        private Object event_;
        public String ifName;
        public int linkLayer;
        public int networkId;
        public long timeMs;
        public long transports;

        public IpConnectivityEvent() {
            clear();
        }

        public static IpConnectivityEvent[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new IpConnectivityEvent[0];
                    }
                }
            }
            return _emptyArray;
        }

        public static IpConnectivityEvent parseFrom(byte[] bArr) {
            return (IpConnectivityEvent) MessageNano.mergeFrom(new IpConnectivityEvent(), bArr);
        }

        public IpConnectivityEvent clear() {
            this.timeMs = 0L;
            this.linkLayer = 0;
            this.networkId = 0;
            this.ifName = "";
            this.transports = 0L;
            clearEvent();
            this.cachedSize = -1;
            return this;
        }

        public IpConnectivityEvent clearEvent() {
            this.eventCase_ = 0;
            this.event_ = null;
            return this;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public int computeSerializedSize() {
            int iComputeSerializedSize = super.computeSerializedSize();
            long j2 = this.timeMs;
            if (j2 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(1, j2);
            }
            if (this.eventCase_ == 2) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(2, (MessageNano) this.event_);
            }
            if (this.eventCase_ == 3) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(3, (MessageNano) this.event_);
            }
            if (this.eventCase_ == 4) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(4, (MessageNano) this.event_);
            }
            if (this.eventCase_ == 5) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(5, (MessageNano) this.event_);
            }
            if (this.eventCase_ == 6) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(6, (MessageNano) this.event_);
            }
            if (this.eventCase_ == 7) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(7, (MessageNano) this.event_);
            }
            if (this.eventCase_ == 8) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(8, (MessageNano) this.event_);
            }
            if (this.eventCase_ == 9) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(9, (MessageNano) this.event_);
            }
            if (this.eventCase_ == 10) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(10, (MessageNano) this.event_);
            }
            if (this.eventCase_ == 11) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(11, (MessageNano) this.event_);
            }
            if (this.eventCase_ == 13) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(13, (MessageNano) this.event_);
            }
            if (this.eventCase_ == 14) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(14, (MessageNano) this.event_);
            }
            int i2 = this.linkLayer;
            if (i2 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(15, i2);
            }
            int i3 = this.networkId;
            if (i3 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(16, i3);
            }
            if (!this.ifName.equals("")) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeStringSize(17, this.ifName);
            }
            long j3 = this.transports;
            if (j3 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(18, j3);
            }
            if (this.eventCase_ == 19) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(19, (MessageNano) this.event_);
            }
            return this.eventCase_ == 20 ? iComputeSerializedSize + CodedOutputByteBufferNano.computeMessageSize(20, (MessageNano) this.event_) : iComputeSerializedSize;
        }

        public ApfProgramEvent getApfProgramEvent() {
            if (this.eventCase_ == 9) {
                return (ApfProgramEvent) this.event_;
            }
            return null;
        }

        public ApfStatistics getApfStatistics() {
            if (this.eventCase_ == 10) {
                return (ApfStatistics) this.event_;
            }
            return null;
        }

        public ConnectStatistics getConnectStatistics() {
            if (this.eventCase_ == 14) {
                return (ConnectStatistics) this.event_;
            }
            return null;
        }

        public DefaultNetworkEvent getDefaultNetworkEvent() {
            if (this.eventCase_ == 2) {
                return (DefaultNetworkEvent) this.event_;
            }
            return null;
        }

        public DHCPEvent getDhcpEvent() {
            if (this.eventCase_ == 6) {
                return (DHCPEvent) this.event_;
            }
            return null;
        }

        public DNSLatencies getDnsLatencies() {
            if (this.eventCase_ == 13) {
                return (DNSLatencies) this.event_;
            }
            return null;
        }

        public DNSLookupBatch getDnsLookupBatch() {
            if (this.eventCase_ == 5) {
                return (DNSLookupBatch) this.event_;
            }
            return null;
        }

        public int getEventCase() {
            return this.eventCase_;
        }

        public IpProvisioningEvent getIpProvisioningEvent() {
            if (this.eventCase_ == 7) {
                return (IpProvisioningEvent) this.event_;
            }
            return null;
        }

        public IpReachabilityEvent getIpReachabilityEvent() {
            if (this.eventCase_ == 3) {
                return (IpReachabilityEvent) this.event_;
            }
            return null;
        }

        public NetworkEvent getNetworkEvent() {
            if (this.eventCase_ == 4) {
                return (NetworkEvent) this.event_;
            }
            return null;
        }

        public NetworkStats getNetworkStats() {
            if (this.eventCase_ == 19) {
                return (NetworkStats) this.event_;
            }
            return null;
        }

        public RaEvent getRaEvent() {
            if (this.eventCase_ == 11) {
                return (RaEvent) this.event_;
            }
            return null;
        }

        public ValidationProbeEvent getValidationProbeEvent() {
            if (this.eventCase_ == 8) {
                return (ValidationProbeEvent) this.event_;
            }
            return null;
        }

        public WakeupStats getWakeupStats() {
            if (this.eventCase_ == 20) {
                return (WakeupStats) this.event_;
            }
            return null;
        }

        public boolean hasApfProgramEvent() {
            return this.eventCase_ == 9;
        }

        public boolean hasApfStatistics() {
            return this.eventCase_ == 10;
        }

        public boolean hasConnectStatistics() {
            return this.eventCase_ == 14;
        }

        public boolean hasDefaultNetworkEvent() {
            return this.eventCase_ == 2;
        }

        public boolean hasDhcpEvent() {
            return this.eventCase_ == 6;
        }

        public boolean hasDnsLatencies() {
            return this.eventCase_ == 13;
        }

        public boolean hasDnsLookupBatch() {
            return this.eventCase_ == 5;
        }

        public boolean hasIpProvisioningEvent() {
            return this.eventCase_ == 7;
        }

        public boolean hasIpReachabilityEvent() {
            return this.eventCase_ == 3;
        }

        public boolean hasNetworkEvent() {
            return this.eventCase_ == 4;
        }

        public boolean hasNetworkStats() {
            return this.eventCase_ == 19;
        }

        public boolean hasRaEvent() {
            return this.eventCase_ == 11;
        }

        public boolean hasValidationProbeEvent() {
            return this.eventCase_ == 8;
        }

        public boolean hasWakeupStats() {
            return this.eventCase_ == 20;
        }

        public IpConnectivityEvent setApfProgramEvent(ApfProgramEvent apfProgramEvent) {
            apfProgramEvent.getClass();
            this.eventCase_ = 9;
            this.event_ = apfProgramEvent;
            return this;
        }

        public IpConnectivityEvent setApfStatistics(ApfStatistics apfStatistics) {
            apfStatistics.getClass();
            this.eventCase_ = 10;
            this.event_ = apfStatistics;
            return this;
        }

        public IpConnectivityEvent setConnectStatistics(ConnectStatistics connectStatistics) {
            connectStatistics.getClass();
            this.eventCase_ = 14;
            this.event_ = connectStatistics;
            return this;
        }

        public IpConnectivityEvent setDefaultNetworkEvent(DefaultNetworkEvent defaultNetworkEvent) {
            defaultNetworkEvent.getClass();
            this.eventCase_ = 2;
            this.event_ = defaultNetworkEvent;
            return this;
        }

        public IpConnectivityEvent setDhcpEvent(DHCPEvent dHCPEvent) {
            dHCPEvent.getClass();
            this.eventCase_ = 6;
            this.event_ = dHCPEvent;
            return this;
        }

        public IpConnectivityEvent setDnsLatencies(DNSLatencies dNSLatencies) {
            dNSLatencies.getClass();
            this.eventCase_ = 13;
            this.event_ = dNSLatencies;
            return this;
        }

        public IpConnectivityEvent setDnsLookupBatch(DNSLookupBatch dNSLookupBatch) {
            dNSLookupBatch.getClass();
            this.eventCase_ = 5;
            this.event_ = dNSLookupBatch;
            return this;
        }

        public IpConnectivityEvent setIpProvisioningEvent(IpProvisioningEvent ipProvisioningEvent) {
            ipProvisioningEvent.getClass();
            this.eventCase_ = 7;
            this.event_ = ipProvisioningEvent;
            return this;
        }

        public IpConnectivityEvent setIpReachabilityEvent(IpReachabilityEvent ipReachabilityEvent) {
            ipReachabilityEvent.getClass();
            this.eventCase_ = 3;
            this.event_ = ipReachabilityEvent;
            return this;
        }

        public IpConnectivityEvent setNetworkEvent(NetworkEvent networkEvent) {
            networkEvent.getClass();
            this.eventCase_ = 4;
            this.event_ = networkEvent;
            return this;
        }

        public IpConnectivityEvent setNetworkStats(NetworkStats networkStats) {
            networkStats.getClass();
            this.eventCase_ = 19;
            this.event_ = networkStats;
            return this;
        }

        public IpConnectivityEvent setRaEvent(RaEvent raEvent) {
            raEvent.getClass();
            this.eventCase_ = 11;
            this.event_ = raEvent;
            return this;
        }

        public IpConnectivityEvent setValidationProbeEvent(ValidationProbeEvent validationProbeEvent) {
            validationProbeEvent.getClass();
            this.eventCase_ = 8;
            this.event_ = validationProbeEvent;
            return this;
        }

        public IpConnectivityEvent setWakeupStats(WakeupStats wakeupStats) {
            wakeupStats.getClass();
            this.eventCase_ = 20;
            this.event_ = wakeupStats;
            return this;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws CodedOutputByteBufferNano.OutOfSpaceException {
            long j2 = this.timeMs;
            if (j2 != 0) {
                codedOutputByteBufferNano.writeInt64(1, j2);
            }
            if (this.eventCase_ == 2) {
                codedOutputByteBufferNano.writeMessage(2, (MessageNano) this.event_);
            }
            if (this.eventCase_ == 3) {
                codedOutputByteBufferNano.writeMessage(3, (MessageNano) this.event_);
            }
            if (this.eventCase_ == 4) {
                codedOutputByteBufferNano.writeMessage(4, (MessageNano) this.event_);
            }
            if (this.eventCase_ == 5) {
                codedOutputByteBufferNano.writeMessage(5, (MessageNano) this.event_);
            }
            if (this.eventCase_ == 6) {
                codedOutputByteBufferNano.writeMessage(6, (MessageNano) this.event_);
            }
            if (this.eventCase_ == 7) {
                codedOutputByteBufferNano.writeMessage(7, (MessageNano) this.event_);
            }
            if (this.eventCase_ == 8) {
                codedOutputByteBufferNano.writeMessage(8, (MessageNano) this.event_);
            }
            if (this.eventCase_ == 9) {
                codedOutputByteBufferNano.writeMessage(9, (MessageNano) this.event_);
            }
            if (this.eventCase_ == 10) {
                codedOutputByteBufferNano.writeMessage(10, (MessageNano) this.event_);
            }
            if (this.eventCase_ == 11) {
                codedOutputByteBufferNano.writeMessage(11, (MessageNano) this.event_);
            }
            if (this.eventCase_ == 13) {
                codedOutputByteBufferNano.writeMessage(13, (MessageNano) this.event_);
            }
            if (this.eventCase_ == 14) {
                codedOutputByteBufferNano.writeMessage(14, (MessageNano) this.event_);
            }
            int i2 = this.linkLayer;
            if (i2 != 0) {
                codedOutputByteBufferNano.writeInt32(15, i2);
            }
            int i3 = this.networkId;
            if (i3 != 0) {
                codedOutputByteBufferNano.writeInt32(16, i3);
            }
            if (!this.ifName.equals("")) {
                codedOutputByteBufferNano.writeString(17, this.ifName);
            }
            long j3 = this.transports;
            if (j3 != 0) {
                codedOutputByteBufferNano.writeInt64(18, j3);
            }
            if (this.eventCase_ == 19) {
                codedOutputByteBufferNano.writeMessage(19, (MessageNano) this.event_);
            }
            if (this.eventCase_ == 20) {
                codedOutputByteBufferNano.writeMessage(20, (MessageNano) this.event_);
            }
            super.writeTo(codedOutputByteBufferNano);
        }

        public static IpConnectivityEvent parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
            return new IpConnectivityEvent().mergeFrom(codedInputByteBufferNano);
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public IpConnectivityEvent mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws InvalidProtocolBufferNanoException {
            while (true) {
                int tag = codedInputByteBufferNano.readTag();
                switch (tag) {
                    case 0:
                        return this;
                    case 8:
                        this.timeMs = codedInputByteBufferNano.readInt64();
                        break;
                    case 18:
                        if (this.eventCase_ != 2) {
                            this.event_ = new DefaultNetworkEvent();
                        }
                        codedInputByteBufferNano.readMessage((MessageNano) this.event_);
                        this.eventCase_ = 2;
                        break;
                    case 26:
                        if (this.eventCase_ != 3) {
                            this.event_ = new IpReachabilityEvent();
                        }
                        codedInputByteBufferNano.readMessage((MessageNano) this.event_);
                        this.eventCase_ = 3;
                        break;
                    case 34:
                        if (this.eventCase_ != 4) {
                            this.event_ = new NetworkEvent();
                        }
                        codedInputByteBufferNano.readMessage((MessageNano) this.event_);
                        this.eventCase_ = 4;
                        break;
                    case 42:
                        if (this.eventCase_ != 5) {
                            this.event_ = new DNSLookupBatch();
                        }
                        codedInputByteBufferNano.readMessage((MessageNano) this.event_);
                        this.eventCase_ = 5;
                        break;
                    case 50:
                        if (this.eventCase_ != 6) {
                            this.event_ = new DHCPEvent();
                        }
                        codedInputByteBufferNano.readMessage((MessageNano) this.event_);
                        this.eventCase_ = 6;
                        break;
                    case 58:
                        if (this.eventCase_ != 7) {
                            this.event_ = new IpProvisioningEvent();
                        }
                        codedInputByteBufferNano.readMessage((MessageNano) this.event_);
                        this.eventCase_ = 7;
                        break;
                    case 66:
                        if (this.eventCase_ != 8) {
                            this.event_ = new ValidationProbeEvent();
                        }
                        codedInputByteBufferNano.readMessage((MessageNano) this.event_);
                        this.eventCase_ = 8;
                        break;
                    case 74:
                        if (this.eventCase_ != 9) {
                            this.event_ = new ApfProgramEvent();
                        }
                        codedInputByteBufferNano.readMessage((MessageNano) this.event_);
                        this.eventCase_ = 9;
                        break;
                    case 82:
                        if (this.eventCase_ != 10) {
                            this.event_ = new ApfStatistics();
                        }
                        codedInputByteBufferNano.readMessage((MessageNano) this.event_);
                        this.eventCase_ = 10;
                        break;
                    case 90:
                        if (this.eventCase_ != 11) {
                            this.event_ = new RaEvent();
                        }
                        codedInputByteBufferNano.readMessage((MessageNano) this.event_);
                        this.eventCase_ = 11;
                        break;
                    case 106:
                        if (this.eventCase_ != 13) {
                            this.event_ = new DNSLatencies();
                        }
                        codedInputByteBufferNano.readMessage((MessageNano) this.event_);
                        this.eventCase_ = 13;
                        break;
                    case 114:
                        if (this.eventCase_ != 14) {
                            this.event_ = new ConnectStatistics();
                        }
                        codedInputByteBufferNano.readMessage((MessageNano) this.event_);
                        this.eventCase_ = 14;
                        break;
                    case 120:
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
                                this.linkLayer = int32;
                                break;
                        }
                        break;
                    case 128:
                        this.networkId = codedInputByteBufferNano.readInt32();
                        break;
                    case 138:
                        this.ifName = codedInputByteBufferNano.readString();
                        break;
                    case 144:
                        this.transports = codedInputByteBufferNano.readInt64();
                        break;
                    case 154:
                        if (this.eventCase_ != 19) {
                            this.event_ = new NetworkStats();
                        }
                        codedInputByteBufferNano.readMessage((MessageNano) this.event_);
                        this.eventCase_ = 19;
                        break;
                    case 162:
                        if (this.eventCase_ != 20) {
                            this.event_ = new WakeupStats();
                        }
                        codedInputByteBufferNano.readMessage((MessageNano) this.event_);
                        this.eventCase_ = 20;
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

    public static final class IpConnectivityLog extends MessageNano {
        private static volatile IpConnectivityLog[] _emptyArray;
        public int droppedEvents;
        public IpConnectivityEvent[] events;
        public int version;

        public IpConnectivityLog() {
            clear();
        }

        public static IpConnectivityLog[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new IpConnectivityLog[0];
                    }
                }
            }
            return _emptyArray;
        }

        public static IpConnectivityLog parseFrom(byte[] bArr) {
            return (IpConnectivityLog) MessageNano.mergeFrom(new IpConnectivityLog(), bArr);
        }

        public IpConnectivityLog clear() {
            this.events = IpConnectivityEvent.emptyArray();
            this.droppedEvents = 0;
            this.version = 0;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public int computeSerializedSize() {
            int iComputeSerializedSize = super.computeSerializedSize();
            IpConnectivityEvent[] ipConnectivityEventArr = this.events;
            if (ipConnectivityEventArr != null && ipConnectivityEventArr.length > 0) {
                int i2 = 0;
                while (true) {
                    IpConnectivityEvent[] ipConnectivityEventArr2 = this.events;
                    if (i2 >= ipConnectivityEventArr2.length) {
                        break;
                    }
                    IpConnectivityEvent ipConnectivityEvent = ipConnectivityEventArr2[i2];
                    if (ipConnectivityEvent != null) {
                        iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, ipConnectivityEvent);
                    }
                    i2++;
                }
            }
            int i3 = this.droppedEvents;
            if (i3 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(2, i3);
            }
            int i4 = this.version;
            return i4 != 0 ? iComputeSerializedSize + CodedOutputByteBufferNano.computeInt32Size(3, i4) : iComputeSerializedSize;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws CodedOutputByteBufferNano.OutOfSpaceException {
            IpConnectivityEvent[] ipConnectivityEventArr = this.events;
            if (ipConnectivityEventArr != null && ipConnectivityEventArr.length > 0) {
                int i2 = 0;
                while (true) {
                    IpConnectivityEvent[] ipConnectivityEventArr2 = this.events;
                    if (i2 >= ipConnectivityEventArr2.length) {
                        break;
                    }
                    IpConnectivityEvent ipConnectivityEvent = ipConnectivityEventArr2[i2];
                    if (ipConnectivityEvent != null) {
                        codedOutputByteBufferNano.writeMessage(1, ipConnectivityEvent);
                    }
                    i2++;
                }
            }
            int i3 = this.droppedEvents;
            if (i3 != 0) {
                codedOutputByteBufferNano.writeInt32(2, i3);
            }
            int i4 = this.version;
            if (i4 != 0) {
                codedOutputByteBufferNano.writeInt32(3, i4);
            }
            super.writeTo(codedOutputByteBufferNano);
        }

        public static IpConnectivityLog parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
            return new IpConnectivityLog().mergeFrom(codedInputByteBufferNano);
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public IpConnectivityLog mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws InvalidProtocolBufferNanoException {
            while (true) {
                int tag = codedInputByteBufferNano.readTag();
                if (tag == 0) {
                    return this;
                }
                if (tag == 10) {
                    int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 10);
                    IpConnectivityEvent[] ipConnectivityEventArr = this.events;
                    int length = ipConnectivityEventArr == null ? 0 : ipConnectivityEventArr.length;
                    int i2 = repeatedFieldArrayLength + length;
                    IpConnectivityEvent[] ipConnectivityEventArr2 = new IpConnectivityEvent[i2];
                    if (length != 0) {
                        System.arraycopy(ipConnectivityEventArr, 0, ipConnectivityEventArr2, 0, length);
                    }
                    while (length < i2 - 1) {
                        IpConnectivityEvent ipConnectivityEvent = new IpConnectivityEvent();
                        ipConnectivityEventArr2[length] = ipConnectivityEvent;
                        codedInputByteBufferNano.readMessage(ipConnectivityEvent);
                        codedInputByteBufferNano.readTag();
                        length++;
                    }
                    IpConnectivityEvent ipConnectivityEvent2 = new IpConnectivityEvent();
                    ipConnectivityEventArr2[length] = ipConnectivityEvent2;
                    codedInputByteBufferNano.readMessage(ipConnectivityEvent2);
                    this.events = ipConnectivityEventArr2;
                } else if (tag == 16) {
                    this.droppedEvents = codedInputByteBufferNano.readInt32();
                } else if (tag == 24) {
                    this.version = codedInputByteBufferNano.readInt32();
                } else if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                    return this;
                }
            }
        }
    }

    public static final class IpProvisioningEvent extends MessageNano {
        private static volatile IpProvisioningEvent[] _emptyArray;
        public int eventType;
        public String ifName;
        public int latencyMs;

        public IpProvisioningEvent() {
            clear();
        }

        public static IpProvisioningEvent[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new IpProvisioningEvent[0];
                    }
                }
            }
            return _emptyArray;
        }

        public static IpProvisioningEvent parseFrom(byte[] bArr) {
            return (IpProvisioningEvent) MessageNano.mergeFrom(new IpProvisioningEvent(), bArr);
        }

        public IpProvisioningEvent clear() {
            this.ifName = "";
            this.eventType = 0;
            this.latencyMs = 0;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public int computeSerializedSize() {
            int iComputeSerializedSize = super.computeSerializedSize();
            if (!this.ifName.equals("")) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeStringSize(1, this.ifName);
            }
            int i2 = this.eventType;
            if (i2 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(2, i2);
            }
            int i3 = this.latencyMs;
            return i3 != 0 ? iComputeSerializedSize + CodedOutputByteBufferNano.computeInt32Size(3, i3) : iComputeSerializedSize;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws CodedOutputByteBufferNano.OutOfSpaceException {
            if (!this.ifName.equals("")) {
                codedOutputByteBufferNano.writeString(1, this.ifName);
            }
            int i2 = this.eventType;
            if (i2 != 0) {
                codedOutputByteBufferNano.writeInt32(2, i2);
            }
            int i3 = this.latencyMs;
            if (i3 != 0) {
                codedOutputByteBufferNano.writeInt32(3, i3);
            }
            super.writeTo(codedOutputByteBufferNano);
        }

        public static IpProvisioningEvent parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
            return new IpProvisioningEvent().mergeFrom(codedInputByteBufferNano);
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public IpProvisioningEvent mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws InvalidProtocolBufferNanoException {
            while (true) {
                int tag = codedInputByteBufferNano.readTag();
                if (tag == 0) {
                    return this;
                }
                if (tag == 10) {
                    this.ifName = codedInputByteBufferNano.readString();
                } else if (tag == 16) {
                    this.eventType = codedInputByteBufferNano.readInt32();
                } else if (tag == 24) {
                    this.latencyMs = codedInputByteBufferNano.readInt32();
                } else if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                    return this;
                }
            }
        }
    }

    public static final class IpReachabilityEvent extends MessageNano {
        private static volatile IpReachabilityEvent[] _emptyArray;
        public int eventType;
        public String ifName;

        public IpReachabilityEvent() {
            clear();
        }

        public static IpReachabilityEvent[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new IpReachabilityEvent[0];
                    }
                }
            }
            return _emptyArray;
        }

        public static IpReachabilityEvent parseFrom(byte[] bArr) {
            return (IpReachabilityEvent) MessageNano.mergeFrom(new IpReachabilityEvent(), bArr);
        }

        public IpReachabilityEvent clear() {
            this.ifName = "";
            this.eventType = 0;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public int computeSerializedSize() {
            int iComputeSerializedSize = super.computeSerializedSize();
            if (!this.ifName.equals("")) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeStringSize(1, this.ifName);
            }
            int i2 = this.eventType;
            return i2 != 0 ? iComputeSerializedSize + CodedOutputByteBufferNano.computeInt32Size(2, i2) : iComputeSerializedSize;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws CodedOutputByteBufferNano.OutOfSpaceException {
            if (!this.ifName.equals("")) {
                codedOutputByteBufferNano.writeString(1, this.ifName);
            }
            int i2 = this.eventType;
            if (i2 != 0) {
                codedOutputByteBufferNano.writeInt32(2, i2);
            }
            super.writeTo(codedOutputByteBufferNano);
        }

        public static IpReachabilityEvent parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
            return new IpReachabilityEvent().mergeFrom(codedInputByteBufferNano);
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public IpReachabilityEvent mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws InvalidProtocolBufferNanoException {
            while (true) {
                int tag = codedInputByteBufferNano.readTag();
                if (tag == 0) {
                    return this;
                }
                if (tag == 10) {
                    this.ifName = codedInputByteBufferNano.readString();
                } else if (tag == 16) {
                    this.eventType = codedInputByteBufferNano.readInt32();
                } else if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                    return this;
                }
            }
        }
    }

    public static final class NetworkEvent extends MessageNano {
        private static volatile NetworkEvent[] _emptyArray;
        public int eventType;
        public int latencyMs;
        public NetworkId networkId;

        public NetworkEvent() {
            clear();
        }

        public static NetworkEvent[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new NetworkEvent[0];
                    }
                }
            }
            return _emptyArray;
        }

        public static NetworkEvent parseFrom(byte[] bArr) {
            return (NetworkEvent) MessageNano.mergeFrom(new NetworkEvent(), bArr);
        }

        public NetworkEvent clear() {
            this.networkId = null;
            this.eventType = 0;
            this.latencyMs = 0;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public int computeSerializedSize() {
            int iComputeSerializedSize = super.computeSerializedSize();
            NetworkId networkId = this.networkId;
            if (networkId != null) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, networkId);
            }
            int i2 = this.eventType;
            if (i2 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(2, i2);
            }
            int i3 = this.latencyMs;
            return i3 != 0 ? iComputeSerializedSize + CodedOutputByteBufferNano.computeInt32Size(3, i3) : iComputeSerializedSize;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws CodedOutputByteBufferNano.OutOfSpaceException {
            NetworkId networkId = this.networkId;
            if (networkId != null) {
                codedOutputByteBufferNano.writeMessage(1, networkId);
            }
            int i2 = this.eventType;
            if (i2 != 0) {
                codedOutputByteBufferNano.writeInt32(2, i2);
            }
            int i3 = this.latencyMs;
            if (i3 != 0) {
                codedOutputByteBufferNano.writeInt32(3, i3);
            }
            super.writeTo(codedOutputByteBufferNano);
        }

        public static NetworkEvent parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
            return new NetworkEvent().mergeFrom(codedInputByteBufferNano);
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public NetworkEvent mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws InvalidProtocolBufferNanoException {
            while (true) {
                int tag = codedInputByteBufferNano.readTag();
                if (tag == 0) {
                    return this;
                }
                if (tag == 10) {
                    if (this.networkId == null) {
                        this.networkId = new NetworkId();
                    }
                    codedInputByteBufferNano.readMessage(this.networkId);
                } else if (tag == 16) {
                    this.eventType = codedInputByteBufferNano.readInt32();
                } else if (tag == 24) {
                    this.latencyMs = codedInputByteBufferNano.readInt32();
                } else if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                    return this;
                }
            }
        }
    }

    public static final class NetworkId extends MessageNano {
        private static volatile NetworkId[] _emptyArray;
        public int networkId;

        public NetworkId() {
            clear();
        }

        public static NetworkId[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new NetworkId[0];
                    }
                }
            }
            return _emptyArray;
        }

        public static NetworkId parseFrom(byte[] bArr) {
            return (NetworkId) MessageNano.mergeFrom(new NetworkId(), bArr);
        }

        public NetworkId clear() {
            this.networkId = 0;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public int computeSerializedSize() {
            int iComputeSerializedSize = super.computeSerializedSize();
            int i2 = this.networkId;
            return i2 != 0 ? iComputeSerializedSize + CodedOutputByteBufferNano.computeInt32Size(1, i2) : iComputeSerializedSize;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws CodedOutputByteBufferNano.OutOfSpaceException {
            int i2 = this.networkId;
            if (i2 != 0) {
                codedOutputByteBufferNano.writeInt32(1, i2);
            }
            super.writeTo(codedOutputByteBufferNano);
        }

        public static NetworkId parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
            return new NetworkId().mergeFrom(codedInputByteBufferNano);
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public NetworkId mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws InvalidProtocolBufferNanoException {
            while (true) {
                int tag = codedInputByteBufferNano.readTag();
                if (tag == 0) {
                    return this;
                }
                if (tag == 8) {
                    this.networkId = codedInputByteBufferNano.readInt32();
                } else if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                    return this;
                }
            }
        }
    }

    public static final class NetworkStats extends MessageNano {
        private static volatile NetworkStats[] _emptyArray;
        public long durationMs;
        public boolean everValidated;
        public int ipSupport;
        public int noConnectivityReports;
        public boolean portalFound;
        public int validationAttempts;
        public Pair[] validationEvents;
        public Pair[] validationStates;

        public NetworkStats() {
            clear();
        }

        public static NetworkStats[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new NetworkStats[0];
                    }
                }
            }
            return _emptyArray;
        }

        public static NetworkStats parseFrom(byte[] bArr) {
            return (NetworkStats) MessageNano.mergeFrom(new NetworkStats(), bArr);
        }

        public NetworkStats clear() {
            this.durationMs = 0L;
            this.ipSupport = 0;
            this.everValidated = false;
            this.portalFound = false;
            this.noConnectivityReports = 0;
            this.validationAttempts = 0;
            this.validationEvents = Pair.emptyArray();
            this.validationStates = Pair.emptyArray();
            this.cachedSize = -1;
            return this;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public int computeSerializedSize() {
            int iComputeSerializedSize = super.computeSerializedSize();
            long j2 = this.durationMs;
            if (j2 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(1, j2);
            }
            int i2 = this.ipSupport;
            if (i2 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(2, i2);
            }
            boolean z2 = this.everValidated;
            if (z2) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(3, z2);
            }
            boolean z3 = this.portalFound;
            if (z3) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(4, z3);
            }
            int i3 = this.noConnectivityReports;
            if (i3 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(5, i3);
            }
            int i4 = this.validationAttempts;
            if (i4 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(6, i4);
            }
            Pair[] pairArr = this.validationEvents;
            int i5 = 0;
            if (pairArr != null && pairArr.length > 0) {
                int i6 = 0;
                while (true) {
                    Pair[] pairArr2 = this.validationEvents;
                    if (i6 >= pairArr2.length) {
                        break;
                    }
                    Pair pair = pairArr2[i6];
                    if (pair != null) {
                        iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(7, pair);
                    }
                    i6++;
                }
            }
            Pair[] pairArr3 = this.validationStates;
            if (pairArr3 != null && pairArr3.length > 0) {
                while (true) {
                    Pair[] pairArr4 = this.validationStates;
                    if (i5 >= pairArr4.length) {
                        break;
                    }
                    Pair pair2 = pairArr4[i5];
                    if (pair2 != null) {
                        iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(8, pair2);
                    }
                    i5++;
                }
            }
            return iComputeSerializedSize;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws CodedOutputByteBufferNano.OutOfSpaceException {
            long j2 = this.durationMs;
            if (j2 != 0) {
                codedOutputByteBufferNano.writeInt64(1, j2);
            }
            int i2 = this.ipSupport;
            if (i2 != 0) {
                codedOutputByteBufferNano.writeInt32(2, i2);
            }
            boolean z2 = this.everValidated;
            if (z2) {
                codedOutputByteBufferNano.writeBool(3, z2);
            }
            boolean z3 = this.portalFound;
            if (z3) {
                codedOutputByteBufferNano.writeBool(4, z3);
            }
            int i3 = this.noConnectivityReports;
            if (i3 != 0) {
                codedOutputByteBufferNano.writeInt32(5, i3);
            }
            int i4 = this.validationAttempts;
            if (i4 != 0) {
                codedOutputByteBufferNano.writeInt32(6, i4);
            }
            Pair[] pairArr = this.validationEvents;
            int i5 = 0;
            if (pairArr != null && pairArr.length > 0) {
                int i6 = 0;
                while (true) {
                    Pair[] pairArr2 = this.validationEvents;
                    if (i6 >= pairArr2.length) {
                        break;
                    }
                    Pair pair = pairArr2[i6];
                    if (pair != null) {
                        codedOutputByteBufferNano.writeMessage(7, pair);
                    }
                    i6++;
                }
            }
            Pair[] pairArr3 = this.validationStates;
            if (pairArr3 != null && pairArr3.length > 0) {
                while (true) {
                    Pair[] pairArr4 = this.validationStates;
                    if (i5 >= pairArr4.length) {
                        break;
                    }
                    Pair pair2 = pairArr4[i5];
                    if (pair2 != null) {
                        codedOutputByteBufferNano.writeMessage(8, pair2);
                    }
                    i5++;
                }
            }
            super.writeTo(codedOutputByteBufferNano);
        }

        public static NetworkStats parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
            return new NetworkStats().mergeFrom(codedInputByteBufferNano);
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public NetworkStats mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws InvalidProtocolBufferNanoException {
            while (true) {
                int tag = codedInputByteBufferNano.readTag();
                if (tag == 0) {
                    return this;
                }
                if (tag == 8) {
                    this.durationMs = codedInputByteBufferNano.readInt64();
                } else if (tag == 16) {
                    int int32 = codedInputByteBufferNano.readInt32();
                    if (int32 == 0 || int32 == 1 || int32 == 2 || int32 == 3) {
                        this.ipSupport = int32;
                    }
                } else if (tag == 24) {
                    this.everValidated = codedInputByteBufferNano.readBool();
                } else if (tag == 32) {
                    this.portalFound = codedInputByteBufferNano.readBool();
                } else if (tag == 40) {
                    this.noConnectivityReports = codedInputByteBufferNano.readInt32();
                } else if (tag == 48) {
                    this.validationAttempts = codedInputByteBufferNano.readInt32();
                } else if (tag == 58) {
                    int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 58);
                    Pair[] pairArr = this.validationEvents;
                    int length = pairArr == null ? 0 : pairArr.length;
                    int i2 = repeatedFieldArrayLength + length;
                    Pair[] pairArr2 = new Pair[i2];
                    if (length != 0) {
                        System.arraycopy(pairArr, 0, pairArr2, 0, length);
                    }
                    while (length < i2 - 1) {
                        Pair pair = new Pair();
                        pairArr2[length] = pair;
                        codedInputByteBufferNano.readMessage(pair);
                        codedInputByteBufferNano.readTag();
                        length++;
                    }
                    Pair pair2 = new Pair();
                    pairArr2[length] = pair2;
                    codedInputByteBufferNano.readMessage(pair2);
                    this.validationEvents = pairArr2;
                } else if (tag == 66) {
                    int repeatedFieldArrayLength2 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 66);
                    Pair[] pairArr3 = this.validationStates;
                    int length2 = pairArr3 == null ? 0 : pairArr3.length;
                    int i3 = repeatedFieldArrayLength2 + length2;
                    Pair[] pairArr4 = new Pair[i3];
                    if (length2 != 0) {
                        System.arraycopy(pairArr3, 0, pairArr4, 0, length2);
                    }
                    while (length2 < i3 - 1) {
                        Pair pair3 = new Pair();
                        pairArr4[length2] = pair3;
                        codedInputByteBufferNano.readMessage(pair3);
                        codedInputByteBufferNano.readTag();
                        length2++;
                    }
                    Pair pair4 = new Pair();
                    pairArr4[length2] = pair4;
                    codedInputByteBufferNano.readMessage(pair4);
                    this.validationStates = pairArr4;
                } else if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                    return this;
                }
            }
        }
    }

    public static final class Pair extends MessageNano {
        private static volatile Pair[] _emptyArray;
        public int key;
        public int value;

        public Pair() {
            clear();
        }

        public static Pair[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new Pair[0];
                    }
                }
            }
            return _emptyArray;
        }

        public static Pair parseFrom(byte[] bArr) {
            return (Pair) MessageNano.mergeFrom(new Pair(), bArr);
        }

        public Pair clear() {
            this.key = 0;
            this.value = 0;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public int computeSerializedSize() {
            int iComputeSerializedSize = super.computeSerializedSize();
            int i2 = this.key;
            if (i2 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(1, i2);
            }
            int i3 = this.value;
            return i3 != 0 ? iComputeSerializedSize + CodedOutputByteBufferNano.computeInt32Size(2, i3) : iComputeSerializedSize;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws CodedOutputByteBufferNano.OutOfSpaceException {
            int i2 = this.key;
            if (i2 != 0) {
                codedOutputByteBufferNano.writeInt32(1, i2);
            }
            int i3 = this.value;
            if (i3 != 0) {
                codedOutputByteBufferNano.writeInt32(2, i3);
            }
            super.writeTo(codedOutputByteBufferNano);
        }

        public static Pair parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
            return new Pair().mergeFrom(codedInputByteBufferNano);
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public Pair mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws InvalidProtocolBufferNanoException {
            while (true) {
                int tag = codedInputByteBufferNano.readTag();
                if (tag == 0) {
                    return this;
                }
                if (tag == 8) {
                    this.key = codedInputByteBufferNano.readInt32();
                } else if (tag == 16) {
                    this.value = codedInputByteBufferNano.readInt32();
                } else if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                    return this;
                }
            }
        }
    }

    public static final class RaEvent extends MessageNano {
        private static volatile RaEvent[] _emptyArray;
        public long dnsslLifetime;
        public long prefixPreferredLifetime;
        public long prefixValidLifetime;
        public long rdnssLifetime;
        public long routeInfoLifetime;
        public long routerLifetime;

        public RaEvent() {
            clear();
        }

        public static RaEvent[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new RaEvent[0];
                    }
                }
            }
            return _emptyArray;
        }

        public static RaEvent parseFrom(byte[] bArr) {
            return (RaEvent) MessageNano.mergeFrom(new RaEvent(), bArr);
        }

        public RaEvent clear() {
            this.routerLifetime = 0L;
            this.prefixValidLifetime = 0L;
            this.prefixPreferredLifetime = 0L;
            this.routeInfoLifetime = 0L;
            this.rdnssLifetime = 0L;
            this.dnsslLifetime = 0L;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public int computeSerializedSize() {
            int iComputeSerializedSize = super.computeSerializedSize();
            long j2 = this.routerLifetime;
            if (j2 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(1, j2);
            }
            long j3 = this.prefixValidLifetime;
            if (j3 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(2, j3);
            }
            long j4 = this.prefixPreferredLifetime;
            if (j4 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(3, j4);
            }
            long j5 = this.routeInfoLifetime;
            if (j5 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(4, j5);
            }
            long j6 = this.rdnssLifetime;
            if (j6 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(5, j6);
            }
            long j7 = this.dnsslLifetime;
            return j7 != 0 ? iComputeSerializedSize + CodedOutputByteBufferNano.computeInt64Size(6, j7) : iComputeSerializedSize;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws CodedOutputByteBufferNano.OutOfSpaceException {
            long j2 = this.routerLifetime;
            if (j2 != 0) {
                codedOutputByteBufferNano.writeInt64(1, j2);
            }
            long j3 = this.prefixValidLifetime;
            if (j3 != 0) {
                codedOutputByteBufferNano.writeInt64(2, j3);
            }
            long j4 = this.prefixPreferredLifetime;
            if (j4 != 0) {
                codedOutputByteBufferNano.writeInt64(3, j4);
            }
            long j5 = this.routeInfoLifetime;
            if (j5 != 0) {
                codedOutputByteBufferNano.writeInt64(4, j5);
            }
            long j6 = this.rdnssLifetime;
            if (j6 != 0) {
                codedOutputByteBufferNano.writeInt64(5, j6);
            }
            long j7 = this.dnsslLifetime;
            if (j7 != 0) {
                codedOutputByteBufferNano.writeInt64(6, j7);
            }
            super.writeTo(codedOutputByteBufferNano);
        }

        public static RaEvent parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
            return new RaEvent().mergeFrom(codedInputByteBufferNano);
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public RaEvent mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws InvalidProtocolBufferNanoException {
            while (true) {
                int tag = codedInputByteBufferNano.readTag();
                if (tag == 0) {
                    return this;
                }
                if (tag == 8) {
                    this.routerLifetime = codedInputByteBufferNano.readInt64();
                } else if (tag == 16) {
                    this.prefixValidLifetime = codedInputByteBufferNano.readInt64();
                } else if (tag == 24) {
                    this.prefixPreferredLifetime = codedInputByteBufferNano.readInt64();
                } else if (tag == 32) {
                    this.routeInfoLifetime = codedInputByteBufferNano.readInt64();
                } else if (tag == 40) {
                    this.rdnssLifetime = codedInputByteBufferNano.readInt64();
                } else if (tag == 48) {
                    this.dnsslLifetime = codedInputByteBufferNano.readInt64();
                } else if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                    return this;
                }
            }
        }
    }

    public static final class ValidationProbeEvent extends MessageNano {
        private static volatile ValidationProbeEvent[] _emptyArray;
        public int latencyMs;
        public NetworkId networkId;
        public int probeResult;
        public int probeType;

        public ValidationProbeEvent() {
            clear();
        }

        public static ValidationProbeEvent[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new ValidationProbeEvent[0];
                    }
                }
            }
            return _emptyArray;
        }

        public static ValidationProbeEvent parseFrom(byte[] bArr) {
            return (ValidationProbeEvent) MessageNano.mergeFrom(new ValidationProbeEvent(), bArr);
        }

        public ValidationProbeEvent clear() {
            this.networkId = null;
            this.latencyMs = 0;
            this.probeType = 0;
            this.probeResult = 0;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public int computeSerializedSize() {
            int iComputeSerializedSize = super.computeSerializedSize();
            NetworkId networkId = this.networkId;
            if (networkId != null) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, networkId);
            }
            int i2 = this.latencyMs;
            if (i2 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(2, i2);
            }
            int i3 = this.probeType;
            if (i3 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(3, i3);
            }
            int i4 = this.probeResult;
            return i4 != 0 ? iComputeSerializedSize + CodedOutputByteBufferNano.computeInt32Size(4, i4) : iComputeSerializedSize;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws CodedOutputByteBufferNano.OutOfSpaceException {
            NetworkId networkId = this.networkId;
            if (networkId != null) {
                codedOutputByteBufferNano.writeMessage(1, networkId);
            }
            int i2 = this.latencyMs;
            if (i2 != 0) {
                codedOutputByteBufferNano.writeInt32(2, i2);
            }
            int i3 = this.probeType;
            if (i3 != 0) {
                codedOutputByteBufferNano.writeInt32(3, i3);
            }
            int i4 = this.probeResult;
            if (i4 != 0) {
                codedOutputByteBufferNano.writeInt32(4, i4);
            }
            super.writeTo(codedOutputByteBufferNano);
        }

        public static ValidationProbeEvent parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
            return new ValidationProbeEvent().mergeFrom(codedInputByteBufferNano);
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public ValidationProbeEvent mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws InvalidProtocolBufferNanoException {
            while (true) {
                int tag = codedInputByteBufferNano.readTag();
                if (tag == 0) {
                    return this;
                }
                if (tag == 10) {
                    if (this.networkId == null) {
                        this.networkId = new NetworkId();
                    }
                    codedInputByteBufferNano.readMessage(this.networkId);
                } else if (tag == 16) {
                    this.latencyMs = codedInputByteBufferNano.readInt32();
                } else if (tag == 24) {
                    this.probeType = codedInputByteBufferNano.readInt32();
                } else if (tag == 32) {
                    this.probeResult = codedInputByteBufferNano.readInt32();
                } else if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                    return this;
                }
            }
        }
    }

    public static final class WakeupStats extends MessageNano {
        private static volatile WakeupStats[] _emptyArray;
        public long applicationWakeups;
        public long durationSec;
        public long noUidWakeups;
        public long nonApplicationWakeups;
        public long rootWakeups;
        public long systemWakeups;
        public long totalWakeups;

        public WakeupStats() {
            clear();
        }

        public static WakeupStats[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new WakeupStats[0];
                    }
                }
            }
            return _emptyArray;
        }

        public static WakeupStats parseFrom(byte[] bArr) {
            return (WakeupStats) MessageNano.mergeFrom(new WakeupStats(), bArr);
        }

        public WakeupStats clear() {
            this.durationSec = 0L;
            this.totalWakeups = 0L;
            this.rootWakeups = 0L;
            this.systemWakeups = 0L;
            this.applicationWakeups = 0L;
            this.nonApplicationWakeups = 0L;
            this.noUidWakeups = 0L;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public int computeSerializedSize() {
            int iComputeSerializedSize = super.computeSerializedSize();
            long j2 = this.durationSec;
            if (j2 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(1, j2);
            }
            long j3 = this.totalWakeups;
            if (j3 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(2, j3);
            }
            long j4 = this.rootWakeups;
            if (j4 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(3, j4);
            }
            long j5 = this.systemWakeups;
            if (j5 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(4, j5);
            }
            long j6 = this.applicationWakeups;
            if (j6 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(5, j6);
            }
            long j7 = this.nonApplicationWakeups;
            if (j7 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(6, j7);
            }
            long j8 = this.noUidWakeups;
            return j8 != 0 ? iComputeSerializedSize + CodedOutputByteBufferNano.computeInt64Size(7, j8) : iComputeSerializedSize;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws CodedOutputByteBufferNano.OutOfSpaceException {
            long j2 = this.durationSec;
            if (j2 != 0) {
                codedOutputByteBufferNano.writeInt64(1, j2);
            }
            long j3 = this.totalWakeups;
            if (j3 != 0) {
                codedOutputByteBufferNano.writeInt64(2, j3);
            }
            long j4 = this.rootWakeups;
            if (j4 != 0) {
                codedOutputByteBufferNano.writeInt64(3, j4);
            }
            long j5 = this.systemWakeups;
            if (j5 != 0) {
                codedOutputByteBufferNano.writeInt64(4, j5);
            }
            long j6 = this.applicationWakeups;
            if (j6 != 0) {
                codedOutputByteBufferNano.writeInt64(5, j6);
            }
            long j7 = this.nonApplicationWakeups;
            if (j7 != 0) {
                codedOutputByteBufferNano.writeInt64(6, j7);
            }
            long j8 = this.noUidWakeups;
            if (j8 != 0) {
                codedOutputByteBufferNano.writeInt64(7, j8);
            }
            super.writeTo(codedOutputByteBufferNano);
        }

        public static WakeupStats parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
            return new WakeupStats().mergeFrom(codedInputByteBufferNano);
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public WakeupStats mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws InvalidProtocolBufferNanoException {
            while (true) {
                int tag = codedInputByteBufferNano.readTag();
                if (tag == 0) {
                    return this;
                }
                if (tag == 8) {
                    this.durationSec = codedInputByteBufferNano.readInt64();
                } else if (tag == 16) {
                    this.totalWakeups = codedInputByteBufferNano.readInt64();
                } else if (tag == 24) {
                    this.rootWakeups = codedInputByteBufferNano.readInt64();
                } else if (tag == 32) {
                    this.systemWakeups = codedInputByteBufferNano.readInt64();
                } else if (tag == 40) {
                    this.applicationWakeups = codedInputByteBufferNano.readInt64();
                } else if (tag == 48) {
                    this.nonApplicationWakeups = codedInputByteBufferNano.readInt64();
                } else if (tag == 56) {
                    this.noUidWakeups = codedInputByteBufferNano.readInt64();
                } else if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                    return this;
                }
            }
        }
    }
}
