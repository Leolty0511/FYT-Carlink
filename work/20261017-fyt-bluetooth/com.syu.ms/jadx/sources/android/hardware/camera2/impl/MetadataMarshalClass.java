package android.hardware.camera2.impl;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public interface MetadataMarshalClass<T> {
    public static final int NATIVE_SIZE_DYNAMIC = -1;

    Class<T> getMarshalingClass();

    int getNativeSize(int i2);

    boolean isNativeTypeSupported(int i2);

    int marshal(T t2, ByteBuffer byteBuffer, int i2, boolean z2);

    T unmarshal(ByteBuffer byteBuffer, int i2);
}
