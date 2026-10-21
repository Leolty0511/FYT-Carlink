package com.android.server.wm.nano;

import com.android.framework.protobuf.nano.CodedInputByteBufferNano;
import com.android.framework.protobuf.nano.CodedOutputByteBufferNano;
import com.android.framework.protobuf.nano.InternalNano;
import com.android.framework.protobuf.nano.InvalidProtocolBufferNanoException;
import com.android.framework.protobuf.nano.MessageNano;
import com.android.framework.protobuf.nano.WireFormatNano;

/* JADX INFO: loaded from: classes3.dex */
public interface WindowManagerProtos {

    public static final class TaskSnapshotProto extends MessageNano {
        private static volatile TaskSnapshotProto[] _emptyArray;
        public int insetBottom;
        public int insetLeft;
        public int insetRight;
        public int insetTop;
        public int orientation;

        public TaskSnapshotProto() {
            clear();
        }

        public static TaskSnapshotProto[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new TaskSnapshotProto[0];
                    }
                }
            }
            return _emptyArray;
        }

        public static TaskSnapshotProto parseFrom(byte[] bArr) {
            return (TaskSnapshotProto) MessageNano.mergeFrom(new TaskSnapshotProto(), bArr);
        }

        public TaskSnapshotProto clear() {
            this.orientation = 0;
            this.insetLeft = 0;
            this.insetTop = 0;
            this.insetRight = 0;
            this.insetBottom = 0;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public int computeSerializedSize() {
            int iComputeSerializedSize = super.computeSerializedSize();
            int i2 = this.orientation;
            if (i2 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(1, i2);
            }
            int i3 = this.insetLeft;
            if (i3 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(2, i3);
            }
            int i4 = this.insetTop;
            if (i4 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(3, i4);
            }
            int i5 = this.insetRight;
            if (i5 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(4, i5);
            }
            int i6 = this.insetBottom;
            return i6 != 0 ? iComputeSerializedSize + CodedOutputByteBufferNano.computeInt32Size(5, i6) : iComputeSerializedSize;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws CodedOutputByteBufferNano.OutOfSpaceException {
            int i2 = this.orientation;
            if (i2 != 0) {
                codedOutputByteBufferNano.writeInt32(1, i2);
            }
            int i3 = this.insetLeft;
            if (i3 != 0) {
                codedOutputByteBufferNano.writeInt32(2, i3);
            }
            int i4 = this.insetTop;
            if (i4 != 0) {
                codedOutputByteBufferNano.writeInt32(3, i4);
            }
            int i5 = this.insetRight;
            if (i5 != 0) {
                codedOutputByteBufferNano.writeInt32(4, i5);
            }
            int i6 = this.insetBottom;
            if (i6 != 0) {
                codedOutputByteBufferNano.writeInt32(5, i6);
            }
            super.writeTo(codedOutputByteBufferNano);
        }

        public static TaskSnapshotProto parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
            return new TaskSnapshotProto().mergeFrom(codedInputByteBufferNano);
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public TaskSnapshotProto mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws InvalidProtocolBufferNanoException {
            while (true) {
                int tag = codedInputByteBufferNano.readTag();
                if (tag == 0) {
                    return this;
                }
                if (tag == 8) {
                    this.orientation = codedInputByteBufferNano.readInt32();
                } else if (tag == 16) {
                    this.insetLeft = codedInputByteBufferNano.readInt32();
                } else if (tag == 24) {
                    this.insetTop = codedInputByteBufferNano.readInt32();
                } else if (tag == 32) {
                    this.insetRight = codedInputByteBufferNano.readInt32();
                } else if (tag == 40) {
                    this.insetBottom = codedInputByteBufferNano.readInt32();
                } else if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                    return this;
                }
            }
        }
    }
}
