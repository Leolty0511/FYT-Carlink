package android.hardware.camera2.marshal.impl;

import android.hardware.camera2.marshal.MarshalQueryable;
import android.hardware.camera2.marshal.Marshaler;
import android.hardware.camera2.params.RggbChannelVector;
import android.hardware.camera2.utils.TypeReference;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public class MarshalQueryableRggbChannelVector implements MarshalQueryable<RggbChannelVector> {
    private static final int SIZE = 16;

    public class MarshalerRggbChannelVector extends Marshaler<RggbChannelVector> {
        public MarshalerRggbChannelVector(TypeReference<RggbChannelVector> typeReference, int i2) {
            super(MarshalQueryableRggbChannelVector.this, typeReference, i2);
        }

        @Override // android.hardware.camera2.marshal.Marshaler
        public int getNativeSize() {
            return 16;
        }

        @Override // android.hardware.camera2.marshal.Marshaler
        public void marshal(RggbChannelVector rggbChannelVector, ByteBuffer byteBuffer) {
            for (int i2 = 0; i2 < 4; i2++) {
                byteBuffer.putFloat(rggbChannelVector.getComponent(i2));
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.hardware.camera2.marshal.Marshaler
        public RggbChannelVector unmarshal(ByteBuffer byteBuffer) {
            return new RggbChannelVector(byteBuffer.getFloat(), byteBuffer.getFloat(), byteBuffer.getFloat(), byteBuffer.getFloat());
        }
    }

    @Override // android.hardware.camera2.marshal.MarshalQueryable
    public Marshaler<RggbChannelVector> createMarshaler(TypeReference<RggbChannelVector> typeReference, int i2) {
        return new MarshalerRggbChannelVector(typeReference, i2);
    }

    @Override // android.hardware.camera2.marshal.MarshalQueryable
    public boolean isTypeMappingSupported(TypeReference<RggbChannelVector> typeReference, int i2) {
        return i2 == 2 && RggbChannelVector.class.equals(typeReference.getType());
    }
}
