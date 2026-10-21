package android.hardware.camera2.marshal.impl;

import android.hardware.camera2.marshal.MarshalQueryable;
import android.hardware.camera2.marshal.Marshaler;
import android.hardware.camera2.utils.TypeReference;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes.dex */
public class MarshalQueryableString implements MarshalQueryable<String> {
    private static final boolean DEBUG = false;
    private static final byte NUL = 0;
    private static final String TAG = "MarshalQueryableString";

    public class MarshalerString extends Marshaler<String> {
        public MarshalerString(TypeReference<String> typeReference, int i2) {
            super(MarshalQueryableString.this, typeReference, i2);
        }

        @Override // android.hardware.camera2.marshal.Marshaler
        public int getNativeSize() {
            return Marshaler.NATIVE_SIZE_DYNAMIC;
        }

        @Override // android.hardware.camera2.marshal.Marshaler
        public int calculateMarshalSize(String str) {
            return str.getBytes(PreloadHolder.UTF8_CHARSET).length + 1;
        }

        @Override // android.hardware.camera2.marshal.Marshaler
        public void marshal(String str, ByteBuffer byteBuffer) {
            byteBuffer.put(str.getBytes(PreloadHolder.UTF8_CHARSET));
            byteBuffer.put((byte) 0);
        }

        @Override // android.hardware.camera2.marshal.Marshaler
        public String unmarshal(ByteBuffer byteBuffer) {
            boolean z2;
            byteBuffer.mark();
            int i2 = 0;
            while (true) {
                if (!byteBuffer.hasRemaining()) {
                    z2 = false;
                    break;
                }
                if (byteBuffer.get() == 0) {
                    z2 = true;
                    break;
                }
                i2++;
            }
            if (!z2) {
                throw new UnsupportedOperationException("Strings must be null-terminated");
            }
            byteBuffer.reset();
            int i3 = i2 + 1;
            byte[] bArr = new byte[i3];
            byteBuffer.get(bArr, 0, i3);
            return new String(bArr, 0, i2, PreloadHolder.UTF8_CHARSET);
        }
    }

    public static class PreloadHolder {
        public static final Charset UTF8_CHARSET = Charset.forName("UTF-8");

        private PreloadHolder() {
        }
    }

    @Override // android.hardware.camera2.marshal.MarshalQueryable
    public Marshaler<String> createMarshaler(TypeReference<String> typeReference, int i2) {
        return new MarshalerString(typeReference, i2);
    }

    @Override // android.hardware.camera2.marshal.MarshalQueryable
    public boolean isTypeMappingSupported(TypeReference<String> typeReference, int i2) {
        return i2 == 0 && String.class.equals(typeReference.getType());
    }
}
