package android.hardware.camera2.impl;

import android.hardware.camera2.Size;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public class MetadataMarshalSize implements MetadataMarshalClass<Size> {
    private static final int SIZE = 8;

    @Override // android.hardware.camera2.impl.MetadataMarshalClass
    public Class<Size> getMarshalingClass() {
        return Size.class;
    }

    @Override // android.hardware.camera2.impl.MetadataMarshalClass
    public int getNativeSize(int i2) {
        return 8;
    }

    @Override // android.hardware.camera2.impl.MetadataMarshalClass
    public boolean isNativeTypeSupported(int i2) {
        return i2 == 1;
    }

    @Override // android.hardware.camera2.impl.MetadataMarshalClass
    public int marshal(Size size, ByteBuffer byteBuffer, int i2, boolean z2) {
        if (z2) {
            return 8;
        }
        byteBuffer.putInt(size.getWidth());
        byteBuffer.putInt(size.getHeight());
        return 8;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // android.hardware.camera2.impl.MetadataMarshalClass
    public Size unmarshal(ByteBuffer byteBuffer, int i2) {
        return new Size(byteBuffer.getInt(), byteBuffer.getInt());
    }
}
