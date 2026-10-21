package android.hardware.camera2.marshal.impl;

import android.graphics.Rect;
import android.hardware.camera2.marshal.MarshalQueryable;
import android.hardware.camera2.marshal.Marshaler;
import android.hardware.camera2.utils.TypeReference;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public class MarshalQueryableRect implements MarshalQueryable<Rect> {
    private static final int SIZE = 16;

    public class MarshalerRect extends Marshaler<Rect> {
        public MarshalerRect(TypeReference<Rect> typeReference, int i2) {
            super(MarshalQueryableRect.this, typeReference, i2);
        }

        @Override // android.hardware.camera2.marshal.Marshaler
        public int getNativeSize() {
            return 16;
        }

        @Override // android.hardware.camera2.marshal.Marshaler
        public void marshal(Rect rect, ByteBuffer byteBuffer) {
            byteBuffer.putInt(rect.left);
            byteBuffer.putInt(rect.top);
            byteBuffer.putInt(rect.width());
            byteBuffer.putInt(rect.height());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.hardware.camera2.marshal.Marshaler
        public Rect unmarshal(ByteBuffer byteBuffer) {
            int i2 = byteBuffer.getInt();
            int i3 = byteBuffer.getInt();
            return new Rect(i2, i3, byteBuffer.getInt() + i2, byteBuffer.getInt() + i3);
        }
    }

    @Override // android.hardware.camera2.marshal.MarshalQueryable
    public Marshaler<Rect> createMarshaler(TypeReference<Rect> typeReference, int i2) {
        return new MarshalerRect(typeReference, i2);
    }

    @Override // android.hardware.camera2.marshal.MarshalQueryable
    public boolean isTypeMappingSupported(TypeReference<Rect> typeReference, int i2) {
        return i2 == 1 && Rect.class.equals(typeReference.getType());
    }
}
