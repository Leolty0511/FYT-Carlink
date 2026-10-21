package android.opengl;

import a0.b;
import b0.f;
import java.io.Writer;

/* JADX INFO: loaded from: classes.dex */
public class GLDebugHelper {
    public static final int CONFIG_CHECK_GL_ERROR = 1;
    public static final int CONFIG_CHECK_THREAD = 2;
    public static final int CONFIG_LOG_ARGUMENT_NAMES = 4;
    public static final int ERROR_WRONG_THREAD = 28672;

    public static f wrap(f fVar, int i2, Writer writer) {
        if (i2 != 0) {
            fVar = new GLErrorWrapper(fVar, i2);
        }
        if (writer != null) {
            return new GLLogWrapper(fVar, writer, (i2 & 4) != 0);
        }
        return fVar;
    }

    public static b wrap(b bVar, int i2, Writer writer) {
        return writer != null ? new EGLLogWrapper(bVar, i2, writer) : bVar;
    }
}
