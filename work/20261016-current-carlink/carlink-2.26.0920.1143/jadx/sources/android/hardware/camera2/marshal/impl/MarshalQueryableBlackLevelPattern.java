package android.hardware.camera2.marshal.impl;

import android.hardware.camera2.marshal.MarshalQueryable;
import android.hardware.camera2.marshal.Marshaler;
import android.hardware.camera2.params.BlackLevelPattern;
import android.hardware.camera2.utils.TypeReference;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public class MarshalQueryableBlackLevelPattern implements MarshalQueryable<BlackLevelPattern> {
    private static final int SIZE = 16;

    public class MarshalerBlackLevelPattern extends Marshaler<BlackLevelPattern> {
        public MarshalerBlackLevelPattern(TypeReference<BlackLevelPattern> typeReference, int i2) {
            super(MarshalQueryableBlackLevelPattern.this, typeReference, i2);
        }

        @Override // android.hardware.camera2.marshal.Marshaler
        public int getNativeSize() {
            return 16;
        }

        @Override // android.hardware.camera2.marshal.Marshaler
        public void marshal(BlackLevelPattern blackLevelPattern, ByteBuffer byteBuffer) {
            for (int i2 = 0; i2 < 2; i2++) {
                for (int i3 = 0; i3 < 2; i3++) {
                    byteBuffer.putInt(blackLevelPattern.getOffsetForIndex(i3, i2));
                }
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.hardware.camera2.marshal.Marshaler
        public BlackLevelPattern unmarshal(ByteBuffer byteBuffer) {
            int[] iArr = new int[4];
            for (int i2 = 0; i2 < 4; i2++) {
                iArr[i2] = byteBuffer.getInt();
            }
            return new BlackLevelPattern(iArr);
        }
    }

    @Override // android.hardware.camera2.marshal.MarshalQueryable
    public Marshaler<BlackLevelPattern> createMarshaler(TypeReference<BlackLevelPattern> typeReference, int i2) {
        return new MarshalerBlackLevelPattern(typeReference, i2);
    }

    @Override // android.hardware.camera2.marshal.MarshalQueryable
    public boolean isTypeMappingSupported(TypeReference<BlackLevelPattern> typeReference, int i2) {
        return i2 == 1 && BlackLevelPattern.class.equals(typeReference.getType());
    }
}
