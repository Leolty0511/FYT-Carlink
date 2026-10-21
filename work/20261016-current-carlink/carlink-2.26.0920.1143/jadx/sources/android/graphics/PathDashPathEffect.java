package android.graphics;

/* JADX INFO: loaded from: classes.dex */
public class PathDashPathEffect extends PathEffect {

    public enum Style {
        TRANSLATE(0),
        ROTATE(1),
        MORPH(2);

        int native_style;

        Style(int i2) {
            this.native_style = i2;
        }
    }

    public PathDashPathEffect(Path path, float f2, float f3, Style style) {
        this.native_instance = nativeCreate(path.readOnlyNI(), f2, f3, style.native_style);
    }

    private static native long nativeCreate(long j2, float f2, float f3, int i2);
}
