package android.graphics;

import com.android.internal.util.VirtualRefBasePtr;

/* JADX INFO: loaded from: classes.dex */
public final class CanvasProperty<T> {
    private VirtualRefBasePtr mProperty;

    private CanvasProperty(long j2) {
        this.mProperty = new VirtualRefBasePtr(j2);
    }

    public static CanvasProperty<Float> createFloat(float f2) {
        return new CanvasProperty<>(nCreateFloat(f2));
    }

    public static CanvasProperty<Paint> createPaint(Paint paint) {
        return new CanvasProperty<>(nCreatePaint(paint.getNativeInstance()));
    }

    private static native long nCreateFloat(float f2);

    private static native long nCreatePaint(long j2);

    public long getNativeContainer() {
        return this.mProperty.get();
    }
}
