package android.hardware.camera2.marshal.impl;

import android.hardware.camera2.marshal.MarshalQueryable;
import android.hardware.camera2.marshal.Marshaler;
import android.hardware.camera2.params.ColorSpaceTransform;
import android.hardware.camera2.utils.TypeReference;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public class MarshalQueryableColorSpaceTransform implements MarshalQueryable<ColorSpaceTransform> {
    private static final int ELEMENTS_INT32 = 18;
    private static final int SIZE = 72;

    public class MarshalerColorSpaceTransform extends Marshaler<ColorSpaceTransform> {
        public MarshalerColorSpaceTransform(TypeReference<ColorSpaceTransform> typeReference, int i2) {
            super(MarshalQueryableColorSpaceTransform.this, typeReference, i2);
        }

        @Override // android.hardware.camera2.marshal.Marshaler
        public int getNativeSize() {
            return 72;
        }

        @Override // android.hardware.camera2.marshal.Marshaler
        public void marshal(ColorSpaceTransform colorSpaceTransform, ByteBuffer byteBuffer) {
            int[] iArr = new int[18];
            colorSpaceTransform.copyElements(iArr, 0);
            for (int i2 = 0; i2 < 18; i2++) {
                byteBuffer.putInt(iArr[i2]);
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.hardware.camera2.marshal.Marshaler
        public ColorSpaceTransform unmarshal(ByteBuffer byteBuffer) {
            int[] iArr = new int[18];
            for (int i2 = 0; i2 < 18; i2++) {
                iArr[i2] = byteBuffer.getInt();
            }
            return new ColorSpaceTransform(iArr);
        }
    }

    @Override // android.hardware.camera2.marshal.MarshalQueryable
    public Marshaler<ColorSpaceTransform> createMarshaler(TypeReference<ColorSpaceTransform> typeReference, int i2) {
        return new MarshalerColorSpaceTransform(typeReference, i2);
    }

    @Override // android.hardware.camera2.marshal.MarshalQueryable
    public boolean isTypeMappingSupported(TypeReference<ColorSpaceTransform> typeReference, int i2) {
        return i2 == 5 && ColorSpaceTransform.class.equals(typeReference.getType());
    }
}
