package com.android.framework.protobuf.nano;

import com.android.internal.logging.nano.MetricsProto;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
final class UnknownFieldData {
    final byte[] bytes;
    final int tag;

    public UnknownFieldData(int i2, byte[] bArr) {
        this.tag = i2;
        this.bytes = bArr;
    }

    public int computeSerializedSize() {
        return CodedOutputByteBufferNano.computeRawVarint32Size(this.tag) + 0 + this.bytes.length;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof UnknownFieldData)) {
            return false;
        }
        UnknownFieldData unknownFieldData = (UnknownFieldData) obj;
        return this.tag == unknownFieldData.tag && Arrays.equals(this.bytes, unknownFieldData.bytes);
    }

    public int hashCode() {
        return Arrays.hashCode(this.bytes) + ((MetricsProto.MetricsEvent.DIALOG_SUPPORT_PHONE + this.tag) * 31);
    }

    public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws CodedOutputByteBufferNano.OutOfSpaceException {
        codedOutputByteBufferNano.writeRawVarint32(this.tag);
        codedOutputByteBufferNano.writeRawBytes(this.bytes);
    }
}
