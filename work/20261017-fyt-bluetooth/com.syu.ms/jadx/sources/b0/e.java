package b0;

import java.nio.FloatBuffer;
import java.nio.IntBuffer;

/* JADX INFO: loaded from: classes.dex */
public interface e extends f {
    void glBindFramebufferOES(int i2, int i3);

    void glBindRenderbufferOES(int i2, int i3);

    void glBlendEquation(int i2);

    void glBlendEquationSeparate(int i2, int i3);

    void glBlendFuncSeparate(int i2, int i3, int i4, int i5);

    int glCheckFramebufferStatusOES(int i2);

    void glDeleteFramebuffersOES(int i2, IntBuffer intBuffer);

    void glDeleteFramebuffersOES(int i2, int[] iArr, int i3);

    void glDeleteRenderbuffersOES(int i2, IntBuffer intBuffer);

    void glDeleteRenderbuffersOES(int i2, int[] iArr, int i3);

    void glFramebufferRenderbufferOES(int i2, int i3, int i4, int i5);

    void glFramebufferTexture2DOES(int i2, int i3, int i4, int i5, int i6);

    void glGenFramebuffersOES(int i2, IntBuffer intBuffer);

    void glGenFramebuffersOES(int i2, int[] iArr, int i3);

    void glGenRenderbuffersOES(int i2, IntBuffer intBuffer);

    void glGenRenderbuffersOES(int i2, int[] iArr, int i3);

    void glGenerateMipmapOES(int i2);

    void glGetFramebufferAttachmentParameterivOES(int i2, int i3, int i4, IntBuffer intBuffer);

    void glGetFramebufferAttachmentParameterivOES(int i2, int i3, int i4, int[] iArr, int i5);

    void glGetRenderbufferParameterivOES(int i2, int i3, IntBuffer intBuffer);

    void glGetRenderbufferParameterivOES(int i2, int i3, int[] iArr, int i4);

    void glGetTexGenfv(int i2, int i3, FloatBuffer floatBuffer);

    void glGetTexGenfv(int i2, int i3, float[] fArr, int i4);

    void glGetTexGeniv(int i2, int i3, IntBuffer intBuffer);

    void glGetTexGeniv(int i2, int i3, int[] iArr, int i4);

    void glGetTexGenxv(int i2, int i3, IntBuffer intBuffer);

    void glGetTexGenxv(int i2, int i3, int[] iArr, int i4);

    boolean glIsFramebufferOES(int i2);

    boolean glIsRenderbufferOES(int i2);

    void glRenderbufferStorageOES(int i2, int i3, int i4, int i5);

    void glTexGenf(int i2, int i3, float f2);

    void glTexGenfv(int i2, int i3, FloatBuffer floatBuffer);

    void glTexGenfv(int i2, int i3, float[] fArr, int i4);

    void glTexGeni(int i2, int i3, int i4);

    void glTexGeniv(int i2, int i3, IntBuffer intBuffer);

    void glTexGeniv(int i2, int i3, int[] iArr, int i4);

    void glTexGenx(int i2, int i3, int i4);

    void glTexGenxv(int i2, int i3, IntBuffer intBuffer);

    void glTexGenxv(int i2, int i3, int[] iArr, int i4);
}
