package android.hardware.camera2.impl;

import android.graphics.Rect;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public class MetadataMarshalRect implements MetadataMarshalClass<Rect> {
    private static final int SIZE = 16;

    @Override // android.hardware.camera2.impl.MetadataMarshalClass
    public Class<Rect> getMarshalingClass() {
        return Rect.class;
    }

    @Override // android.hardware.camera2.impl.MetadataMarshalClass
    public int getNativeSize(int i2) {
        return 16;
    }

    @Override // android.hardware.camera2.impl.MetadataMarshalClass
    public boolean isNativeTypeSupported(int i2) {
        return i2 == 1;
    }

    @Override // android.hardware.camera2.impl.MetadataMarshalClass
    public int marshal(Rect rect, ByteBuffer byteBuffer, int i2, boolean z2) {
        if (z2) {
            return 16;
        }
        byteBuffer.putInt(rect.left);
        byteBuffer.putInt(rect.top);
        byteBuffer.putInt(rect.width());
        byteBuffer.putInt(rect.height());
        return 16;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // android.hardware.camera2.impl.MetadataMarshalClass
    public Rect unmarshal(ByteBuffer byteBuffer, int i2) {
        int i3 = byteBuffer.getInt();
        int i4 = byteBuffer.getInt();
        return new Rect(i3, i4, byteBuffer.getInt() + i3, byteBuffer.getInt() + i4);
    }
}
