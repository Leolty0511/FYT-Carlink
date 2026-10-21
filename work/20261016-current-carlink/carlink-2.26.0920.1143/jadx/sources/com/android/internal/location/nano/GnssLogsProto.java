package com.android.internal.location.nano;

import com.android.framework.protobuf.nano.CodedInputByteBufferNano;
import com.android.framework.protobuf.nano.CodedOutputByteBufferNano;
import com.android.framework.protobuf.nano.InternalNano;
import com.android.framework.protobuf.nano.InvalidProtocolBufferNanoException;
import com.android.framework.protobuf.nano.MessageNano;
import com.android.framework.protobuf.nano.WireFormatNano;

/* JADX INFO: loaded from: classes2.dex */
public interface GnssLogsProto {

    public static final class GnssLog extends MessageNano {
        private static volatile GnssLog[] _emptyArray;
        public int meanPositionAccuracyMeters;
        public int meanTimeToFirstFixSecs;
        public double meanTopFourAverageCn0DbHz;
        public int numLocationReportProcessed;
        public int numPositionAccuracyProcessed;
        public int numTimeToFirstFixProcessed;
        public int numTopFourAverageCn0Processed;
        public int percentageLocationFailure;
        public int standardDeviationPositionAccuracyMeters;
        public int standardDeviationTimeToFirstFixSecs;
        public double standardDeviationTopFourAverageCn0DbHz;

        public GnssLog() {
            clear();
        }

        public static GnssLog[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new GnssLog[0];
                    }
                }
            }
            return _emptyArray;
        }

        public static GnssLog parseFrom(byte[] bArr) {
            return (GnssLog) MessageNano.mergeFrom(new GnssLog(), bArr);
        }

        public GnssLog clear() {
            this.numLocationReportProcessed = 0;
            this.percentageLocationFailure = 0;
            this.numTimeToFirstFixProcessed = 0;
            this.meanTimeToFirstFixSecs = 0;
            this.standardDeviationTimeToFirstFixSecs = 0;
            this.numPositionAccuracyProcessed = 0;
            this.meanPositionAccuracyMeters = 0;
            this.standardDeviationPositionAccuracyMeters = 0;
            this.numTopFourAverageCn0Processed = 0;
            this.meanTopFourAverageCn0DbHz = 0.0d;
            this.standardDeviationTopFourAverageCn0DbHz = 0.0d;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public int computeSerializedSize() {
            int iComputeSerializedSize = super.computeSerializedSize();
            int i2 = this.numLocationReportProcessed;
            if (i2 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(1, i2);
            }
            int i3 = this.percentageLocationFailure;
            if (i3 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(2, i3);
            }
            int i4 = this.numTimeToFirstFixProcessed;
            if (i4 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(3, i4);
            }
            int i5 = this.meanTimeToFirstFixSecs;
            if (i5 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(4, i5);
            }
            int i6 = this.standardDeviationTimeToFirstFixSecs;
            if (i6 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(5, i6);
            }
            int i7 = this.numPositionAccuracyProcessed;
            if (i7 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(6, i7);
            }
            int i8 = this.meanPositionAccuracyMeters;
            if (i8 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(7, i8);
            }
            int i9 = this.standardDeviationPositionAccuracyMeters;
            if (i9 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(8, i9);
            }
            int i10 = this.numTopFourAverageCn0Processed;
            if (i10 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(9, i10);
            }
            if (Double.doubleToLongBits(this.meanTopFourAverageCn0DbHz) != Double.doubleToLongBits(0.0d)) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeDoubleSize(10, this.meanTopFourAverageCn0DbHz);
            }
            return Double.doubleToLongBits(this.standardDeviationTopFourAverageCn0DbHz) != Double.doubleToLongBits(0.0d) ? iComputeSerializedSize + CodedOutputByteBufferNano.computeDoubleSize(11, this.standardDeviationTopFourAverageCn0DbHz) : iComputeSerializedSize;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws CodedOutputByteBufferNano.OutOfSpaceException {
            int i2 = this.numLocationReportProcessed;
            if (i2 != 0) {
                codedOutputByteBufferNano.writeInt32(1, i2);
            }
            int i3 = this.percentageLocationFailure;
            if (i3 != 0) {
                codedOutputByteBufferNano.writeInt32(2, i3);
            }
            int i4 = this.numTimeToFirstFixProcessed;
            if (i4 != 0) {
                codedOutputByteBufferNano.writeInt32(3, i4);
            }
            int i5 = this.meanTimeToFirstFixSecs;
            if (i5 != 0) {
                codedOutputByteBufferNano.writeInt32(4, i5);
            }
            int i6 = this.standardDeviationTimeToFirstFixSecs;
            if (i6 != 0) {
                codedOutputByteBufferNano.writeInt32(5, i6);
            }
            int i7 = this.numPositionAccuracyProcessed;
            if (i7 != 0) {
                codedOutputByteBufferNano.writeInt32(6, i7);
            }
            int i8 = this.meanPositionAccuracyMeters;
            if (i8 != 0) {
                codedOutputByteBufferNano.writeInt32(7, i8);
            }
            int i9 = this.standardDeviationPositionAccuracyMeters;
            if (i9 != 0) {
                codedOutputByteBufferNano.writeInt32(8, i9);
            }
            int i10 = this.numTopFourAverageCn0Processed;
            if (i10 != 0) {
                codedOutputByteBufferNano.writeInt32(9, i10);
            }
            if (Double.doubleToLongBits(this.meanTopFourAverageCn0DbHz) != Double.doubleToLongBits(0.0d)) {
                codedOutputByteBufferNano.writeDouble(10, this.meanTopFourAverageCn0DbHz);
            }
            if (Double.doubleToLongBits(this.standardDeviationTopFourAverageCn0DbHz) != Double.doubleToLongBits(0.0d)) {
                codedOutputByteBufferNano.writeDouble(11, this.standardDeviationTopFourAverageCn0DbHz);
            }
            super.writeTo(codedOutputByteBufferNano);
        }

        public static GnssLog parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
            return new GnssLog().mergeFrom(codedInputByteBufferNano);
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public GnssLog mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws InvalidProtocolBufferNanoException {
            while (true) {
                int tag = codedInputByteBufferNano.readTag();
                switch (tag) {
                    case 0:
                        return this;
                    case 8:
                        this.numLocationReportProcessed = codedInputByteBufferNano.readInt32();
                        break;
                    case 16:
                        this.percentageLocationFailure = codedInputByteBufferNano.readInt32();
                        break;
                    case 24:
                        this.numTimeToFirstFixProcessed = codedInputByteBufferNano.readInt32();
                        break;
                    case 32:
                        this.meanTimeToFirstFixSecs = codedInputByteBufferNano.readInt32();
                        break;
                    case 40:
                        this.standardDeviationTimeToFirstFixSecs = codedInputByteBufferNano.readInt32();
                        break;
                    case 48:
                        this.numPositionAccuracyProcessed = codedInputByteBufferNano.readInt32();
                        break;
                    case 56:
                        this.meanPositionAccuracyMeters = codedInputByteBufferNano.readInt32();
                        break;
                    case 64:
                        this.standardDeviationPositionAccuracyMeters = codedInputByteBufferNano.readInt32();
                        break;
                    case 72:
                        this.numTopFourAverageCn0Processed = codedInputByteBufferNano.readInt32();
                        break;
                    case 81:
                        this.meanTopFourAverageCn0DbHz = codedInputByteBufferNano.readDouble();
                        break;
                    case 89:
                        this.standardDeviationTopFourAverageCn0DbHz = codedInputByteBufferNano.readDouble();
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
}
