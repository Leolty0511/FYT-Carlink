package android.opengl;

import java.nio.IntBuffer;

/* JADX INFO: loaded from: classes.dex */
public class GLES10Ext {
    static {
        _nativeClassInit();
    }

    private static native void _nativeClassInit();

    public static native int glQueryMatrixxOES(IntBuffer intBuffer, IntBuffer intBuffer2);

    public static native int glQueryMatrixxOES(int[] iArr, int i2, int[] iArr2, int i3);
}
