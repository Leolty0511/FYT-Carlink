package android.hardware.camera2.impl;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes.dex */
public class MetadataMarshalString implements MetadataMarshalClass<String> {
    private static final Charset UTF8_CHARSET = Charset.forName("UTF-8");

    @Override // android.hardware.camera2.impl.MetadataMarshalClass
    public Class<String> getMarshalingClass() {
        return String.class;
    }

    @Override // android.hardware.camera2.impl.MetadataMarshalClass
    public int getNativeSize(int i2) {
        return -1;
    }

    @Override // android.hardware.camera2.impl.MetadataMarshalClass
    public boolean isNativeTypeSupported(int i2) {
        return i2 == 0;
    }

    @Override // android.hardware.camera2.impl.MetadataMarshalClass
    public int marshal(String str, ByteBuffer byteBuffer, int i2, boolean z2) {
        byte[] bytes = str.getBytes(UTF8_CHARSET);
        if (!z2) {
            byteBuffer.put(bytes);
            byteBuffer.put((byte) 0);
        }
        return bytes.length + 1;
    }

    @Override // android.hardware.camera2.impl.MetadataMarshalClass
    public String unmarshal(ByteBuffer byteBuffer, int i2) {
        boolean z2;
        byteBuffer.mark();
        int i3 = 0;
        while (true) {
            if (!byteBuffer.hasRemaining()) {
                z2 = false;
                break;
            }
            if (byteBuffer.get() == 0) {
                z2 = true;
                break;
            }
            i3++;
        }
        if (!z2) {
            throw new IllegalArgumentException("Strings must be null-terminated");
        }
        byteBuffer.reset();
        int i4 = i3 + 1;
        byte[] bArr = new byte[i4];
        byteBuffer.get(bArr, 0, i4);
        return new String(bArr, 0, i3, UTF8_CHARSET);
    }
}
