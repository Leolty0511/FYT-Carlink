package androidx.core.graphics;

import android.graphics.Matrix;
import android.graphics.Shader;
import z.l;

/* JADX INFO: loaded from: classes2.dex */
public final class ShaderKt {
    public static final void transform(Shader shader, l lVar) {
        t.b.h(shader, "<this>");
        t.b.h(lVar, "block");
        Matrix matrix = new Matrix();
        shader.getLocalMatrix(matrix);
        lVar.invoke(matrix);
        shader.setLocalMatrix(matrix);
    }
}
