package androidx.core.graphics;

import android.graphics.Canvas;
import android.graphics.Picture;
import z.l;

/* JADX INFO: loaded from: classes2.dex */
public final class PictureKt {
    public static final Picture record(Picture picture, int i2, int i3, l lVar) {
        t.b.h(picture, "<this>");
        t.b.h(lVar, "block");
        Canvas canvasBeginRecording = picture.beginRecording(i2, i3);
        t.b.g(canvasBeginRecording, "beginRecording(width, height)");
        try {
            lVar.invoke(canvasBeginRecording);
            return picture;
        } finally {
            picture.endRecording();
        }
    }
}
