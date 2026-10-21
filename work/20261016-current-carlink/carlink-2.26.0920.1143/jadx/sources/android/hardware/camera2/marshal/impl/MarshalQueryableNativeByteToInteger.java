package android.hardware.camera2.marshal.impl;

import android.hardware.camera2.marshal.MarshalQueryable;
import android.hardware.camera2.marshal.Marshaler;
import android.hardware.camera2.utils.TypeReference;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public class MarshalQueryableNativeByteToInteger implements MarshalQueryable<Integer> {
    private static final int UINT8_MASK = 255;

    public class MarshalerNativeByteToInteger extends Marshaler<Integer> {
        public MarshalerNativeByteToInteger(TypeReference<Integer> typeReference, int i2) {
            super(MarshalQueryableNativeByteToInteger.this, typeReference, i2);
        }

        @Override // android.hardware.camera2.marshal.Marshaler
        public int getNativeSize() {
            return 1;
        }

        @Override // android.hardware.camera2.marshal.Marshaler
        public void marshal(Integer num, ByteBuffer byteBuffer) {
            byteBuffer.put((byte) num.intValue());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.hardware.camera2.marshal.Marshaler
        public Integer unmarshal(ByteBuffer byteBuffer) {
            return Integer.valueOf(byteBuffer.get() & 255);
        }
    }

    @Override // android.hardware.camera2.marshal.MarshalQueryable
    public Marshaler<Integer> createMarshaler(TypeReference<Integer> typeReference, int i2) {
        return new MarshalerNativeByteToInteger(typeReference, i2);
    }

    @Override // android.hardware.camera2.marshal.MarshalQueryable
    public boolean isTypeMappingSupported(TypeReference<Integer> typeReference, int i2) {
        return (Integer.class.equals(typeReference.getType()) || Integer.TYPE.equals(typeReference.getType())) && i2 == 0;
    }
}
