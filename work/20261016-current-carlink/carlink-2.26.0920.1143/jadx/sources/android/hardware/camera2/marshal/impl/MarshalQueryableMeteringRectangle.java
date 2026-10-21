package android.hardware.camera2.marshal.impl;

import android.hardware.camera2.marshal.MarshalQueryable;
import android.hardware.camera2.marshal.Marshaler;
import android.hardware.camera2.params.MeteringRectangle;
import android.hardware.camera2.utils.TypeReference;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public class MarshalQueryableMeteringRectangle implements MarshalQueryable<MeteringRectangle> {
    private static final int SIZE = 20;

    public class MarshalerMeteringRectangle extends Marshaler<MeteringRectangle> {
        public MarshalerMeteringRectangle(TypeReference<MeteringRectangle> typeReference, int i2) {
            super(MarshalQueryableMeteringRectangle.this, typeReference, i2);
        }

        @Override // android.hardware.camera2.marshal.Marshaler
        public int getNativeSize() {
            return 20;
        }

        @Override // android.hardware.camera2.marshal.Marshaler
        public void marshal(MeteringRectangle meteringRectangle, ByteBuffer byteBuffer) {
            int x2 = meteringRectangle.getX();
            int y2 = meteringRectangle.getY();
            int width = meteringRectangle.getWidth() + x2;
            int height = meteringRectangle.getHeight() + y2;
            int meteringWeight = meteringRectangle.getMeteringWeight();
            byteBuffer.putInt(x2);
            byteBuffer.putInt(y2);
            byteBuffer.putInt(width);
            byteBuffer.putInt(height);
            byteBuffer.putInt(meteringWeight);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.hardware.camera2.marshal.Marshaler
        public MeteringRectangle unmarshal(ByteBuffer byteBuffer) {
            int i2 = byteBuffer.getInt();
            int i3 = byteBuffer.getInt();
            int i4 = byteBuffer.getInt();
            int i5 = byteBuffer.getInt();
            return new MeteringRectangle(i2, i3, i4 - i2, i5 - i3, byteBuffer.getInt());
        }
    }

    @Override // android.hardware.camera2.marshal.MarshalQueryable
    public Marshaler<MeteringRectangle> createMarshaler(TypeReference<MeteringRectangle> typeReference, int i2) {
        return new MarshalerMeteringRectangle(typeReference, i2);
    }

    @Override // android.hardware.camera2.marshal.MarshalQueryable
    public boolean isTypeMappingSupported(TypeReference<MeteringRectangle> typeReference, int i2) {
        return i2 == 1 && MeteringRectangle.class.equals(typeReference.getType());
    }
}
